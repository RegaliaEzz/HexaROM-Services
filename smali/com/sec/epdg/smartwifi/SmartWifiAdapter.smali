.class public Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
.super Ljava/lang/Object;
.source "SmartWifiAdapter.java"

# interfaces
.implements Lcom/sec/epdg/smartwifi/SmartWifiInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiCallable;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteCallable;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StartProfilingCallable;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$PingThread;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ReadCurrentRssiRunnable;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelListener;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelRunnable;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiBroadcastReceiver;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthReading;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthReading;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StopProfilingRunnable;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StartProfilingRunnable;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;,
        Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_WIFI_READING:I = 0x0

.field private static final DEF_HYSTERISIS_VALUE:I = 0x4

.field private static final DEF_SMARTWIFI_TIMER_VALUE:I = 0x0

.field private static final DISABLE_PKT_LOSS_LEVEL:I = 0x64

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field private static final TAG:Ljava/lang/String; = "[SMARTWIFI]"

.field public static final VOICECALL_TYPE_CS:I = 0x1

.field public static final VOICECALL_TYPE_HD_CS:I = 0x2

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field public static final VOICECALL_TYPE_VoLTE:I = 0x0

.field private static final WEAK_CDMA_LEVEL:I = 0x0

.field private static final WIFI_DISCONNECTED_RSSI:I = -0xc8

.field private static final WIFI_DISCONNECTED_RSSI_2:I = -0x7f

.field private static final WIFI_LEVEL_POLLING_WIFIONLY:I = 0x1

.field private static mCdmaTh:I

.field private static mIsCallInProgress:I

.field private static mIsLteAvailable:Z

.field private static mLastReportedRssi:I

.field private static mLteThGood:I

.field private static mLteThLow:I

.field private static mPktLossLevel:I

.field private static mPollingRssi:I

.field private static mSalesCode:Ljava/lang/String;

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

.field private static mWeakWifiDb:I

.field private static mWeakWifiLevel:I

.field private static mWifiBadDbValue:I

.field private static mWifiBadDbWifiOnlyValue:I

.field private static mWifiGoodDbValue:I

.field private static mWifiGoodDbWifiOnlyValue:I

.field private static mWifiHandoverDbValue:I

.field private static mWifiHysterisis:I


# instance fields
.field private mAddrToReach:Ljava/net/InetAddress;

.field private mCaptiveAuthenticated:Z

.field private mCdmaProfilingStarted:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandoverThresholdMet:Z

.field private mIsImsDeregDone:Z

.field private mIsPollingZone:Z

.field private mL2WHandoverProfilingStarted:Z

.field private mLteProfilingStarted:Z

.field private mMetHoThreshold:Z

.field private mOutStandingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPollCaptive:Z

.field private mProfilingStarted:Z

.field private final mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

.field private mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

.field private mRunnableCdmaOff:Ljava/lang/Runnable;

.field private mRunnableCdmaOn:Ljava/lang/Runnable;

.field private mRunnableL2WHandoverOn:Ljava/lang/Runnable;

.field private mRunnableLteOff:Ljava/lang/Runnable;

.field private mRunnableLteOn:Ljava/lang/Runnable;

.field private mRunnablePollingRssiOff:Ljava/lang/Runnable;

.field private mRunnablePollingRssiOn:Ljava/lang/Runnable;

.field private mRunnableWifiOff:Ljava/lang/Runnable;

.field private mRunnableWifiOn:Ljava/lang/Runnable;

.field private mRunnableWifiRssiIntentReceived:Ljava/lang/Runnable;

.field private mSmartWifiCaptiveReceiver:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;

.field private mSmartWifiHandler:Landroid/os/Handler;

.field private mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;

.field private final mSmartWifiTelListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelListener;

.field private mSmartWifiThread:Landroid/os/HandlerThread;

.field private mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

.field private mSmartWifiTimerValue:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const/16 v0, 0x64

    sput v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPktLossLevel:I

    .line 62
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiLevel:I

    .line 67
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I

    .line 68
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHysterisis:I

    .line 69
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    .line 70
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    .line 71
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbWifiOnlyValue:I

    .line 72
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbWifiOnlyValue:I

    .line 73
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    .line 115
    const/16 v0, -0x64

    sput v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollingRssi:I

    .line 116
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLastReportedRssi:I

    .line 139
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSalesCode:Ljava/lang/String;

    .line 140
    sput-boolean v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsLteAvailable:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;

    .line 77
    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelListener;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelListener;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;)V

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTelListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelListener;

    .line 79
    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;)V

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    .line 81
    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-direct {v1, p0, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$1;)V

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    .line 85
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    .line 86
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z

    .line 87
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z

    .line 88
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z

    .line 89
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandoverThresholdMet:Z

    .line 90
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCaptiveAuthenticated:Z

    .line 91
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mL2WHandoverProfilingStarted:Z

    .line 92
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiCaptiveReceiver:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;

    .line 93
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z

    .line 107
    iput v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimerValue:I

    .line 108
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    .line 126
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsPollingZone:Z

    .line 127
    iput-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsImsDeregDone:Z

    .line 129
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    .line 143
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SmartWifiThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiThread:Landroid/os/HandlerThread;

    .line 144
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 145
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 146
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;

    .line 148
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;

    .line 151
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mOutStandingTasks:Ljava/util/List;

    .line 154
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postStartLteRunnable(I)V

    return-void
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOn:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnable(I)V

    return-void
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOn:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnableFinal(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z

    return p1
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    return v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOn:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Ljava/lang/Runnable;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfilingTask(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableL2WHandoverOn:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isVoLTEHandoverReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    return v0
.end method

.method static synthetic access$3302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 52
    sput p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I

    return p0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCdmaProfilingRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->calculateWeakWifiLevelAndRssiDb()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiRssiIntentReceived:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->handleWifiRssiIntent(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCaptiveAuthenticated:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCaptiveAuthenticated:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isPingable(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mOutStandingTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->algoForStartProfiling()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->doWifiToLteHO(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->doLteToWifiHO(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiStrengthCheckerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5202(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiOnlyCase()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbWifiOnlyValue:I

    return v0
.end method

.method static synthetic access$5500()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbWifiOnlyValue:I

    return v0
.end method

.method static synthetic access$5600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiInHystersisZone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startRssiStrengthChecker()V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopRssiStrengthChecker()V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startImsDeRegister()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .param p1, "x1"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->addInitialReadingForWifi()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->clearTasksArray()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mAddrToReach:Ljava/net/InetAddress;

    return-object v0
.end method

.method private addInitialReadingForWifi()V
    .locals 5

    .prologue
    .line 288
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 291
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 292
    .local v0, "rssi":I
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    if-eqz v2, :cond_2

    .line 293
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiRssiLessOrEqualsHandoverThreshold(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setHandoverThresholdMet(Z)V

    .line 305
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->addInitialReading(Ljava/lang/Integer;)V

    .line 306
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOn:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;

    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfilingTask(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 312
    .end local v0    # "rssi":I
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    return-void

    .line 295
    .restart local v0    # "rssi":I
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiInHystersisZone(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    .line 297
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New rssi is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiInHystersisZone(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    add-int/lit8 v0, v2, -0x1

    .line 302
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New rssi is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    .end local v0    # "rssi":I
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    const-string v2, "[SMARTWIFI]"

    const-string v3, "!! Wifi not connected and startprofiling called !!"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private algoForStartProfiling()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->isWifiSignalGoodEnough()Z

    move-result v0

    .line 1593
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCaptivePortalAuthenticated(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static calculateSignalLevelForTmo(II)I
    .locals 7
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v6, -0x4c

    const/16 v5, -0x55

    const/16 v4, -0x59

    .line 157
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 158
    if-gt p0, v4, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    if-le p0, v4, :cond_2

    if-gt p0, v5, :cond_2

    .line 161
    const/4 v2, 0x1

    goto :goto_0

    .line 162
    :cond_2
    if-le p0, v5, :cond_3

    if-gt p0, v6, :cond_3

    .line 163
    const/4 v2, 0x2

    goto :goto_0

    .line 164
    :cond_3
    if-le p0, v6, :cond_4

    const/16 v2, -0x40

    if-gt p0, v2, :cond_4

    .line 165
    const/4 v2, 0x3

    goto :goto_0

    .line 167
    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    .line 169
    :cond_5
    const/16 v3, -0x64

    if-le p0, v3, :cond_0

    .line 171
    const/16 v2, -0x37

    if-lt p0, v2, :cond_6

    .line 172
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 174
    :cond_6
    const/high16 v0, 0x42340000    # 45.0f

    .line 175
    .local v0, "inputRange":F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 176
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method

.method private calculateWeakWifiLevelAndRssiDb()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1773
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v4

    .line 1774
    .local v4, "serviceState":I
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getDefaultWeakWifiLevel()I

    move-result v2

    .line 1775
    .local v2, "mDefaultWifiLevel":I
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getDefaultWifiGoodDbValue()I

    move-result v1

    .line 1776
    .local v1, "mDefaultWifiGoodDbValue":I
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getDefaultWifiBadDbValue()I

    move-result v0

    .line 1777
    .local v0, "mDefaultWifiBadDbValue":I
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getWeakWifiLevel()I

    move-result v3

    .line 1779
    .local v3, "mWifiLevel":I
    if-nez v4, :cond_1

    .line 1780
    if-eq v2, v3, :cond_0

    .line 1781
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v5, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->setWeakWifiLevel(I)V

    .line 1782
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getWeakWifiLevel()I

    move-result v5

    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getWeakWifiRssiDb(I)I

    move-result v5

    sput v5, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiDb:I

    .line 1783
    invoke-virtual {p0, v1, v0, v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setWifiThreshold(III)V

    .line 1792
    :cond_0
    :goto_0
    const-string v5, "[SMARTWIFI]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateWeakWifiLevelAndRssiDb mWeakWifiDb = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiDb:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / mWeakWifiLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getWeakWifiLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / mWifiGoodDbValue  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / mWifiBadDbValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / mWifiGoodDbWifiOnlyValue  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbWifiOnlyValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / mWifiBadDbWifiOnlyValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbWifiOnlyValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    return-void

    .line 1786
    :cond_1
    if-ne v2, v3, :cond_0

    .line 1787
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->setWeakWifiLevel(I)V

    .line 1788
    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getWeakWifiLevel()I

    move-result v5

    invoke-static {v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getWeakWifiRssiDb(I)I

    move-result v5

    sput v5, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiDb:I

    .line 1789
    sget v5, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbWifiOnlyValue:I

    sget v6, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbWifiOnlyValue:I

    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setWifiThreshold(III)V

    goto :goto_0
.end method

.method private clearTasksArray()V
    .locals 6

    .prologue
    .line 748
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mOutStandingTasks:Ljava/util/List;

    monitor-enter v3

    .line 749
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mOutStandingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 750
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 752
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;

    .line 753
    .local v1, "task":Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;
    if-eqz v1, :cond_0

    .line 754
    const-string v2, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearing task : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;->cancel(Z)Z

    goto :goto_0

    .line 761
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;>;"
    .end local v1    # "task":Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 757
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;>;"
    .restart local v1    # "task":Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;
    :cond_0
    :try_start_1
    const-string v2, "[SMARTWIFI]"

    const-string/jumbo v4, "null task : "

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 760
    .end local v1    # "task":Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mOutStandingTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 761
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    return-void
.end method

.method private doLteToWifiHO(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 1587
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->isWifiSignalGoodEnough()Z

    move-result v0

    .line 1588
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCaptivePortalAuthenticated(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doWifiToLteHO(I)Ljava/lang/Boolean;
    .locals 3
    .param p1, "networkType"    # I

    .prologue
    .line 1579
    const/4 v0, 0x1

    .line 1580
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1581
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->isCdmaSignalGoodEnough()Z

    move-result v0

    .line 1583
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 279
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 282
    :cond_0
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    return-object v0
.end method

.method public static declared-synchronized getIsLteAvailable()Z
    .locals 4

    .prologue
    .line 550
    const-class v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    monitor-enter v1

    :try_start_0
    const-string v0, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTE Available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsLteAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-boolean v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsLteAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getWeakWifiRssiDb(I)I
    .locals 8
    .param p0, "wifiLevel"    # I

    .prologue
    const/4 v7, 0x5

    const/16 v3, -0x37

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "currentLevel":I
    const/4 v2, 0x0

    .line 197
    .local v2, "prevLevel":I
    if-gtz p0, :cond_1

    .line 198
    const/4 v1, 0x0

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    const/4 v4, 0x4

    if-ne v4, p0, :cond_2

    move v1, v3

    .line 202
    goto :goto_0

    .line 205
    :cond_2
    const/16 v4, -0x64

    invoke-static {v4, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .line 207
    const/16 v1, -0x63

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 208
    invoke-static {v1, v7}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 209
    if-ne v2, p0, :cond_3

    .line 210
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!! currentlevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!! prevlevel : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-- rssi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-gt v0, p0, :cond_0

    .line 207
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 217
    :cond_3
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "skip "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 220
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid RSSI level"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getWeakWifiRssiDb(II)I
    .locals 2
    .param p0, "wifiGoodDb"    # I
    .param p1, "wifiBadDb"    # I

    .prologue
    .line 183
    sub-int v0, p1, p0

    .line 184
    .local v0, "dbDifference":I
    div-int/lit8 v1, v0, 0x2

    neg-int v1, v1

    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHysterisis:I

    .line 186
    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHysterisis:I

    sub-int v1, p0, v1

    return v1
.end method

.method private handleWifiRssiIntent(I)V
    .locals 6
    .param p1, "rssi"    # I

    .prologue
    const/4 v5, 0x1

    .line 1917
    move v1, p1

    .line 1918
    .local v1, "newRssi":I
    const/4 v0, 0x0

    .line 1919
    .local v0, "captiveSuccess":Z
    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    if-nez v2, :cond_1

    .line 2002
    :cond_0
    :goto_0
    return-void

    .line 1922
    :cond_1
    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z

    if-eqz v2, :cond_2

    .line 1923
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCaptivePortalAuthenticated(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1924
    const-string v2, "[SMARTWIFI]"

    const-string v3, "Captive portal is now authenticated"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    const/4 v0, 0x1

    .line 1929
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    if-eqz v2, :cond_2

    .line 1930
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiRssiLessOrEqualsHandoverThreshold(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1931
    invoke-virtual {p0, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setHandoverThresholdMet(Z)V

    .line 1943
    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    .line 1944
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->clearReadings()V

    .line 2001
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->addReading(Ljava/lang/Integer;)V

    goto :goto_0

    .line 1932
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiInHystersisZone(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1933
    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    .line 1934
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New rssi is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1938
    :cond_5
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unauthenticated captive portal -- drop RSSI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1946
    :cond_6
    invoke-direct {p0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isFunnyRssi(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1947
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi RSSI dropped (out of range) -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1950
    :cond_7
    sget v2, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    if-lez v2, :cond_9

    .line 1951
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPollingRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollingRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLastReportedRssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLastReportedRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollingRssi:I

    if-gt v1, v2, :cond_d

    .line 1953
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLastReportedRssi:I

    if-eqz v2, :cond_8

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLastReportedRssi:I

    sget v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    if-lt v2, v3, :cond_c

    .line 1954
    :cond_8
    const-string v2, "[SMARTWIFI]"

    const-string v3, "Rssi is now below polling zone, report it"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLastReportedRssi:I

    .line 1956
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnablePollingRssiOn:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    .line 1970
    :cond_9
    :goto_3
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    if-eqz v2, :cond_b

    .line 1971
    invoke-direct {p0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiRssiLessOrEqualsHandoverThreshold(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1972
    invoke-virtual {p0, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setHandoverThresholdMet(Z)V

    .line 1973
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    if-ge v1, v2, :cond_10

    .line 1986
    :cond_a
    :goto_4
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New rssi value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :cond_b
    invoke-direct {p0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiInHystersisZone(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1989
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi RSSI dropped (hysterisis zone) -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    if-eqz v2, :cond_0

    .line 1991
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startRssiStrengthChecker()V

    goto/16 :goto_0

    .line 1958
    :cond_c
    const-string v2, "[SMARTWIFI]"

    const-string v3, "Polling rssi on indication is already reported"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1960
    :cond_d
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    if-lt v1, v2, :cond_9

    .line 1961
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLastReportedRssi:I

    if-eqz v2, :cond_e

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLastReportedRssi:I

    sget v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollingRssi:I

    if-gt v2, v3, :cond_f

    .line 1962
    :cond_e
    const-string v2, "[SMARTWIFI]"

    const-string v3, "Rssi now out from polling zone, report it"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    sput v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLastReportedRssi:I

    .line 1964
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnablePollingRssiOff:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postRunnableToEpdg(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1966
    :cond_f
    const-string v2, "[SMARTWIFI]"

    const-string v3, "Polling rssi off indication is already reported"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1973
    :cond_10
    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    add-int/lit8 v1, v2, -0x1

    goto :goto_4

    .line 1980
    :cond_11
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getLastKnownReadingLevel()I
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;)I

    move-result v2

    sget v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    if-gt v2, v3, :cond_a

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    if-le v1, v2, :cond_a

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    if-ge v1, v2, :cond_a

    .line 1983
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getLastKnownReadingLevel()I
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;)I

    move-result v1

    goto/16 :goto_4

    .line 1995
    :cond_12
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    if-eqz v2, :cond_3

    .line 1996
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isRssiStrengthCheckerRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1997
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopRssiStrengthChecker()V

    goto/16 :goto_2
.end method

.method private isCaptivePortalAuthenticated(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    .prologue
    .line 1642
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiGoodLink()Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    move-result-object v0

    .line 1643
    .local v0, "wifiLinkStatus":Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->CAPTIVE_AUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    if-ne v1, v0, :cond_0

    .line 1644
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->unregisterForCaptiveChange()V

    .line 1645
    const/4 p1, 0x1

    .line 1653
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .line 1646
    .restart local p1    # "defaultValue":Z
    :cond_0
    sget-object v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    if-ne v1, v0, :cond_1

    .line 1647
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->registerForCaptiveChange(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;)V

    .line 1648
    const/4 p1, 0x0

    goto :goto_0

    .line 1650
    :cond_1
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCaptivePortalAuthenticated: defaultValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " wifiLinkStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->registerForCaptiveChange(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;)V

    goto :goto_0
.end method

.method private isCdmaProfilingRequired()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 604
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-eqz v1, :cond_0

    .line 605
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceNet Type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Call state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 610
    :cond_0
    return v0
.end method

.method private isFunnyRssi(I)Z
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    .line 224
    const/16 v0, -0xc8

    if-eq v0, p1, :cond_0

    const/16 v0, -0x7f

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPingable(Ljava/net/InetAddress;)Z
    .locals 7
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x1

    .line 315
    const/4 v1, 0x0

    .line 317
    .local v1, "ret":Z
    const/16 v4, 0x64

    sget v5, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPktLossLevel:I

    if-ne v4, v5, :cond_0

    .line 318
    const-string v4, "[SMARTWIFI]"

    const-string v5, "No actual ping requests sent out"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_0
    return v3

    .line 322
    :cond_0
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/sec/epdg/smartwifi/EpdgInetAddress;->isPingable(Ljava/net/InetAddress;ILjava/lang/String;)Lcom/sec/epdg/smartwifi/PingStats;

    move-result-object v2

    .line 323
    .local v2, "stats":Lcom/sec/epdg/smartwifi/PingStats;
    if-eqz v2, :cond_1

    .line 324
    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/PingStats;->getPacketLossInPercentage()I

    move-result v0

    .line 325
    .local v0, "pktLossPercent":I
    const-string v4, "[SMARTWIFI]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ping pkt loss percent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPktLossLevel:I

    if-lt v4, v0, :cond_2

    move v1, v3

    .end local v0    # "pktLossPercent":I
    :cond_1
    :goto_1
    move v3, v1

    .line 328
    goto :goto_0

    .line 326
    .restart local v0    # "pktLossPercent":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isRssiInHystersisZone(I)Z
    .locals 6
    .param p1, "rssi"    # I

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 230
    .local v2, "mIsRssiInHystersis":Z
    sget v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    add-int/lit8 v0, v3, -0x1

    .line 231
    .local v0, "highrange":I
    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    .line 233
    .local v1, "lowrange":I
    const/16 v3, -0x64

    if-ge v1, v3, :cond_0

    .line 234
    const/16 v1, -0x64

    .line 236
    :cond_0
    const/16 v3, -0x37

    if-le v0, v3, :cond_1

    .line 237
    const/16 v0, -0x37

    .line 240
    :cond_1
    if-gt p1, v0, :cond_2

    if-lt p1, v1, :cond_2

    const/4 v2, 0x1

    .line 242
    :goto_0
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rssi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " highrange : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " lowrange : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsRssiInHystersis : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return v2

    .line 240
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized isRssiStrengthCheckerRunning()Z
    .locals 1

    .prologue
    .line 1889
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsPollingZone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isSmartWifiTimerRunning()Z
    .locals 2

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    if-eqz v0, :cond_0

    .line 2051
    const-string v0, "[SMARTWIFI]"

    const-string v1, "SmartWifiTimer is Running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const/4 v0, 0x1

    .line 2055
    :goto_0
    return v0

    .line 2054
    :cond_0
    const-string v0, "[SMARTWIFI]"

    const-string v1, "SmartWifiTimer is Not Running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoLTEHandoverReady()Z
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1708
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1709
    iget-object v8, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v4

    .line 1710
    .local v4, "networkType":I
    iget-object v8, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v5

    .line 1713
    .local v5, "serviceState":I
    iget-object v8, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "voicecall_type"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1714
    .local v0, "callType":I
    if-nez v0, :cond_0

    move v3, v6

    .line 1715
    .local v3, "isVolteEnabled":Z
    :goto_0
    const-string/jumbo v8, "ril.ims.ltevoicesupport"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    move v2, v6

    .line 1717
    .local v2, "isVoPSSupported":Z
    :goto_1
    if-nez v5, :cond_2

    if-ne v4, v10, :cond_2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    move v1, v6

    .line 1718
    .local v1, "isVoLTEHandoverReady":Z
    :goto_2
    const-string v6, "[SMARTWIFI]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isVoLTEHandoverReady() : isVoLTEHandoverReady="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", serviceState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", networkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isVolteEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isVoPSSupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    .end local v0    # "callType":I
    .end local v1    # "isVoLTEHandoverReady":Z
    .end local v2    # "isVoPSSupported":Z
    .end local v3    # "isVolteEnabled":Z
    .end local v4    # "networkType":I
    .end local v5    # "serviceState":I
    :goto_3
    return v1

    .restart local v0    # "callType":I
    .restart local v4    # "networkType":I
    .restart local v5    # "serviceState":I
    :cond_0
    move v3, v7

    .line 1714
    goto :goto_0

    .restart local v3    # "isVolteEnabled":Z
    :cond_1
    move v2, v7

    .line 1715
    goto :goto_1

    .restart local v2    # "isVoPSSupported":Z
    :cond_2
    move v1, v7

    .line 1717
    goto :goto_2

    .line 1725
    .end local v0    # "callType":I
    .end local v2    # "isVoPSSupported":Z
    .end local v3    # "isVolteEnabled":Z
    .end local v4    # "networkType":I
    .end local v5    # "serviceState":I
    :cond_3
    iget-object v8, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    if-eq v8, v10, :cond_4

    iget-object v8, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_5

    :cond_4
    move v7, v6

    :cond_5
    move v1, v7

    goto :goto_3
.end method

.method private static isWifiConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 265
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 267
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 269
    .local v1, "mWifi":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method private isWifiGoodLink()Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1657
    iget-object v7, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1658
    const-string v7, "[SMARTWIFI]"

    const-string v8, "Wifi not connected"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    sget-object v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    .line 1704
    :goto_0
    return-object v7

    .line 1662
    :cond_0
    iget-object v7, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 1664
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 1665
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v5, :cond_1

    .line 1666
    const-string v7, "[SMARTWIFI]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no connected wifi : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v7, v8}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1667
    sget-object v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    goto :goto_0

    .line 1670
    :cond_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 1671
    .local v2, "currentSSID":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1672
    const-string v7, "[SMARTWIFI]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unable to get SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v7, v8}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1673
    sget-object v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    goto :goto_0

    .line 1676
    :cond_2
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1677
    .local v1, "conns":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v1, :cond_3

    .line 1678
    const-string v7, "[SMARTWIFI]"

    const-string/jumbo v8, "unable to get wifi network configuration"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    sget-object v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    goto :goto_0

    .line 1682
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1683
    .local v0, "conn":Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 1684
    .local v4, "ssid":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1685
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1686
    const-string v7, "[SMARTWIFI]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Processing conn with ssid : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v7, v8}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1688
    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1689
    const-string v7, "[SMARTWIFI]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Usable Internet : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->isUsableInternet:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v7, "[SMARTWIFI]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Captive Portal : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    const-string v7, "[SMARTWIFI]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Captive Authenticated : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    const-string v7, "[SMARTWIFI]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mCaptiveAuthenticated : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCaptiveAuthenticated:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    iget-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-eqz v7, :cond_4

    .line 1694
    iget-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->isAuthenticated:Z

    iput-boolean v7, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCaptiveAuthenticated:Z

    .line 1695
    iget-boolean v7, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCaptiveAuthenticated:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->CAPTIVE_AUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    goto/16 :goto_0

    :cond_6
    sget-object v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    goto/16 :goto_0

    .line 1700
    :cond_7
    const-string v7, "[SMARTWIFI]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip SSID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v7, v8}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1703
    .end local v0    # "conn":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "ssid":Ljava/lang/String;
    :cond_8
    const-string v7, "[SMARTWIFI]"

    const-string/jumbo v8, "unable to find status about connected wifi"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    sget-object v7, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->UNDETERMINABLE:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    goto/16 :goto_0
.end method

.method private isWifiOnlyCase()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1877
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getWeakWifiLevel()I

    move-result v0

    .line 1879
    .local v0, "mWifiLevel":I
    const-string v2, "FTM"

    sget-object v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ORO"

    sget-object v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1880
    :cond_0
    if-ne v1, v0, :cond_1

    .line 1881
    const-string v2, "[SMARTWIFI]"

    const-string/jumbo v3, "isWifiOnlyCase true"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiRssiLessOrEqualsHandoverThreshold(I)Z
    .locals 3
    .param p1, "rssi"    # I

    .prologue
    .line 249
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiRssiLessOrEqualsHandoverThreshold: received rssi is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handover threshold is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBeepWifiCallDisconnected()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1749
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "weak_wifi_signal_warning"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v6, v3, :cond_1

    .line 1751
    const/4 v1, 0x0

    .line 1753
    .local v1, "mToneGenerator":Landroid/media/ToneGenerator;
    :try_start_0
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getWeakWifiLevel()I

    move-result v3

    if-ne v6, v3, :cond_0

    .line 1754
    sget v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1755
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x0

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    .end local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    .local v2, "mToneGenerator":Landroid/media/ToneGenerator;
    const/16 v3, 0x18

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1758
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 1765
    .end local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    :cond_0
    if-eqz v1, :cond_1

    .line 1766
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1770
    .end local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    :cond_1
    :goto_0
    return-void

    .line 1761
    .restart local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v3, "[SMARTWIFI]"

    const-string/jumbo v4, "exception"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1765
    if-eqz v1, :cond_1

    .line 1766
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    goto :goto_0

    .line 1765
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 1766
    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    :cond_2
    throw v3

    .line 1765
    .end local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    goto :goto_2

    .line 1761
    .end local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "mToneGenerator":Landroid/media/ToneGenerator;
    .restart local v1    # "mToneGenerator":Landroid/media/ToneGenerator;
    goto :goto_1
.end method

.method private postCdmaRunnable(I)V
    .locals 3
    .param p1, "cdmaEcio"    # I

    .prologue
    .line 513
    if-eqz p1, :cond_0

    .line 514
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I

    if-le p1, v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnableFinal(Ljava/lang/Runnable;)V

    .line 516
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cdma Ecio is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCdmaTh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " posting mRunnableCdmaOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnableFinal(Ljava/lang/Runnable;)V

    .line 519
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cdma Ecio is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCdmaTh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " posting mRunnableCdmaOff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private postCdmaRunnableFinal(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 543
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    .line 547
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postLteRunnable(I)V
    .locals 3
    .param p1, "lteRsrp"    # I

    .prologue
    .line 489
    if-eqz p1, :cond_0

    .line 490
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I

    if-lt p1, v0, :cond_1

    .line 491
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSRP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLteThGood "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " posting mRunnableLteOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    if-ge p1, v0, :cond_0

    .line 494
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSRP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLteThLow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " posting mRunnableLteOff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private postLteRunnableFinal(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 525
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOn:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 530
    sput-boolean v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsLteAvailable:Z

    goto :goto_0

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsLteAvailable:Z

    .line 539
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 537
    :cond_2
    sput-boolean v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsLteAvailable:Z

    goto :goto_1
.end method

.method private postRunnableToEpdg(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1733
    if-nez p1, :cond_0

    .line 1734
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "postRunnableToEpdg: Runnable is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    :goto_0
    return-void

    .line 1737
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOn:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startSmartWifiTimer()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1738
    :cond_1
    const-string v0, "[SMARTWIFI]"

    const-string v1, "WIFI is good and SmartWifiTimer is running. wait until expired"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1740
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopSmartWifiTimer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1741
    const-string v0, "[SMARTWIFI]"

    const-string v1, "WIFI is bad and SmartWifiTimer was running. "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1744
    :cond_3
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting runnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postStartLteRunnable(I)V
    .locals 3
    .param p1, "lteRsrp"    # I

    .prologue
    .line 501
    if-eqz p1, :cond_0

    .line 502
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    if-lt p1, v0, :cond_1

    .line 503
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSRP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLteThLow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " posting mRunnableLteOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOn:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSRP is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLteThLow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " posting mRunnableLteOff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOff:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnableFinal(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized registerForCaptiveChange(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;)V
    .locals 4
    .param p1, "wifiLinkStatus"    # Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    .prologue
    .line 1626
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;->CAPTIVE_UNAUTHENTICATED:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiLinkStatus;

    if-ne p1, v0, :cond_0

    .line 1627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z

    .line 1632
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiCaptiveReceiver:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;

    if-nez v0, :cond_1

    .line 1633
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "registerForCaptiveChange: registering for captive not login"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiCaptiveReceiver:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;

    .line 1636
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiCaptiveReceiver:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.intent.action.WIFI_CAPTIVE_NOT_LOGIN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    :cond_1
    monitor-exit p0

    return-void

    .line 1626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCdmaThreshold(I)V
    .locals 3
    .param p1, "cdmaTh"    # I

    .prologue
    .line 576
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 579
    :cond_0
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdmaTh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->clearReadings()V

    .line 581
    sput p1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I

    goto :goto_0
.end method

.method private declared-synchronized setRssiStrengthCheckerRunning(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 1893
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsPollingZone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    monitor-exit p0

    return-void

    .line 1893
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startImsDeRegister()V
    .locals 2

    .prologue
    .line 1799
    const-string v0, "[SMARTWIFI]"

    const-string v1, "ImsDeRegisterChecker started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgCommands;->postDeregister(Ljava/lang/String;I)V

    .line 1801
    return-void
.end method

.method private startProfilingTask(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "success"    # Ljava/lang/Runnable;
    .param p2, "failure"    # Ljava/lang/Runnable;

    .prologue
    .line 1573
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;

    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOn:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;Landroid/os/Handler;Lcom/sec/epdg/smartwifi/SmartWifiAdapter$ResultRunnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/concurrent/Callable;

    const/4 v2, 0x0

    new-instance v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StartProfilingCallable;

    invoke-direct {v3, p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StartProfilingCallable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1576
    return-void
.end method

.method private startRssiStrengthChecker()V
    .locals 2

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    if-nez v0, :cond_0

    .line 1860
    const-string v0, "[SMARTWIFI]"

    const-string v1, "RssiStrengthChecker started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    invoke-direct {v0, p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    .line 1862
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->start()Landroid/os/CountDownTimer;

    .line 1864
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setRssiStrengthCheckerRunning(Z)V

    .line 1865
    return-void
.end method

.method private startSmartWifiTimer()Z
    .locals 4

    .prologue
    .line 2026
    iget v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimerValue:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    if-nez v0, :cond_0

    .line 2028
    const-string v0, "[SMARTWIFI]"

    const-string v1, "SmartWifiTimer started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    new-instance v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    iget v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimerValue:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;J)V

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    .line 2032
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;->start()Landroid/os/CountDownTimer;

    .line 2033
    const/4 v0, 0x1

    .line 2035
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopRssiStrengthChecker()V
    .locals 2

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    if-eqz v0, :cond_0

    .line 1869
    const-string v0, "[SMARTWIFI]"

    const-string v1, "RssiStrengthChecker stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;->cancel()V

    .line 1871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRssiStrengthChecker:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$RssiStrengthChecker;

    .line 1873
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setRssiStrengthCheckerRunning(Z)V

    .line 1874
    return-void
.end method

.method private stopSmartWifiTimer()Z
    .locals 2

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    if-eqz v0, :cond_0

    .line 2040
    const-string v0, "[SMARTWIFI]"

    const-string v1, "SmartWifiTimer stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;->cancel()V

    .line 2043
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimer:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTimer;

    .line 2044
    const/4 v0, 0x1

    .line 2046
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized unregisterForCaptiveChange()V
    .locals 2

    .prologue
    .line 1617
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z

    .line 1618
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiCaptiveReceiver:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;

    if-eqz v0, :cond_0

    .line 1619
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "unregisterForCaptiveChange: unregister for captive not login"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiCaptiveReceiver:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1621
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiCaptiveReceiver:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiCaptiveListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    :cond_0
    monitor-exit p0

    return-void

    .line 1617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getCurrentWifiRssi(Landroid/content/Context;)I
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 273
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 275
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    return v1
.end method

.method public declared-synchronized getHandoverThresholdMet()Z
    .locals 3

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getHandoverThresholdMet: value is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandoverThresholdMet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandoverThresholdMet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSavedWifiRssiLevel()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getLastKnownReadingLevel()I
    invoke-static {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;)I

    move-result v0

    return v0
.end method

.method public isCallInProgress()Z
    .locals 1

    .prologue
    .line 332
    sget v0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isL2WHandoverProfilingRunning()Z
    .locals 3

    .prologue
    .line 599
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isL2WHandoverProfilingRunning: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mL2WHandoverProfilingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mL2WHandoverProfilingStarted:Z

    return v0
.end method

.method public isSmartCdmaRunning()Z
    .locals 1

    .prologue
    .line 592
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    .line 593
    const/4 v0, 0x0

    .line 595
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z

    goto :goto_0
.end method

.method public isSmartLteRunning()Z
    .locals 1

    .prologue
    .line 585
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-nez v0, :cond_0

    .line 586
    const/4 v0, 0x0

    .line 588
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z

    goto :goto_0
.end method

.method public isSmartWifiRunning()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    return v0
.end method

.method public isWifiTolteHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "success"    # Ljava/lang/Runnable;
    .param p3, "failure"    # Ljava/lang/Runnable;

    .prologue
    .line 1526
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    if-ne v0, v1, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiToLteRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1529
    :cond_0
    return-void
.end method

.method public islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "success"    # Ljava/lang/Runnable;
    .param p3, "failure"    # Ljava/lang/Runnable;

    .prologue
    .line 1534
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    if-ne v0, v1, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$LteToWifiRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1537
    :cond_0
    return-void
.end method

.method public pollAndGetWifiRssi()V
    .locals 5

    .prologue
    .line 1897
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1898
    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1900
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_1

    .line 1901
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1902
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 1903
    .local v0, "rssi":I
    const-string v2, "[SMARTWIFI]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pollAndGetWifiRssi: rssi is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->handleWifiRssiIntent(I)V

    .line 1914
    .end local v0    # "rssi":I
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-void

    .line 1906
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v2, "[SMARTWIFI]"

    const-string/jumbo v3, "pollAndGetWifiRssi: connection info is null"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1909
    :cond_1
    const-string v2, "[SMARTWIFI]"

    const-string v3, "Unable to get wifi manager context"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1912
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    const-string v2, "[SMARTWIFI]"

    const-string/jumbo v3, "pollAndGetWifiRssi: wifi is not connected"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public printProfilingState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLteThGood:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteThLow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCdmaTh:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCdmaProfilingStarted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Last reported Cdma Ec/Io : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownCdmaDb()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteProfilingStarted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Last reported Lte RSRP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownLteRSRP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiGoodDbValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiBadDbValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Current Wifi RSSI Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Last Known Wifi RSSI Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getLastKnownReadingLevel()I
    invoke-static {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setHandoverThresholdMet(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    const-string v0, "[SMARTWIFI]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandoverThresholdMet: set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iput-boolean p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mHandoverThresholdMet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLteThreshold(II)V
    .locals 4
    .param p1, "lteThGood"    # I
    .param p2, "lteThLow"    # I

    .prologue
    .line 556
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-nez v1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lteThGood: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lteThLow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I

    if-ne v1, p1, :cond_2

    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    if-eq v1, p2, :cond_0

    .line 562
    :cond_2
    sput p1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I

    .line 563
    sput p2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    .line 564
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownLteRSRP()I

    move-result v0

    .line 566
    .local v0, "lastKnownRSRP":I
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lastKnownRSRP is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_3

    .line 568
    const/16 v0, -0x8c

    .line 570
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postLteRunnable(I)V

    goto :goto_0
.end method

.method public setWifiThreshold(III)V
    .locals 0
    .param p1, "goodWifiThreshold"    # I
    .param p2, "badWifiThreshold"    # I
    .param p3, "handoverWifiThreshold"    # I

    .prologue
    .line 397
    sput p1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    .line 398
    sput p2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    .line 399
    sput p3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiHandoverDbValue:I

    .line 400
    return-void
.end method

.method public setWifiThresholdWifiOnlyCase(II)V
    .locals 0
    .param p1, "goodWifiThreshold"    # I
    .param p2, "badWifiThreshold"    # I

    .prologue
    .line 403
    sput p1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbWifiOnlyValue:I

    .line 404
    sput p2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbWifiOnlyValue:I

    .line 405
    return-void
.end method

.method public startCdmaProfiling()V
    .locals 4

    .prologue
    .line 439
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    const-string v1, "[SMARTWIFI]"

    const-string/jumbo v2, "startCdmaProfiling called"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    const-string v1, "[SMARTWIFI]"

    const-string v2, "Airplane mode is enabled, dont start cdma Profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_2
    iget-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z

    if-nez v1, :cond_0

    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaTh:I

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownCdmaDb()I

    move-result v0

    .line 450
    .local v0, "lastKnownEcio":I
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cdma profiling started and lastKnownEcio is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    if-lez v0, :cond_3

    .line 452
    const-string v1, "[SMARTWIFI]"

    const-string v2, "Ril indicated the wrong Ec/Io value, set it to default"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/16 v0, -0x10

    .line 455
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postCdmaRunnable(I)V

    .line 456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z

    goto :goto_0
.end method

.method public startL2WHandoverProfiling()V
    .locals 2

    .prologue
    .line 473
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "startL2WHandoverProfiling called"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mL2WHandoverProfilingStarted:Z

    if-nez v0, :cond_0

    .line 475
    const-string v0, "[SMARTWIFI]"

    const-string v1, "L2W handover profiling started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mL2WHandoverProfilingStarted:Z

    .line 478
    :cond_0
    return-void
.end method

.method public startLteProfiling()V
    .locals 4

    .prologue
    .line 408
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    const-string v1, "[SMARTWIFI]"

    const-string/jumbo v2, "startLteProfiling called"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z

    if-nez v1, :cond_0

    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThGood:I

    if-eqz v1, :cond_0

    sget v1, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteThLow:I

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->getLastKnownLteRSRP()I

    move-result v0

    .line 416
    .local v0, "lastKnownRSRP":I
    const-string v1, "[SMARTWIFI]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lte profiling started and lastKnownRSRP is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    .line 418
    const/16 v0, -0x8c

    .line 420
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->postStartLteRunnable(I)V

    .line 421
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z

    goto :goto_0
.end method

.method public startProfiling(Ljava/net/InetAddress;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;IIIIIIIIII)V
    .locals 7
    .param p1, "addrToReach"    # Ljava/net/InetAddress;
    .param p2, "wifiOn"    # Ljava/lang/Runnable;
    .param p3, "wifiOff"    # Ljava/lang/Runnable;
    .param p4, "lteOn"    # Ljava/lang/Runnable;
    .param p5, "lteOff"    # Ljava/lang/Runnable;
    .param p6, "cdmaOn"    # Ljava/lang/Runnable;
    .param p7, "cdmaOff"    # Ljava/lang/Runnable;
    .param p8, "l2wHandoverOn"    # Ljava/lang/Runnable;
    .param p9, "wifiRssiIntentReceived"    # Ljava/lang/Runnable;
    .param p10, "pollingRssiOn"    # Ljava/lang/Runnable;
    .param p11, "pollingRssiOff"    # Ljava/lang/Runnable;
    .param p12, "wifiGoodDbValue"    # I
    .param p13, "wifiBadDbValue"    # I
    .param p14, "wifiHandoverDbValue"    # I
    .param p15, "wifiGoodDbWifiOnlyValue"    # I
    .param p16, "wifiBadDbWifiOnlyValue"    # I
    .param p17, "lteThGood"    # I
    .param p18, "lteThLow"    # I
    .param p19, "cdmaRssi"    # I
    .param p20, "pktLossPercent"    # I
    .param p21, "smartWifiTimer"    # I

    .prologue
    .line 638
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startProfiling called: wifiGoodDbValue is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p12

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wifiBadDbValue is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p13

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wifiGoodDbWifiOnlyValue is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p15

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wifiBadDbWifiOnlyValue is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-boolean v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    if-nez v3, :cond_2

    .line 643
    const-string v3, "[SMARTWIFI]"

    const-string v4, "Profiling started"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    .line 645
    iput-object p1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mAddrToReach:Ljava/net/InetAddress;

    .line 646
    iput-object p2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOn:Ljava/lang/Runnable;

    .line 647
    iput-object p3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;

    .line 648
    iput-object p4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOn:Ljava/lang/Runnable;

    .line 649
    iput-object p5, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOff:Ljava/lang/Runnable;

    .line 650
    iput-object p6, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOn:Ljava/lang/Runnable;

    .line 651
    iput-object p7, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableCdmaOff:Ljava/lang/Runnable;

    .line 652
    iput-object p8, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableL2WHandoverOn:Ljava/lang/Runnable;

    .line 653
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiRssiIntentReceived:Ljava/lang/Runnable;

    .line 654
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnablePollingRssiOn:Ljava/lang/Runnable;

    .line 655
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnablePollingRssiOff:Ljava/lang/Runnable;

    .line 656
    move/from16 v0, p12

    move/from16 v1, p13

    move/from16 v2, p14

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setWifiThreshold(III)V

    .line 657
    move/from16 v0, p15

    move/from16 v1, p16

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setWifiThresholdWifiOnlyCase(II)V

    .line 658
    sput p20, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPktLossLevel:I

    .line 659
    move/from16 v0, p21

    iput v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimerValue:I

    .line 660
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimerValue:I

    .line 661
    sget v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    sget v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiBadDbValue:I

    invoke-static {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getWeakWifiRssiDb(II)I

    move-result v3

    sput v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiDb:I

    .line 662
    sget v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiGoodDbValue:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollingRssi:I

    .line 663
    const/4 v3, 0x0

    sput v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLastReportedRssi:I

    .line 664
    sget v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiDb:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v3

    sput v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiLevel:I

    .line 665
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    sget v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiLevel:I

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->setWeakWifiLevel(I)V

    .line 666
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    sget v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiLevel:I

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->setDefaultWeakWifiLevel(I)V

    .line 667
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    move/from16 v0, p12

    move/from16 v1, p13

    invoke-virtual {v3, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->setDefaultWifiDbValue(II)V

    .line 668
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Threshold is set at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiDb:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Db and level is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z

    .line 671
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCaptivePortalAuthenticated(Z)Z

    .line 672
    move/from16 v0, p17

    move/from16 v1, p18

    invoke-virtual {p0, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    .line 673
    move/from16 v0, p19

    invoke-direct {p0, v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setCdmaThreshold(I)V

    .line 676
    const-string v3, "FTM"

    sget-object v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ORO"

    sget-object v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 677
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->calculateWeakWifiLevelAndRssiDb()V

    .line 678
    const-string v3, "[SMARTWIFI]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startProfiling sync current call state, mIsCallForBeep : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_1
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTelListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelListener;

    const/16 v5, 0x161

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 686
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 688
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StartProfilingRunnable;

    invoke-direct {v4, p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StartProfilingRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    iget-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    sput v3, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I

    .line 691
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isCdmaProfilingRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 692
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startCdmaProfiling()V

    .line 696
    :cond_2
    return-void
.end method

.method public stopCdmaProfiling()V
    .locals 2

    .prologue
    .line 462
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "stopCdmaProfiling called"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 467
    const-string v0, "[SMARTWIFI]"

    const-string v1, "Cdma Profiling stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mCdmaProfilingStarted:Z

    goto :goto_0
.end method

.method public stopL2WHandoverProfiling()V
    .locals 2

    .prologue
    .line 481
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "stopL2WHandoverProfiling called"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mL2WHandoverProfilingStarted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 483
    const-string v0, "[SMARTWIFI]"

    const-string v1, "L2W handover profiling stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mL2WHandoverProfilingStarted:Z

    .line 486
    :cond_0
    return-void
.end method

.method public stopLteProfiling()V
    .locals 2

    .prologue
    .line 427
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-nez v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    const-string v0, "[SMARTWIFI]"

    const-string/jumbo v1, "stopLteProfiling called"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 432
    const-string v0, "[SMARTWIFI]"

    const-string v1, "Lte Profiling stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mLteProfilingStarted:Z

    goto :goto_0
.end method

.method public stopProfiling()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 703
    const-string v1, "[SMARTWIFI]"

    const-string/jumbo v2, "stopProfiling called"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-boolean v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 705
    const-string v1, "[SMARTWIFI]"

    const-string v2, "Profiling stopped"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iput-boolean v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    .line 707
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOn:Ljava/lang/Runnable;

    .line 708
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiOff:Ljava/lang/Runnable;

    .line 709
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOn:Ljava/lang/Runnable;

    .line 710
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableLteOff:Ljava/lang/Runnable;

    .line 711
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableL2WHandoverOn:Ljava/lang/Runnable;

    .line 712
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnableWifiRssiIntentReceived:Ljava/lang/Runnable;

    .line 713
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnablePollingRssiOn:Ljava/lang/Runnable;

    .line 714
    iput-object v3, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRunnablePollingRssiOff:Ljava/lang/Runnable;

    .line 715
    iput-boolean v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPollCaptive:Z

    .line 716
    iput-boolean v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mMetHoThreshold:Z

    .line 717
    iput v4, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTimerValue:I

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiRSSIListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiRSSIListener;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :goto_0
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_WIFI_RSSI_POLLING:Z

    if-eqz v1, :cond_0

    .line 729
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopRssiStrengthChecker()V

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiTelListener:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SmartWifiTelListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 734
    sput v4, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mIsCallInProgress:I

    .line 735
    invoke-direct {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->unregisterForCaptiveChange()V

    .line 736
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 737
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mSmartWifiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StopProfilingRunnable;

    invoke-direct {v2, p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$StopProfilingRunnable;-><init>(Lcom/sec/epdg/smartwifi/SmartWifiAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    iget-object v1, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mRadioSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$SignalStrengthHistory;->clearReadings()V

    .line 739
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->setIsCsAvailable(Z)V

    .line 740
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopCdmaProfiling()V

    .line 741
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopL2WHandoverProfiling()V

    .line 745
    :cond_1
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "[SMARTWIFI]"

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmartWifiAdapter State"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1541
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWeakWifiLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getWeakWifiLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1543
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last known RSSI level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWifiSignalStrengthHistory:Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;

    # invokes: Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->getLastKnownReadingLevel()I
    invoke-static {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;->access$300(Lcom/sec/epdg/smartwifi/SmartWifiAdapter$WifiSignalStrengthHistory;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Wifi RSSI level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPktLossLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mPktLossLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProfilingStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mProfilingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWeakWifiDb : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mWeakWifiDb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAddrToReach : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->mAddrToReach:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    invoke-virtual {p0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1557
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
