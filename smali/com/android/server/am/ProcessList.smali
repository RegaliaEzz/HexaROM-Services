.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ILS_Q;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final BSERVICE_APP_THRESHOLD:I

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static DEBUG:Z = false

.field static DHA_ADJ_CACHED_FACTOR:Z = false

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final EMPTY_APP_PERCENT:I

.field static final ENABLE_B_SERVICE_PROPAGATION:Z

.field static FHA_Enable:Z = false

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static LDHA_ES_ENABLE:Z = false

.field static LDHA_EXT_ENABLE:Z = false

.field static LDHA_EXT_LIMIT1:I = 0x0

.field static LDHA_EXT_LIMIT2:I = 0x0

.field public static LDHA_EXT_TH1:J = 0x0L

.field public static LDHA_EXT_TH2:J = 0x0L

.field static LDHA_SPC_ENABLE:Z = false

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_CACHED_APPS_FOR_FHA:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static MAX_EMPTY_APPS_FOR_FHA:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static MDHA_SSR_ENABLE:Z = false

.field static MDHA_SSR_MAX_SERVICE_TIME:I = 0x0

.field static final MIN_BSERVICE_AGING_TIME:I

.field static MIN_CACHED_APPS:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field static PRE_CACHED_KILL:Z = false

.field static PRE_DECREMENT_SYNC:Z = false

.field static PRE_EMPTY_KILL:Z = false

.field static PRE_MAX_KILL_ENABLE:Z = false

.field static PRE_SUPPORT_INCREMENT:Z = false

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static SMART_DHA_BG_APPS_MIN:I = 0x0

.field static final SMART_DHA_MARGIN_MIN_HIGH:J

.field static final SMART_DHA_MARGIN_MIN_LOW:J

.field static final SYSTEM_ADJ:I = -0x10

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TOTAL_DEVICE_MEMORY:J

.field static TRIM_CACHED_APPS:I = 0x0

.field static final TRIM_CACHE_PERCENT:I

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static final TRIM_EMPTY_PERCENT:I

.field static final TRIM_ENABLE_MEMORY:J

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x10

.field static final USE_TRIM_SETTINGS:Z

.field static final VISIBLE_APP_ADJ:I = 0x1

.field static mAMSExceptionEnable:Z

.field static mCPREnable:I

.field static mDHADefendTHEnable:Z

.field static mDynamicLMKEnable:Z

.field static mFragEnable:I

.field static mGoldenlistEnable:I

.field static mILS_2nd_Enable:Z

.field static mILS_DynamicLMKFlag:Z

.field static mILS_Enable:Z

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field static mLMKArray:Ljava/lang/String;

.field static mLMKRate:F

.field static mLMKScale:F

.field static mMaxCached:I

.field static mPremiumWhitelistEnable:I

.field static mSzILSFlag:Z

.field static mSzILSRate:F

.field static mSzILS_SDHARate:F

.field static mWhitelistEnable:I

.field static mb64bitLMKEnable:Z

.field static retCacheLimit:I

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field mDisplayHeight:I

.field mDisplayWidth:I

.field mDynamicLMKFlag:Z

.field mDynamicLMKRate:F

.field private mExtraFreeKBytes:J

.field private mHaveDisplaySize:Z

.field mNotReadPropertyFlag:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeDynamicHigh:[I

.field private final mOomMinFreeDynamicNormal:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeHigh32Bit:[I

.field private final mOomMinFreeHigh_FHA:[I

.field private final mOomMinFreeLow:[I

.field private final mOomMinFreeLow32Bit:[I

.field private final mOomMinFreeLow_FHA:[I

.field private mSmartDHADefaultMargin:J

.field private mSmartDHAKswapdWatermark:J

.field private mSzDHADefendThreshold:J

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v2, 0x64

    const/4 v6, 0x5

    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 60
    sput-boolean v4, Lcom/android/server/am/ProcessList;->DEBUG:Z

    .line 140
    const-string/jumbo v0, "ro.sys.fw.bservice_age"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_BSERVICE_AGING_TIME:I

    .line 142
    const-string/jumbo v0, "ro.sys.fw.bservice_limit"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->BSERVICE_APP_THRESHOLD:I

    .line 144
    const-string/jumbo v0, "ro.sys.fw.bservice_enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->ENABLE_B_SERVICE_PROPAGATION:Z

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 148
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    .line 170
    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    .line 174
    const-string/jumbo v0, "ro.config.dha_cached_min"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    .line 176
    const-string/jumbo v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 178
    const-string/jumbo v0, "ro.config.fha_cached_max"

    const-string v1, "16"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS_FOR_FHA:I

    .line 180
    const-string/jumbo v0, "ro.sys.fw.use_trim_settings"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    .line 182
    const-string/jumbo v0, "ro.sys.fw.empty_app_percent"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->EMPTY_APP_PERCENT:I

    .line 183
    const-string/jumbo v0, "ro.sys.fw.trim_empty_percent"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_PERCENT:I

    .line 185
    const-string/jumbo v0, "ro.sys.fw.trim_cache_percent"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHE_PERCENT:I

    .line 187
    const-string/jumbo v0, "ro.sys.fw.trim_enable_memory"

    const-wide/32 v2, 0x40000000

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TRIM_ENABLE_MEMORY:J

    .line 195
    const-string/jumbo v0, "ro.config.dha_empty_init"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    .line 197
    const-string/jumbo v0, "ro.config.dha_empty_min"

    const-string v1, "8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 199
    const-string/jumbo v0, "ro.config.dha_empty_max"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 201
    const-string/jumbo v0, "ro.config.fha_empty_max"

    const-string v1, "16"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS_FOR_FHA:I

    .line 212
    invoke-static {}, Lcom/android/server/am/ProcessList;->computeTrimEmptyApps()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 223
    invoke-static {}, Lcom/android/server/am/ProcessList;->computeTrimCachedApps()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 226
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 229
    sput v6, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 294
    const-string/jumbo v0, "ro.config.dha_defendth_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->mDHADefendTHEnable:Z

    .line 300
    const-string/jumbo v0, "ro.config.ldha_es_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    .line 302
    const-string/jumbo v0, "ro.config.ldha_spc_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->LDHA_SPC_ENABLE:Z

    .line 304
    const-string/jumbo v0, "ro.config.ldha_ext_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->LDHA_EXT_ENABLE:Z

    .line 306
    sput-wide v8, Lcom/android/server/am/ProcessList;->LDHA_EXT_TH1:J

    .line 308
    sput-wide v8, Lcom/android/server/am/ProcessList;->LDHA_EXT_TH2:J

    .line 310
    const-string/jumbo v0, "ro.config.ldha_ext_limit1"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->LDHA_EXT_LIMIT1:I

    .line 312
    const-string/jumbo v0, "ro.config.ldha_ext_limit2"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->LDHA_EXT_LIMIT2:I

    .line 314
    const-string/jumbo v0, "ro.config.pre_max_kill_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->PRE_MAX_KILL_ENABLE:Z

    .line 316
    const-string/jumbo v0, "ro.config.pre_cached_kill"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->PRE_CACHED_KILL:Z

    .line 318
    const-string/jumbo v0, "ro.config.pre_empty_kill"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->PRE_EMPTY_KILL:Z

    .line 320
    const-string/jumbo v0, "ro.config.pre_decrement_sync"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->PRE_DECREMENT_SYNC:Z

    .line 322
    const-string/jumbo v0, "ro.config.pre_support_increment"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->PRE_SUPPORT_INCREMENT:Z

    .line 324
    const-string/jumbo v0, "ro.config.dha_adj_cached_factor"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->DHA_ADJ_CACHED_FACTOR:Z

    .line 326
    sput v4, Lcom/android/server/am/ProcessList;->retCacheLimit:I

    .line 329
    const-string/jumbo v0, "ro.config.64bit_lmk_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->mb64bitLMKEnable:Z

    .line 332
    const-string/jumbo v0, "ro.config.dha_ils_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->mILS_Enable:Z

    .line 334
    const-string/jumbo v0, "ro.config.dha_ils_2nd_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->mILS_2nd_Enable:Z

    .line 336
    const-string/jumbo v0, "ro.config.dha_ils_dyna_lmk"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->mILS_DynamicLMKFlag:Z

    .line 338
    const-string/jumbo v0, "ro.config.dha_ils_rate"

    const-string v1, "1.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mSzILSRate:F

    .line 340
    const-string/jumbo v0, "ro.config.dha_ils_sdha_rate"

    const-string v1, "1.8"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mSzILS_SDHARate:F

    .line 342
    sput-boolean v4, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    .line 344
    sget v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    sput v0, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 346
    const-string/jumbo v0, "ro.config.dha_whitelist_enable"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    .line 348
    const-string/jumbo v0, "ro.config.dha_pwhitelist_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mPremiumWhitelistEnable:I

    .line 350
    const-string/jumbo v0, "ro.config.dha_goldenlist_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mGoldenlistEnable:I

    .line 353
    const-string/jumbo v0, "ro.config.dha_CPR_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mCPREnable:I

    .line 356
    const-string/jumbo v0, "ro.config.dha_frag_enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mFragEnable:I

    .line 358
    const-string/jumbo v0, "ro.config.dha_lmk_scale"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mLMKScale:F

    .line 360
    const-string/jumbo v0, "ro.config.dha_lmk_rate"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->mLMKRate:F

    .line 362
    const-string/jumbo v0, "ro.config.dha_lmk_array"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->mLMKArray:Ljava/lang/String;

    .line 364
    const-string/jumbo v0, "ro.config.dha_dyna_lmk_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->mDynamicLMKEnable:Z

    .line 366
    const-string/jumbo v0, "ro.config.ams_exception_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->mAMSExceptionEnable:Z

    .line 370
    const-string/jumbo v0, "ro.config.mdha_ssr_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->MDHA_SSR_ENABLE:Z

    .line 372
    const-string/jumbo v0, "ro.config.mdha_ssr_max_minute"

    const-string v1, "10"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/ProcessList;->MDHA_SSR_MAX_SERVICE_TIME:I

    .line 384
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 388
    const-string/jumbo v0, "ro.config.fha_enable"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->FHA_Enable:Z

    .line 394
    const-string/jumbo v0, "ro.config.sdha_margin_min_low"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_LOW:J

    .line 395
    const-string/jumbo v0, "ro.config.sdha_margin_min_high"

    const-string v1, "60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_HIGH:J

    .line 397
    const-string/jumbo v0, "ro.config.sdha_apps_bg_max"

    const-string v1, "40"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 398
    const-string/jumbo v0, "ro.config.sdha_apps_bg_min"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 905
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 925
    new-array v0, v5, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 945
    new-array v0, v5, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 965
    new-array v0, v5, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 985
    new-array v0, v5, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    return-void

    .line 905
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 925
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 945
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    .line 965
    :array_3
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x4e20
        0x4e20
        0x4e20
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    .line 985
    :array_4
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x6

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 250
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow32Bit:[I

    .line 255
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh32Bit:[I

    .line 261
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 267
    new-array v1, v2, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 272
    new-array v1, v2, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow_FHA:[I

    .line 277
    new-array v1, v2, [I

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh_FHA:[I

    .line 282
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 284
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeDynamicNormal:[I

    .line 286
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeDynamicHigh:[I

    .line 290
    const-wide/32 v2, 0x2000000

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 292
    const-wide/32 v2, 0x800000

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 296
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    .line 298
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 368
    const-string/jumbo v1, "ro.config.dha_dynamic_lmk_rate"

    const-string v2, "1.2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDynamicLMKRate:F

    .line 374
    iput-boolean v6, p0, Lcom/android/server/am/ProcessList;->mDynamicLMKFlag:Z

    .line 376
    iput v6, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 378
    iput v6, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 386
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mNotReadPropertyFlag:Z

    .line 391
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    .line 392
    sget-wide v2, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_HIGH:J

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 400
    const-string/jumbo v1, "sys.sysctl.extra_free_kbytes"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mExtraFreeKBytes:J

    .line 411
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 412
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 413
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 414
    invoke-direct {p0, v6, v6, v6}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 415
    return-void

    .line 244
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 250
    :array_1
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 255
    :array_2
    .array-data 4
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data

    .line 261
    :array_3
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 267
    :array_4
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x36ee8
        0x4f588
    .end array-data

    .line 272
    :array_5
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    .line 277
    :array_6
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static allowTrim()Z
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/ProcessList;->TRIM_ENABLE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 843
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 844
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 845
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 843
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 848
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 849
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 737
    if-ne p2, p3, :cond_1

    .line 738
    if-nez p1, :cond_0

    .line 741
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 739
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 741
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static computeDHAEmptyProcessLimit(I)I
    .locals 3
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 731
    sget-boolean v0, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    if-eqz v0, :cond_0

    .line 732
    const-string v0, "ActivityManager_LDHA_ES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "totalProcessLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "retCacheLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/am/ProcessList;->retCacheLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    sget v0, Lcom/android/server/am/ProcessList;->retCacheLimit:I

    sub-int v0, p0, v0

    return v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 723
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    sget v0, Lcom/android/server/am/ProcessList;->EMPTY_APP_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    .line 726
    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, p0, 0x2

    goto :goto_0
.end method

.method public static computeNextPssTime(IZZZJ)J
    .locals 4
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .prologue
    .line 1015
    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 1024
    .local v0, "table":[J
    :goto_0
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_4

    .line 1025
    :cond_0
    const-string v1, "ActivityManager"

    const-string v2, "Invalid Process State within computeNextPssTime"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-wide/16 v2, 0x3a98

    add-long/2addr v2, p4

    .line 1030
    :goto_1
    return-wide v2

    .line 1015
    .end local v0    # "table":[J
    :cond_1
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0

    .line 1030
    .restart local v0    # "table":[J
    :cond_4
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    goto :goto_1
.end method

.method public static computeTrimCachedApps()I
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x2

    .line 220
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public static computeTrimEmptyApps()I
    .locals 1

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    .line 209
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0xb

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 745
    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    .line 746
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 774
    :goto_0
    return-object v0

    .line 747
    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    .line 748
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 749
    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    .line 750
    const-string/jumbo v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 751
    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    .line 752
    const-string/jumbo v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 753
    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    .line 754
    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 755
    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    .line 756
    const-string/jumbo v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 757
    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    .line 758
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 759
    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    .line 760
    const-string/jumbo v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 761
    :cond_7
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    .line 762
    const-string/jumbo v0, "vis  "

    const/4 v1, 0x1

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 763
    :cond_8
    if-ltz p0, :cond_9

    .line 764
    const-string/jumbo v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 765
    :cond_9
    if-lt p0, v5, :cond_a

    .line 766
    const-string/jumbo v0, "psvc "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 767
    :cond_a
    if-lt p0, v4, :cond_b

    .line 768
    const-string/jumbo v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 769
    :cond_b
    if-lt p0, v3, :cond_c

    .line 770
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 771
    :cond_c
    if-lt p0, v1, :cond_d

    .line 772
    const-string/jumbo v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 774
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    .line 780
    packed-switch p0, :pswitch_data_0

    .line 836
    const-string v0, "??"

    .line 839
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 782
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "N "

    .line 783
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 785
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "P "

    .line 786
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 788
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PU"

    .line 789
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 791
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "T "

    .line 792
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 794
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "SB"

    .line 795
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 797
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "SF"

    .line 798
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 800
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "TS"

    .line 801
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 803
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "IF"

    .line 804
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 806
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "IB"

    .line 807
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 809
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "BU"

    .line 810
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 812
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HW"

    .line 813
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 815
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "S "

    .line 816
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 818
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "R "

    .line 819
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 821
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "HO"

    .line 822
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 824
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "LA"

    .line 825
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 827
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CA"

    .line 828
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 830
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string v0, "Ca"

    .line 831
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 833
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string v0, "CE"

    .line 834
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .prologue
    .line 1010
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x3a98

    goto :goto_0
.end method

.method private static openLmkdSocket()Z
    .locals 5

    .prologue
    .line 1125
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1126
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "lmkd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 1129
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    const/4 v1, 0x1

    .local v0, "ex":Ljava/io/IOException;
    :goto_0
    return v1

    .line 1130
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 1131
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 1133
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 1006
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 1117
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1118
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1119
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1120
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 1121
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 10
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    const/16 v1, 0x10

    .line 1096
    if-ne p2, v1, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1100
    .local v4, "start":J
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1101
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1102
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1103
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1104
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1105
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 1106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1107
    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 1108
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static totalDeviceMemory()J
    .locals 4

    .prologue
    .line 151
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 154
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 156
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static updateILS(Ljava/lang/String;)V
    .locals 4
    .param p0, "pName"    # Ljava/lang/String;

    .prologue
    .line 1373
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mILS_Enable:Z

    if-nez v1, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    sget-boolean v0, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    .line 1377
    .local v0, "ILSPrevFlag":Z
    invoke-static {p0}, Lcom/android/server/am/ProcessList$ILS_Q;->isAppsLaunchFreq(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    .line 1379
    sget-boolean v1, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eq v0, v1, :cond_0

    .line 1380
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILS: FlagChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateOomLevels(IIZ)V
    .locals 32
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 433
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x15e

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x43af0000    # 350.0f

    div-float v23, v27, v28

    .line 436
    .local v23, "scaleMem":F
    const v12, 0x5dc00

    .line 437
    .local v12, "minSize":I
    const v10, 0xfa000

    .line 439
    .local v10, "maxSize":I
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v27

    if-nez v27, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x600

    cmp-long v27, v28, v30

    if-gez v27, :cond_1

    mul-int v27, p1, p2

    const v28, 0xfa000

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_1

    .line 441
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x12c

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x44b54000    # 1450.0f

    div-float v23, v27, v28

    .line 443
    const v12, 0x25800

    .line 444
    const v10, 0x1fa400

    .line 447
    :cond_1
    mul-int v27, p1, p2

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v12

    move/from16 v28, v0

    sub-float v27, v27, v28

    sub-int v28, v10, v12

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    div-float v22, v27, v28

    .line 454
    .local v22, "scaleDisp":F
    cmpl-float v27, v23, v22

    if-lez v27, :cond_6

    move/from16 v21, v23

    .line 456
    .local v21, "scale":F
    :goto_0
    const/16 v27, 0x0

    cmpg-float v27, v21, v27

    if-gez v27, :cond_7

    const/16 v21, 0x0

    .line 459
    :cond_2
    :goto_1
    sget-boolean v27, Lcom/android/server/am/ProcessList;->FHA_Enable:Z

    if-nez v27, :cond_3

    sget v27, Lcom/android/server/am/ProcessList;->mLMKScale:F

    const/high16 v28, -0x40800000    # -1.0f

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_3

    .line 460
    sget v21, Lcom/android/server/am/ProcessList;->mLMKScale:F

    .line 463
    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e0009

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 465
    .local v14, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e0008

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 475
    .local v13, "minfree_abs":I
    sget-boolean v27, Lcom/android/server/am/ProcessList;->FHA_Enable:Z

    if-eqz v27, :cond_4

    .line 476
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/server/am/ProcessList;->mb64bitLMKEnable:Z

    .line 478
    :cond_4
    sget-object v27, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    if-lez v27, :cond_8

    sget-boolean v27, Lcom/android/server/am/ProcessList;->mb64bitLMKEnable:Z

    if-eqz v27, :cond_8

    const/4 v7, 0x1

    .line 480
    .local v7, "is64bit":Z
    :goto_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_c

    .line 481
    const/4 v8, 0x0

    .line 482
    .local v8, "low":I
    const/4 v5, 0x0

    .line 484
    .local v5, "high":I
    sget-boolean v27, Lcom/android/server/am/ProcessList;->FHA_Enable:Z

    if-eqz v27, :cond_a

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow_FHA:[I

    move-object/from16 v27, v0

    aget v8, v27, v6

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh_FHA:[I

    move-object/from16 v27, v0

    aget v5, v27, v6

    .line 488
    if-eqz v7, :cond_5

    .line 490
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ne v6, v0, :cond_9

    mul-int/lit8 v27, v5, 0x3

    div-int/lit8 v5, v27, 0x2

    .line 510
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    int-to-float v0, v8

    move/from16 v28, v0

    sub-int v29, v5, v8

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v21

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    aput v28, v27, v6

    .line 480
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v7    # "is64bit":Z
    .end local v8    # "low":I
    .end local v13    # "minfree_abs":I
    .end local v14    # "minfree_adj":I
    .end local v21    # "scale":F
    :cond_6
    move/from16 v21, v22

    .line 454
    goto/16 :goto_0

    .line 457
    .restart local v21    # "scale":F
    :cond_7
    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v27, v21, v27

    if-lez v27, :cond_2

    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 478
    .restart local v13    # "minfree_abs":I
    .restart local v14    # "minfree_adj":I
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 491
    .restart local v5    # "high":I
    .restart local v6    # "i":I
    .restart local v7    # "is64bit":Z
    .restart local v8    # "low":I
    :cond_9
    const/16 v27, 0x5

    move/from16 v0, v27

    if-ne v6, v0, :cond_5

    mul-int/lit8 v27, v5, 0x7

    div-int/lit8 v5, v27, 0x4

    goto :goto_4

    .line 494
    :cond_a
    if-eqz v7, :cond_b

    .line 498
    const-string v27, "XXXXXX"

    const-string v28, "choosing minFree values for 64 Bit"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v27, v0

    aget v8, v27, v6

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v27, v0

    aget v5, v27, v6

    goto :goto_4

    .line 505
    :cond_b
    const-string v27, "XXXXXX"

    const-string v28, "choosing minFree values for 32 Bit"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow32Bit:[I

    move-object/from16 v27, v0

    aget v8, v27, v6

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh32Bit:[I

    move-object/from16 v27, v0

    aget v5, v27, v6

    goto :goto_4

    .line 514
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_c
    const-string/jumbo v27, "ro.config.oomminfree"

    const-string v28, "0"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 515
    .local v17, "prop_mOomMinFreeHigh":Ljava/lang/String;
    const-string v27, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 517
    .local v11, "minFreeHighStr":[Ljava/lang/String;
    sget-boolean v27, Lcom/android/server/am/ProcessList;->FHA_Enable:Z

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    array-length v0, v11

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 518
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_d

    .line 519
    const-string v27, "XXXXXX"

    const-string v28, "choosing minFree values with cofing values"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget-object v28, v11, v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    aput v28, v27, v6

    .line 518
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 526
    :cond_d
    if-ltz v13, :cond_e

    .line 527
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_e

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    int-to-float v0, v13

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v29, v0

    aget v29, v29, v6

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    aput v28, v27, v6

    .line 527
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 533
    :cond_e
    if-eqz v14, :cond_10

    .line 534
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_10

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget v28, v27, v6

    int-to-float v0, v14

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v30, v0

    aget v30, v30, v6

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget v30, v30, v31

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    aput v28, v27, v6

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget v27, v27, v6

    if-gez v27, :cond_f

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput v28, v27, v6

    .line 534
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 544
    :cond_10
    const/4 v6, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_11

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeDynamicNormal:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v28, v0

    aget v28, v28, v6

    aput v28, v27, v6

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeDynamicHigh:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v28, v0

    aget v28, v28, v6

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mDynamicLMKRate:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    aput v28, v27, v6

    .line 544
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 552
    :cond_11
    const/16 v27, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v28

    const-wide/16 v30, 0x400

    div-long v28, v28, v30

    const-wide/16 v30, 0x3

    div-long v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 556
    mul-int v27, p1, p2

    mul-int/lit8 v27, v27, 0x4

    mul-int/lit8 v27, v27, 0x3

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    .line 557
    .local v18, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e000b

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 558
    .local v20, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x10e000a

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 560
    .local v19, "reserve_abs":I
    if-ltz v19, :cond_12

    .line 561
    move/from16 v18, v19

    .line 564
    :cond_12
    if-eqz v20, :cond_13

    .line 565
    add-int v18, v18, v20

    .line 566
    if-gez v18, :cond_13

    .line 567
    const/16 v18, 0x0

    .line 589
    :cond_13
    const-string/jumbo v27, "none"

    sget-object v28, Lcom/android/server/am/ProcessList;->mLMKArray:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_14

    .line 590
    sget-object v27, Lcom/android/server/am/ProcessList;->mLMKArray:Ljava/lang/String;

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 591
    .local v9, "mMinFreeProperty":[Ljava/lang/String;
    const-string v27, "ActivityManager"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "updateOomLevels using LMKArray "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/server/am/ProcessList;->mLMKArray:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/4 v6, 0x0

    :goto_9
    :try_start_0
    array-length v0, v9

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_14

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget-object v28, v9, v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    mul-int/lit8 v28, v28, 0x4

    aput v28, v27, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 597
    :catch_0
    move-exception v16

    .line 598
    .local v16, "nfe":Ljava/lang/NumberFormatException;
    const-string v27, "ActivityManager"

    const-string/jumbo v28, "updateOomLevels, LMKArray NumberFormatException "

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v9    # "mMinFreeProperty":[Ljava/lang/String;
    .end local v16    # "nfe":Ljava/lang/NumberFormatException;
    :cond_14
    if-eqz p3, :cond_16

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    mul-int/lit8 v27, v27, 0x2

    add-int/lit8 v27, v27, 0x1

    mul-int/lit8 v27, v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 604
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 605
    const/4 v6, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v6, v0, :cond_15

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget v27, v27, v6

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x1000

    move/from16 v27, v0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    aget v27, v27, v6

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 605
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 610
    :cond_15
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 612
    const-string/jumbo v27, "sys.sysctl.extra_free_kbytes"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mExtraFreeKBytes:J

    .line 619
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_16
    const/16 v27, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 622
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ProcessList;->mNotReadPropertyFlag:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17

    .line 633
    const-string/jumbo v27, "ro.config.dha_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    .line 635
    const-string/jumbo v27, "ro.config.dha_th_rate"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 637
    const-string/jumbo v27, "ro.config.dha_th_level"

    const-string v28, "15"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v27, v0

    const-string/jumbo v28, "ro.config.dha_defend_th_level"

    const-string v29, "3"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    aget v27, v27, v28

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v21

    move/from16 v0, v27

    float-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 639
    const-string/jumbo v27, "ro.config.dha_increase_th"

    sget-wide v28, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    sput-wide v28, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 640
    const-string/jumbo v27, "ro.config.ldha_ext_th1"

    const/16 v28, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v28

    const-wide/16 v30, 0x400

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    sput-wide v28, Lcom/android/server/am/ProcessList;->LDHA_EXT_TH1:J

    .line 641
    const-string/jumbo v27, "ro.config.ldha_ext_th2"

    const/16 v28, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3fd999999999999aL    # 0.4

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x400

    div-long v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    sput-wide v28, Lcom/android/server/am/ProcessList;->LDHA_EXT_TH2:J

    .line 643
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA STEP "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA TH RATE "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA mSzDHAThreshold "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA mSzDHADefendThreshold "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-wide v30, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA LDHA_EXT_TH1 "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-wide v30, Lcom/android/server/am/ProcessList;->LDHA_EXT_TH1:J

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA LDHA_EXT_TH2 "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-wide v30, Lcom/android/server/am/ProcessList;->LDHA_EXT_TH2:J

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA LDHA_EXT_LIMIT1 "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/ProcessList;->LDHA_EXT_LIMIT1:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v27, "DHA_PROPERTY"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DHA LDHA_EXT_LIMIT2 "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget v29, Lcom/android/server/am/ProcessList;->LDHA_EXT_LIMIT2:I

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ProcessList;->mNotReadPropertyFlag:Z

    .line 657
    :cond_17
    sget-wide v28, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_LOW:J

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v27, v0

    sget-wide v28, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_HIGH:J

    sget-wide v30, Lcom/android/server/am/ProcessList;->SMART_DHA_MARGIN_MIN_LOW:J

    sub-long v28, v28, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v21

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-long v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 662
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v26, "strMinFreeLow":Ljava/lang/StringBuilder;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v25, "strMinFreeHigh":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 666
    .local v24, "strMinFree":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "nCnt":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_19

    .line 667
    if-lez v15, :cond_18

    .line 668
    const/16 v27, 0x2c

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 669
    const/16 v27, 0x2c

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    const/16 v27, 0x2c

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v27, v0

    aget v27, v27, v15

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x400

    move/from16 v27, v0

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x1000

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 678
    :cond_19
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Init MinFreeLow: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Init MinFreeHigh: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Scale: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MinFreeKbytesAbsolute: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v27, "DHA"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Final MinFree: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 1385
    const/4 v1, 0x0

    .line 1387
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1392
    if-eqz v2, :cond_2

    .line 1394
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 1399
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 1395
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 1396
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1389
    :catch_1
    move-exception v0

    .line 1390
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1392
    if-eqz v1, :cond_0

    .line 1394
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1395
    :catch_2
    move-exception v3

    goto :goto_0

    .line 1392
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 1394
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1396
    :cond_1
    :goto_3
    throw v3

    .line 1395
    :catch_3
    move-exception v4

    goto :goto_3

    .line 1392
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1389
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 1142
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_0

    .line 1143
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1145
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1141
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1153
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1166
    :cond_1
    return-void

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :try_start_2
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1163
    :goto_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_1

    .line 1146
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 1160
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_2
.end method


# virtual methods
.method public ResetDynamicLMK()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1429
    sget-boolean v0, Lcom/android/server/am/ProcessList;->mDynamicLMKEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v0, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mDynamicLMKFlag:Z

    if-eqz v0, :cond_0

    .line 1432
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mDynamicLMKFlag:Z

    .line 1433
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->changeLMKByDynamicLMK(Z)V

    goto :goto_0
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 418
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 419
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 420
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 421
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 422
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 423
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 424
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 425
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 428
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method changeLMKByDynamicLMK(Z)V
    .locals 8
    .param p1, "flag"    # Z

    .prologue
    .line 700
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 701
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    new-array v2, v3, [I

    .line 703
    .local v2, "mTempOomMinFree":[I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 705
    if-eqz p1, :cond_0

    .line 706
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeDynamicHigh:[I

    aget v4, v4, v1

    aput v4, v3, v1

    .line 710
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v3, v3, v1

    mul-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x1000

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 711
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeDynamicNormal:[I

    aget v4, v4, v1

    aput v4, v3, v1

    goto :goto_1

    .line 714
    :cond_1
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 716
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mDynamicLMKFlag:Z

    .line 717
    const-string/jumbo v3, "ro.config.dha_th_level"

    const-string v4, "15"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 719
    const-string v3, "DynamicLMK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeLMKByDynamicLMK: flag =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSzDHAThreshold =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method decrementAppCount(IIILcom/android/server/am/ProcessRecord;Z)I
    .locals 7
    .param p1, "maxApp"    # I
    .param p2, "empty"    # I
    .param p3, "cached"    # I
    .param p4, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "preventAggressiveKill"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1268
    add-int v5, p2, p3

    iget v6, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    sub-int v2, v5, v6

    .line 1269
    .local v2, "mUpdateMax":I
    if-gt p2, p3, :cond_0

    iget v5, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    if-eq v5, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1271
    :cond_0
    if-le p1, v2, :cond_4

    .line 1272
    sget v5, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v6, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    add-int/2addr v5, v6

    if-ge v2, v5, :cond_1

    .line 1273
    sget v5, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    sget v6, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    add-int v2, v5, v6

    .line 1280
    :cond_1
    :goto_0
    if-le p2, p3, :cond_5

    .line 1281
    sput p3, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1299
    :cond_2
    :goto_1
    sget v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    if-gtz v5, :cond_3

    sput v4, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1300
    :cond_3
    return v2

    .line 1277
    :cond_4
    move v2, p1

    goto :goto_0

    .line 1284
    :cond_5
    sget v3, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1285
    .local v3, "prevMaxCached":I
    add-int/lit8 v5, p3, -0x1

    sput v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1286
    sget v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    if-le v5, v2, :cond_6

    sub-int v5, v2, p2

    sput v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1288
    :cond_6
    if-eqz p5, :cond_7

    sget v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    if-le v3, v5, :cond_7

    .line 1289
    sput v3, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1290
    :cond_7
    sget-boolean v5, Lcom/android/server/am/ProcessList;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/am/ProcessList;->PRE_DECREMENT_SYNC:Z

    if-eqz v5, :cond_2

    sget v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    if-le v3, v5, :cond_2

    sget v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v6, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-lt v5, v6, :cond_2

    .line 1291
    if-eqz p4, :cond_2

    .line 1292
    iget v0, p4, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 1293
    .local v0, "appState":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_8

    const/16 v5, 0xf

    if-eq v0, v5, :cond_8

    move v1, v4

    .line 1294
    .local v1, "killedBySPC":Z
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_9

    const-string v5, "SPC_cached #"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1295
    sput v3, Lcom/android/server/am/ProcessList;->mMaxCached:I

    goto :goto_1

    .line 1293
    .end local v1    # "killedBySPC":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 1294
    .restart local v1    # "killedBySPC":Z
    :cond_9
    const-string v5, "cached #"

    goto :goto_3
.end method

.method decrementEmptyAppCount(IIILcom/android/server/am/ProcessRecord;Z)I
    .locals 7
    .param p1, "maxEmptyApp"    # I
    .param p2, "empty"    # I
    .param p3, "cached"    # I
    .param p4, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "preventAggressiveKill"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1318
    iget v5, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    sub-int v3, p2, v5

    .line 1320
    .local v3, "ret":I
    if-le p1, v3, :cond_5

    .line 1321
    sget v5, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v3, v5, :cond_0

    .line 1322
    sget v3, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 1324
    :cond_0
    sget v5, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-le p3, v5, :cond_2

    .line 1325
    sget v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1326
    .local v2, "prevMaxCached":I
    add-int/lit8 v5, p3, -0x1

    sput v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1328
    if-eqz p5, :cond_1

    sget v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    if-le v2, v5, :cond_1

    .line 1329
    sput v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1330
    :cond_1
    sget-boolean v5, Lcom/android/server/am/ProcessList;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/am/ProcessList;->PRE_DECREMENT_SYNC:Z

    if-eqz v5, :cond_2

    sget v5, Lcom/android/server/am/ProcessList;->mMaxCached:I

    if-le v2, v5, :cond_2

    .line 1331
    if-eqz p4, :cond_2

    .line 1332
    iget v0, p4, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 1333
    .local v0, "appState":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_3

    const/16 v5, 0xf

    if-eq v0, v5, :cond_3

    move v1, v4

    .line 1334
    .local v1, "killedBySPC":Z
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DEC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_4

    const-string v5, "SPC_cached #"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 1335
    sput v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1343
    .end local v0    # "appState":I
    .end local v1    # "killedBySPC":Z
    .end local v2    # "prevMaxCached":I
    :cond_2
    :goto_2
    return v3

    .line 1333
    .restart local v0    # "appState":I
    .restart local v2    # "prevMaxCached":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1334
    .restart local v1    # "killedBySPC":Z
    :cond_4
    const-string v5, "cached #"

    goto :goto_1

    .line 1341
    .end local v0    # "appState":I
    .end local v1    # "killedBySPC":Z
    .end local v2    # "prevMaxCached":I
    :cond_5
    move v3, p1

    goto :goto_2
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    .line 1047
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getKswapdWatermark()J
    .locals 6

    .prologue
    .line 1072
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1073
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 1075
    :cond_0
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getWatermark()J

    move-result-wide v0

    .line 1076
    .local v0, "watermark":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    .line 1078
    .end local v0    # "watermark":J
    :cond_1
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    return-wide v2
.end method

.method getLMKThreshold(I)J
    .locals 2
    .param p1, "adj"    # I

    .prologue
    const/16 v0, 0xf

    .line 1053
    if-ge p1, v0, :cond_0

    const/16 v0, 0x9

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 4
    .param p1, "adjustment"    # I

    .prologue
    .line 1034
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1035
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 1036
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    .line 1039
    :goto_1
    return-wide v2

    .line 1034
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1039
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    goto :goto_1
.end method

.method getSmartDHADefaultMargin()J
    .locals 6

    .prologue
    .line 1057
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 1059
    .local v0, "margin":J
    sget-boolean v2, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v2, :cond_0

    .line 1060
    long-to-float v2, v0

    sget v3, Lcom/android/server/am/ProcessList;->mSzILS_SDHARate:F

    mul-float/2addr v2, v3

    float-to-long v0, v2

    .line 1064
    :cond_0
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mExtraFreeKBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1065
    iget-wide v2, p0, Lcom/android/server/am/ProcessList;->mExtraFreeKBytes:J

    add-long/2addr v0, v2

    .line 1068
    :cond_1
    return-wide v0
.end method

.method incrementAppCount(I)I
    .locals 3
    .param p1, "maxApp"    # I

    .prologue
    .line 1304
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int v0, p1, v1

    .line 1306
    .local v0, "mUpdateMax":I
    sget v1, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_0

    .line 1307
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 1309
    :cond_0
    sput v0, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1311
    sget v1, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v2, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    if-le v1, v2, :cond_1

    .line 1312
    sget v1, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sput v1, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1314
    :cond_1
    return v0
.end method

.method incrementEmptyAppCount(I)I
    .locals 2
    .param p1, "maxEmptyApp"    # I

    .prologue
    .line 1347
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int v0, p1, v1

    .line 1349
    .local v0, "ret":I
    sget v1, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    if-le v0, v1, :cond_0

    .line 1350
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 1353
    :cond_0
    return v0
.end method

.method public setSmartDHADefaultMargin(J)V
    .locals 1
    .param p1, "margin"    # J

    .prologue
    .line 1082
    iput-wide p1, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 1083
    return-void
.end method

.method public setTrimCachedApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 1361
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 1362
    return-void
.end method

.method public setTrimCriticalTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 1365
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 1366
    return-void
.end method

.method public setTrimEmptyApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 1357
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 1358
    return-void
.end method

.method public setTrimLowlTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 1369
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 1370
    return-void
.end method

.method public updateDHAParameter()V
    .locals 11

    .prologue
    .line 1514
    :try_start_0
    const-string v6, ""

    .line 1515
    .local v6, "result":Ljava/lang/String;
    const-string v5, ""

    .line 1516
    .local v5, "name":Ljava/lang/String;
    const-string v7, ""

    .line 1517
    .local v7, "value":Ljava/lang/String;
    const-string v0, "[=:]"

    .line 1518
    .local v0, "SEPATOR":Ljava/lang/String;
    const-string v4, "/data/local/tmp/dha_parameter.dat"

    .line 1519
    .local v4, "filepath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1520
    .local v1, "buf":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1522
    .local v3, "file":Ljava/io/File;
    const-string v8, "ActivityManager"

    const-string v9, "Start updateDHAParameter"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 1525
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "updateDHAParameter exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    new-instance v1, Ljava/io/BufferedReader;

    .end local v1    # "buf":Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1527
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2f

    .line 1528
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1532
    const-string v8, "[=:]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1533
    const-string v8, "[=:]"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1535
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "name = [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ], value = [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const-string v8, "MAX_CACHED_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1537
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1691
    .end local v0    # "SEPATOR":Ljava/lang/String;
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1692
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 1696
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 1539
    .restart local v0    # "SEPATOR":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filepath":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v8, "MIN_CACHED_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1540
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1693
    .end local v0    # "SEPATOR":Ljava/lang/String;
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1694
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 1542
    .end local v2    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v0    # "SEPATOR":Ljava/lang/String;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "filepath":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_2
    :try_start_2
    const-string v8, "MAX_EMPTY_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1543
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    goto/16 :goto_0

    .line 1545
    :cond_3
    const-string v8, "MIN_EMPTY_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1546
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    goto/16 :goto_0

    .line 1548
    :cond_4
    const-string v8, "INIT_EMPTY_APPS"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1549
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    goto/16 :goto_0

    .line 1551
    :cond_5
    const-string/jumbo v8, "mSzDHAStep"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1552
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    goto/16 :goto_0

    .line 1554
    :cond_6
    const-string/jumbo v8, "mSzDHAThreshold"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1555
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    goto/16 :goto_0

    .line 1557
    :cond_7
    const-string/jumbo v8, "ro.config.dha_th_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1558
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    goto/16 :goto_0

    .line 1560
    :cond_8
    const-string/jumbo v8, "mSzDHADefendThreshold"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1561
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    goto/16 :goto_0

    .line 1563
    :cond_9
    const-string/jumbo v8, "ro.config.dha_defendth_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1564
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->mDHADefendTHEnable:Z

    goto/16 :goto_0

    .line 1566
    :cond_a
    const-string v8, "DHA_INCREASE_THRESHOLD"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1567
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-long v8, v8

    sput-wide v8, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    goto/16 :goto_0

    .line 1569
    :cond_b
    const-string/jumbo v8, "ro.config.dha_lmk_scale"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1570
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->mLMKScale:F

    .line 1571
    iget v8, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    goto/16 :goto_0

    .line 1573
    :cond_c
    const-string/jumbo v8, "ro.config.dha_lmk_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1574
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->mLMKRate:F

    .line 1575
    sget v8, Lcom/android/server/am/ProcessList;->mLMKRate:F

    invoke-virtual {p0, v8}, Lcom/android/server/am/ProcessList;->writeLMKValueWithRate(F)V

    .line 1576
    const-string/jumbo v8, "ro.config.dha_th_level"

    const-string v9, "15"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    goto/16 :goto_0

    .line 1578
    :cond_d
    const-string/jumbo v8, "ro.config.dha_lmk_array"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1579
    sput-object v7, Lcom/android/server/am/ProcessList;->mLMKArray:Ljava/lang/String;

    .line 1580
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dha_lmk_array mLMKArray ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/server/am/ProcessList;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget v8, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    goto/16 :goto_0

    .line 1583
    :cond_e
    const-string/jumbo v8, "ro.config.dha_dyna_lmk_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1584
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->mDynamicLMKEnable:Z

    .line 1585
    iget v8, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    goto/16 :goto_0

    .line 1587
    :cond_f
    const-string/jumbo v8, "ro.config.dha_dynamic_lmk_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1588
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    iput v8, p0, Lcom/android/server/am/ProcessList;->mDynamicLMKRate:F

    goto/16 :goto_0

    .line 1590
    :cond_10
    const-string/jumbo v8, "ro.config.dha_ils_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1591
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->mILS_Enable:Z

    goto/16 :goto_0

    .line 1593
    :cond_11
    const-string/jumbo v8, "ro.config.dha_ils_dyna_lmk"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1594
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->mILS_DynamicLMKFlag:Z

    goto/16 :goto_0

    .line 1596
    :cond_12
    const-string/jumbo v8, "ro.config.dha_ils_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1597
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->mSzILSRate:F

    goto/16 :goto_0

    .line 1599
    :cond_13
    const-string/jumbo v8, "ro.config.dha_ils_sdha_rate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1600
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->mSzILS_SDHARate:F

    goto/16 :goto_0

    .line 1602
    :cond_14
    const-string/jumbo v8, "ro.config.dha_whitelist_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 1603
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->mWhitelistEnable:I

    goto/16 :goto_0

    .line 1605
    :cond_15
    const-string/jumbo v8, "ro.config.dha_pwhitelist_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1606
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->mPremiumWhitelistEnable:I

    goto/16 :goto_0

    .line 1608
    :cond_16
    const-string/jumbo v8, "ro.config.dha_whl_key"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 1609
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ActivityManagerService;->white_list_key:I

    goto/16 :goto_0

    .line 1611
    :cond_17
    const-string/jumbo v8, "ro.config.dha_goldenlist_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1612
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->mGoldenlistEnable:I

    goto/16 :goto_0

    .line 1614
    :cond_18
    const-string/jumbo v8, "ro.config.dha_CPR_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1615
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->mCPREnable:I

    goto/16 :goto_0

    .line 1617
    :cond_19
    const-string/jumbo v8, "ro.config.dha_frag_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1618
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->mFragEnable:I

    goto/16 :goto_0

    .line 1620
    :cond_1a
    const-string/jumbo v8, "ro.config.64bit_lmk_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 1621
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->mb64bitLMKEnable:Z

    goto/16 :goto_0

    .line 1623
    :cond_1b
    const-string/jumbo v8, "ro.config.ldha_es_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1624
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    goto/16 :goto_0

    .line 1626
    :cond_1c
    const-string/jumbo v8, "ro.config.ldha_spc_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1627
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->LDHA_SPC_ENABLE:Z

    goto/16 :goto_0

    .line 1629
    :cond_1d
    const-string/jumbo v8, "ro.config.ldha_ext_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1630
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->LDHA_EXT_ENABLE:Z

    goto/16 :goto_0

    .line 1632
    :cond_1e
    const-string/jumbo v8, "ro.config.ldha_ext_th1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1633
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/ProcessList;->LDHA_EXT_TH1:J

    goto/16 :goto_0

    .line 1635
    :cond_1f
    const-string/jumbo v8, "ro.config.ldha_ext_th2"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1636
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/am/ProcessList;->LDHA_EXT_TH2:J

    goto/16 :goto_0

    .line 1638
    :cond_20
    const-string/jumbo v8, "ro.config.ldha_ext_limit1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1639
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->LDHA_EXT_LIMIT1:I

    goto/16 :goto_0

    .line 1641
    :cond_21
    const-string/jumbo v8, "ro.config.ldha_ext_limit2"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1642
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->LDHA_EXT_LIMIT2:I

    goto/16 :goto_0

    .line 1644
    :cond_22
    const-string/jumbo v8, "ro.config.ams_exception_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1645
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->mAMSExceptionEnable:Z

    goto/16 :goto_0

    .line 1647
    :cond_23
    const-string/jumbo v8, "ro.config.fha_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 1648
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->FHA_Enable:Z

    .line 1649
    iget v8, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v9, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    goto/16 :goto_0

    .line 1651
    :cond_24
    const-string/jumbo v8, "ro.config.fha_cached_max"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1652
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS_FOR_FHA:I

    goto/16 :goto_0

    .line 1654
    :cond_25
    const-string/jumbo v8, "ro.config.fha_empty_max"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 1655
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS_FOR_FHA:I

    goto/16 :goto_0

    .line 1657
    :cond_26
    const-string/jumbo v8, "ro.config.mdha_ssr_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1658
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->MDHA_SSR_ENABLE:Z

    goto/16 :goto_0

    .line 1660
    :cond_27
    const-string/jumbo v8, "ro.config.mdha_ssr_max_minute"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1661
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v8, v8, 0x3e8

    sput v8, Lcom/android/server/am/ProcessList;->MDHA_SSR_MAX_SERVICE_TIME:I

    goto/16 :goto_0

    .line 1663
    :cond_28
    const-string/jumbo v8, "ro.config.pre_max_kill_enable"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 1664
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->PRE_MAX_KILL_ENABLE:Z

    goto/16 :goto_0

    .line 1666
    :cond_29
    const-string/jumbo v8, "ro.config.pre_cached_kill"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 1667
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->PRE_CACHED_KILL:Z

    goto/16 :goto_0

    .line 1669
    :cond_2a
    const-string/jumbo v8, "ro.config.pre_empty_kill"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 1670
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->PRE_EMPTY_KILL:Z

    goto/16 :goto_0

    .line 1672
    :cond_2b
    const-string/jumbo v8, "ro.config.pre_decrement_sync"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 1673
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->PRE_DECREMENT_SYNC:Z

    goto/16 :goto_0

    .line 1675
    :cond_2c
    const-string/jumbo v8, "ro.config.pre_support_increment"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 1676
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->PRE_SUPPORT_INCREMENT:Z

    goto/16 :goto_0

    .line 1678
    :cond_2d
    const-string/jumbo v8, "ro.config.dha_adj_cached_factor"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1679
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    sput-boolean v8, Lcom/android/server/am/ProcessList;->DHA_ADJ_CACHED_FACTOR:Z

    goto/16 :goto_0

    .line 1682
    :cond_2e
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "not matched parameter"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1685
    :cond_2f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1686
    const-string v8, "ActivityManager"

    const-string v9, "complete parameter"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1689
    :cond_30
    const-string v8, "ActivityManager"

    const-string/jumbo v9, "file does not exist"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method public updateDynamicLMK(Ljava/lang/String;J)V
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "AvgUSS"    # J

    .prologue
    const/4 v3, 0x1

    .line 1402
    sget-boolean v0, Lcom/android/server/am/ProcessList;->mDynamicLMKEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v0, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1404
    :cond_1
    const-string v0, "DynamicLMK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDynamicLMK: processName =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AvgUSS =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const-string/jumbo v0, "launcher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->ResetDynamicLMK()V

    goto :goto_0

    .line 1409
    :cond_2
    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.samsung.android.video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1412
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mDynamicLMKFlag:Z

    if-nez v0, :cond_0

    .line 1413
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->changeLMKByDynamicLMK(Z)V

    .line 1414
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mDynamicLMKFlag:Z

    goto :goto_0

    .line 1417
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mDynamicLMKFlag:Z

    goto :goto_0
.end method

.method public updateHiddenAppNum(IIILcom/android/server/am/ProcessRecord;Z)I
    .locals 20
    .param p1, "maxProcess"    # I
    .param p2, "curCached"    # I
    .param p3, "curEmpty"    # I
    .param p4, "lastCachedApp"    # Lcom/android/server/am/ProcessRecord;
    .param p5, "preventAggressiveKill"    # Z

    .prologue
    .line 1170
    move/from16 v12, p1

    .line 1172
    .local v12, "ret":I
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v2, :cond_a

    .line 1174
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 1177
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v18

    .line 1180
    .local v18, "szFreeMem":J
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v4

    add-long v14, v2, v4

    .line 1181
    .local v14, "szAvailableMem":J
    const-wide/16 v16, 0x0

    .line 1182
    .local v16, "szFragMem":J
    sget v2, Lcom/android/server/am/ProcessList;->mFragEnable:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    cmp-long v2, v18, v2

    if-gez v2, :cond_0

    .line 1183
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readBuddyInfo()V

    .line 1184
    sget-object v2, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFragRate()J

    move-result-wide v16

    .line 1187
    :cond_0
    sget-boolean v2, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    if-nez v2, :cond_1

    div-int/lit8 v2, p1, 0x2

    sput v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1189
    :cond_1
    sget v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v3, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-ge v2, v3, :cond_2

    .line 1190
    sget v2, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    sput v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1192
    :cond_2
    sget v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v3, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    if-le v2, v3, :cond_3

    .line 1193
    sget v2, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sput v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1196
    :cond_3
    sget-boolean v2, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/server/am/ProcessList;->mILS_2nd_Enable:Z

    if-eqz v2, :cond_4

    .line 1197
    sget v2, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    sput v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1200
    :cond_4
    sget-boolean v2, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1201
    const/4 v11, 0x0

    .line 1202
    .local v11, "maxBG":I
    sget-boolean v2, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_6

    move/from16 v11, p1

    .line 1205
    :goto_0
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AvailableMem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x400

    div-long v4, v14, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "kB (Free: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "kB, Cached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "kB) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Threshold = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "kB [MaxHidden: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Current Hidden"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Current Empty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Frag.Mem = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x400

    div-long v4, v16, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    .end local v11    # "maxBG":I
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, v18, v2

    if-gtz v2, :cond_7

    move v13, v12

    .line 1264
    .end local v12    # "ret":I
    .end local v14    # "szAvailableMem":J
    .end local v16    # "szFragMem":J
    .end local v18    # "szFreeMem":J
    .local v13, "ret":I
    :goto_1
    return v13

    .line 1203
    .end local v13    # "ret":I
    .restart local v11    # "maxBG":I
    .restart local v12    # "ret":I
    .restart local v14    # "szAvailableMem":J
    .restart local v16    # "szFragMem":J
    .restart local v18    # "szFreeMem":J
    :cond_6
    sget v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    add-int v11, p1, v2

    goto/16 :goto_0

    .line 1214
    .end local v11    # "maxBG":I
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 1216
    .local v10, "mFinalDHAThresholdRate":F
    sget-boolean v2, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    if-eqz v2, :cond_8

    .line 1217
    sget-boolean v2, Lcom/android/server/am/ProcessList;->mILS_DynamicLMKFlag:Z

    if-nez v2, :cond_8

    .line 1218
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    sget v3, Lcom/android/server/am/ProcessList;->mSzILSRate:F

    mul-float v10, v2, v3

    .line 1222
    :cond_8
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v2, v2

    mul-float v9, v2, v10

    .line 1224
    .local v9, "mFinalDHAThreshold":F
    const/4 v8, 0x0

    .line 1225
    .local v8, "curProcess":I
    sget-boolean v2, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_b

    add-int v8, p2, p3

    .line 1229
    :goto_2
    sub-long v2, v14, v16

    long-to-float v2, v2

    cmpg-float v2, v2, v9

    if-ltz v2, :cond_9

    sget-boolean v2, Lcom/android/server/am/ProcessList;->mDHADefendTHEnable:Z

    if-eqz v2, :cond_d

    sub-long v2, v18, v16

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    .line 1230
    :cond_9
    sget-boolean v2, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_c

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 1231
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessList;->decrementAppCount(IIILcom/android/server/am/ProcessRecord;Z)I

    move-result v12

    .line 1232
    sget v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sput v2, Lcom/android/server/am/ProcessList;->retCacheLimit:I

    .line 1235
    :goto_3
    sget-boolean v2, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 1236
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrease Hidden App Number from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "curProcess":I
    .end local v9    # "mFinalDHAThreshold":F
    .end local v10    # "mFinalDHAThresholdRate":F
    .end local v14    # "szAvailableMem":J
    .end local v16    # "szFragMem":J
    .end local v18    # "szFreeMem":J
    :cond_a
    :goto_4
    move v13, v12

    .line 1264
    .end local v12    # "ret":I
    .restart local v13    # "ret":I
    goto :goto_1

    .line 1226
    .end local v13    # "ret":I
    .restart local v8    # "curProcess":I
    .restart local v9    # "mFinalDHAThreshold":F
    .restart local v10    # "mFinalDHAThresholdRate":F
    .restart local v12    # "ret":I
    .restart local v14    # "szAvailableMem":J
    .restart local v16    # "szFragMem":J
    .restart local v18    # "szFreeMem":J
    :cond_b
    move/from16 v8, p3

    goto :goto_2

    :cond_c
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p3

    move/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 1234
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(IIILcom/android/server/am/ProcessRecord;Z)I

    move-result v12

    goto :goto_3

    .line 1241
    :cond_d
    sub-long v2, v14, v16

    long-to-float v2, v2

    sget-wide v4, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v3, v4

    add-float/2addr v3, v9

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    move/from16 v0, p1

    if-ge v8, v0, :cond_e

    sget-boolean v2, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/android/server/am/ProcessList;->PRE_MAX_KILL_ENABLE:Z

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/android/server/am/ProcessList;->PRE_SUPPORT_INCREMENT:Z

    if-eqz v2, :cond_10

    sget v2, Lcom/android/server/am/ActivityManagerService;->curTopState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    add-int/lit8 v2, v8, 0x1

    move/from16 v0, p1

    if-lt v2, v0, :cond_10

    .line 1244
    :cond_e
    sget-boolean v2, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_f

    .line 1245
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->incrementAppCount(I)I

    move-result v12

    .line 1246
    const/4 v2, 0x0

    sput v2, Lcom/android/server/am/ProcessList;->retCacheLimit:I

    .line 1249
    :goto_5
    sget-boolean v2, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 1250
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Increase Hidden App Number from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1248
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->incrementEmptyAppCount(I)I

    move-result v12

    goto :goto_5

    .line 1255
    :cond_10
    sget-boolean v2, Lcom/android/server/am/ProcessList;->LDHA_ES_ENABLE:Z

    if-eqz v2, :cond_a

    .line 1256
    sput v12, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1257
    sget v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v3, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    if-le v2, v3, :cond_11

    .line 1258
    sget v2, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sput v2, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 1260
    :cond_11
    const/4 v2, 0x0

    sput v2, Lcom/android/server/am/ProcessList;->retCacheLimit:I

    goto/16 :goto_4
.end method

.method public updateLMKbyILS()V
    .locals 1

    .prologue
    .line 1423
    sget-boolean v0, Lcom/android/server/am/ProcessList;->mILS_Enable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/ProcessList;->mILS_DynamicLMKFlag:Z

    if-eqz v0, :cond_0

    .line 1424
    sget-boolean v0, Lcom/android/server/am/ProcessList;->mSzILSFlag:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->changeLMKByDynamicLMK(Z)V

    .line 1426
    :cond_0
    return-void
.end method

.method writeLMKValueWithRate(F)V
    .locals 4
    .param p1, "rate"    # F

    .prologue
    .line 688
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 689
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 690
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v3, v3, v1

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    aput v3, v2, v1

    .line 692
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v2, v2, v1

    mul-int/lit16 v2, v2, 0x400

    div-int/lit16 v2, v2, 0x1000

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 693
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_0
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 697
    return-void
.end method
