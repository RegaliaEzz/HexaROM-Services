.class public Lcom/sec/epdg/EpdgService;
.super Lcom/sec/epdg/IEpdgManager$Stub;
.source "EpdgService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldReadableFiles"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/EpdgService$WfcProfileTask;,
        Lcom/sec/epdg/EpdgService$DatabaseAccessTask;,
        Lcom/sec/epdg/EpdgService$MapconDatabaseTask;,
        Lcom/sec/epdg/EpdgService$ServiceStatusChangedRunnable;,
        Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;,
        Lcom/sec/epdg/EpdgService$WifiCallHandover;,
        Lcom/sec/epdg/EpdgService$WifiCallEnabler;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;,
        Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;,
        Lcom/sec/epdg/EpdgService$HORunnable;,
        Lcom/sec/epdg/EpdgService$EpdgHandler;,
        Lcom/sec/epdg/EpdgService$EpdgDelayedInit;,
        Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;,
        Lcom/sec/epdg/EpdgService$EpdgSettingObserver;,
        Lcom/sec/epdg/EpdgService$EpdgContentObserver;,
        Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;,
        Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;,
        Lcom/sec/epdg/EpdgService$HoDelayStatus;,
        Lcom/sec/epdg/EpdgService$PolicyUpdateReason;,
        Lcom/sec/epdg/EpdgService$VoWifiStatus;,
        Lcom/sec/epdg/EpdgService$IpType;,
        Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;,
        Lcom/sec/epdg/EpdgService$DnsRetryReason;
    }
.end annotation


# static fields
.field private static final ACTION_IMS_ON_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field private static final EVENT_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field public static final EXTRA_APN_NAME:Ljava/lang/String; = "apn_name"

.field public static final EXTRA_CDMAAVAILABILITY:Ljava/lang/String; = "cdmaAvailability"

.field public static final EXTRA_IKEERROR:Ljava/lang/String; = "ikeerror"

.field private static final EXTRA_IPSECEVENT:Ljava/lang/String; = "ipsecevent"

.field private static final EXTRA_NETWORKTYPE:Ljava/lang/String; = "networkType"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_RETRY_REQUIRED:Ljava/lang/String; = "retry_required"

.field public static final EXTRA_SSID:Ljava/lang/String; = "ssid"

.field private static final HANDOFF_TAG:Ljava/lang/String; = "[HANDOFF]"

.field private static final INCOMING_IPSEC:Ljava/lang/String; = "[IPSEC->EPDGService]"

.field private static final INCOMING_RIL:Ljava/lang/String; = "[RIL->EPDGService]"

.field private static final INTENT_ADB_IP_CALL_SETTING_CHANGE:Ljava/lang/String; = "com.sec.commands.ipcall.action_ip_setting_change"

.field private static final INTENT_ADB_IP_CALL_SETTING_NAME:Ljava/lang/String; = "com.sec.commands.ipcall.setting"

.field private static final INTENT_ADB_IP_CALL_SETTING_STATE:Ljava/lang/String; = "com.sec.commands.ipcall.state"

.field private static final INTENT_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final INTENT_DEFAULT_DATA_SUB_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final INTENT_EMERGENCY_CALLBACK_MODE_CHANGED_END:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

.field static final INTENT_EPDG_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_AVAILABLE"

.field private static final INTENT_EPDG_DEREGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_DEREGISTER"

.field static final INTENT_EPDG_NOT_AVAILABLE:Ljava/lang/String; = "com.sec.epdg.EPDG_NOTAVAILABLE"

.field private static final INTENT_EPDG_REGISTER_EVENT:Ljava/lang/String; = "com.sec.epdgservice.EPDG_REGISTER"

.field static final INTENT_INTERNET_KEEP_ALIVE:Ljava/lang/String; = "com.sec.epdg.INTERNET_KEEP_ALIVE"

.field public static final INTENT_IPSEC_CONNECTION_EVENT:Ljava/lang/String; = "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_ADMIN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_APP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_EPDN:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_IMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_INTERNET:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_MMS:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

.field private static final INTENT_IPSEC_EVENT_REG_LISTENER_XCAP:Ljava/lang/String; = "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

.field private static final INTENT_ISIM_LOADED:Ljava/lang/String; = "android.intent.action.ISIM_LOADED"

.field public static final INTENT_NATT_KEEP_ALIVE_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.NATT_KEEP_ALIVE_TIMER_EXPIRED"

.field public static final INTENT_PERIODIC_DPD_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.PERIODIC_DPD_TIMER_EXPIRED"

.field public static final INTENT_RETRY_TIMER_EXPIRED:Ljava/lang/String; = "com.sec.epdg.RETRY_TIMER_EXPIRED"

.field private static final INTENT_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final INTENT_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field private static final INTENT_SIM_STATE:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final INTENT_WFC_SWITCH_PROFILE:Ljava/lang/String; = "action_wfc_switch_profile_broadcast"

.field private static final INTENT_WIFI_CALL_ENABLE:Ljava/lang/String; = "action_wifi_call_enable_broadcast"

.field private static final INTENT_WIFI_LINK_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_FQDN_RETRY_COUNT:I = 0x5

.field private static final NETWORK_PING_PONG_DELAY:I = 0x3e8

.field static final NOTIFY_L2W_REGISTRANT:I = 0x1

.field static final NOTIFY_W2L_REGISTRANT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[EPDGService]"

.field private static final VIDEO_SETTING:I = 0x1

.field private static final VOICECALL_TYPE_CS:I = 0x1

.field private static final VOICECALL_TYPE_KEY:Ljava/lang/String; = "voicecall_type"

.field private static final VOICECALL_TYPE_VOLTE:I = 0x0

.field private static final VOLTE_SETTING:I = 0x0

.field private static final VOWIFI_MDN_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field private static final WIFI_CALL_ENABLE_DEFAULT_VALUE:I = 0x0

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_IP_CONFIG_TIMER:I = 0xa

.field private static final WIFI_RSSI_DISABLE:I = -0x64

.field private static bIsSim2Ready:Z

.field private static bIsSimReady:Z

.field private static isNotRequiredTimer:Z

.field private static isOnDemandApnConnectionFailed:Z

.field private static mActiveRat:I

.field private static mCellularAvailable:Z

.field private static mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mConnMgr:Landroid/net/ConnectivityManager;

.field private static mContext:Landroid/content/Context;

.field private static mCopyLogCnt:I

.field private static mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

.field private static mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mDefaultEnableEpdg:I

.field private static mDefaultSubID:I

.field private static mDeregiForHOFail:Z

.field private static mDisabledByNoRan:Z

.field private static mDisconnectRequired:Z

.field private static mEnableEpdg:Z

.field private static mEnableEpdgHandOver:Z

.field private static mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

.field private static mEpdgHandler:Landroid/os/Handler;

.field private static mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

.field private static mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

.field private static mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

.field private static mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

.field private static mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

.field private static mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static final mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

.field private static mIsAirplaneMode:Z

.field private static mIsCsAvailable:Z

.field private static mIsEpdgInitialized:Z

.field private static mIsIsimReady:Z

.field private static mIsLteAvailable:Z

.field private static mIsRequiredToSendCdmaIndication:Z

.field private static mIsRssiDisabledForProfiling:Z

.field private static mIsVoPSEnabled:Z

.field private static mIsWifiRssiInPollingZone:Z

.field private static mL2WAfterEpdgStatusQuery:Z

.field private static mPreviousE911CallCount:I

.field private static mPreviousNonE911CallCount:I

.field private static mRoaming:Z

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

.field private static mSsacVoiceEnabled:Z

.field private static mW2LAfterEpdgStatusQuery:Z

.field private static mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

.field private static mWifiCallingPrefState:I

.field private static mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;


# instance fields
.field public final CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

.field public final CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

.field private ROAMING_MODE_SETTING:Ljava/lang/String;

.field private final W2LHANDOFFAILURE:Ljava/lang/String;

.field private anArray:[I

.field private isCpThresholdTurnOn:Z

.field private final mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mBlackListCountry:Ljava/lang/String;

.field private final mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mCdmaOff:Ljava/lang/Runnable;

.field private final mCdmaOn:Ljava/lang/Runnable;

.field private mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

.field private mCurrentNetwork:Landroid/net/Network;

.field private mCurrentSim2Imsi:Ljava/lang/String;

.field private mCurrentSimImsi:Ljava/lang/String;

.field private final mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mDnsPinger:Lcom/sec/epdg/DnsPinger;

.field private final mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

.field private mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

.field private mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

.field private mFqdnRetryCount:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

.field private mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

.field private mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

.field private final mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

.field private mInternetIntfName:Ljava/lang/String;

.field private mInternetKeepAlive:Landroid/content/Intent;

.field private final mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mIsScreenOn:Z

.field private mKeepAliveExpired:Z

.field private mKeepAliveRunning:Z

.field private final mL2WHandoverProfilingOn:Ljava/lang/Runnable;

.field private mLastSsid:Ljava/lang/String;

.field private final mLteOff:Ljava/lang/Runnable;

.field private final mLteOn:Ljava/lang/Runnable;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPingerHandlerThread:Landroid/os/HandlerThread;

.field private final mPollingRssiOff:Ljava/lang/Runnable;

.field private final mPollingRssiOn:Ljava/lang/Runnable;

.field private final mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mPrevSim2Imsi:Ljava/lang/String;

.field private mPrevSimImsi:Ljava/lang/String;

.field private mRegistedNetworkStateChangeReceiver:Z

.field private mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

.field private mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

.field private final mRoamingUri:Landroid/net/Uri;

.field private final mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private final mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private final mWifiCallingOff:Ljava/lang/Runnable;

.field private final mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

.field private mWifiMgrState:I

.field private final mWifiOff:Ljava/lang/Runnable;

.field private final mWifiOn:Ljava/lang/Runnable;

.field private final mWifiOnUri:Landroid/net/Uri;

.field private final mWifiRssiIntentReceived:Ljava/lang/Runnable;

.field private final mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    .line 163
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z

    .line 165
    sput v1, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I

    .line 167
    sput v1, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I

    .line 169
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    .line 171
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    .line 269
    sget v0, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    new-array v0, v0, [Lcom/sec/epdg/IPSecDataConnSM;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .line 271
    sput v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .line 272
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    .line 273
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    .line 274
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    .line 281
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    .line 282
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z

    .line 283
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 284
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    .line 285
    sput v1, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    .line 289
    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    .line 290
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    .line 294
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    .line 299
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    .line 300
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 305
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    .line 306
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    .line 307
    sput v1, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    .line 308
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    .line 309
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z

    .line 326
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    .line 328
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    .line 355
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 356
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 598
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsLteAvailable:Z

    .line 661
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z

    .line 984
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3058
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 3891
    const/4 v0, -0x1

    sput v0, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    .line 3914
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4118
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 5212
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5566
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2183
    invoke-direct {p0}, Lcom/sec/epdg/IEpdgManager$Stub;-><init>()V

    .line 159
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    .line 191
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 244
    const-string/jumbo v0, "wifi_call_when_roaming"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    .line 245
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;

    .line 246
    const-string/jumbo v0, "wifi_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    .line 280
    const-string v0, "N/w Issue: W2L handoff failure"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->W2LHANDOFFAILURE:Ljava/lang/String;

    .line 286
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    .line 287
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    .line 292
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 296
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z

    .line 297
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z

    .line 298
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z

    .line 301
    const-string v0, "content://iwlansettings/todos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    .line 302
    const-string v0, "content://iwlansettings/todos/epdgsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    .line 303
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    .line 310
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 311
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 318
    iput v2, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 324
    iput-boolean v2, p0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    .line 1162
    new-instance v0, Lcom/sec/epdg/EpdgService$1;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$1;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1174
    new-instance v0, Lcom/sec/epdg/EpdgService$2;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$2;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1187
    new-instance v0, Lcom/sec/epdg/EpdgService$3;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$3;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 1204
    new-instance v0, Lcom/sec/epdg/EpdgService$4;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$4;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    .line 1225
    new-instance v0, Lcom/sec/epdg/EpdgService$5;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$5;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1237
    new-instance v0, Lcom/sec/epdg/EpdgService$6;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$6;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1269
    new-instance v0, Lcom/sec/epdg/EpdgService$7;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$7;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1319
    new-instance v0, Lcom/sec/epdg/EpdgService$8;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$8;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1333
    new-instance v0, Lcom/sec/epdg/EpdgService$9;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$9;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1345
    new-instance v0, Lcom/sec/epdg/EpdgService$10;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$10;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1369
    new-instance v0, Lcom/sec/epdg/EpdgService$11;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$11;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1392
    new-instance v0, Lcom/sec/epdg/EpdgService$12;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$12;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiLinkChangedIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1419
    new-instance v0, Lcom/sec/epdg/EpdgService$13;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$13;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1450
    new-instance v0, Lcom/sec/epdg/EpdgService$14;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$14;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1466
    new-instance v0, Lcom/sec/epdg/EpdgService$15;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$15;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1508
    new-instance v0, Lcom/sec/epdg/EpdgService$16;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$16;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1548
    new-instance v0, Lcom/sec/epdg/EpdgService$17;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$17;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1568
    new-instance v0, Lcom/sec/epdg/EpdgService$18;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$18;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 1801
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    .line 1837
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    .line 1879
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    .line 3885
    iput v2, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 4119
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    .line 4120
    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    .line 4233
    new-instance v0, Lcom/sec/epdg/EpdgService$19;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$19;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mBootCompletedReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 4245
    new-instance v0, Lcom/sec/epdg/EpdgService$20;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$20;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    .line 4613
    new-instance v0, Lcom/sec/epdg/EpdgService$21;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$21;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    .line 4624
    new-instance v0, Lcom/sec/epdg/EpdgService$22;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$22;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiRssiIntentReceived:Ljava/lang/Runnable;

    .line 4635
    new-instance v0, Lcom/sec/epdg/EpdgService$23;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$23;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPollingRssiOn:Ljava/lang/Runnable;

    .line 4643
    new-instance v0, Lcom/sec/epdg/EpdgService$24;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$24;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPollingRssiOff:Ljava/lang/Runnable;

    .line 4651
    new-instance v0, Lcom/sec/epdg/EpdgService$25;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$25;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    .line 4680
    new-instance v0, Lcom/sec/epdg/EpdgService$26;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$26;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    .line 4784
    new-instance v0, Lcom/sec/epdg/EpdgService$27;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$27;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    .line 4793
    new-instance v0, Lcom/sec/epdg/EpdgService$28;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$28;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    .line 4813
    new-instance v0, Lcom/sec/epdg/EpdgService$29;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$29;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCdmaOn:Ljava/lang/Runnable;

    .line 4842
    new-instance v0, Lcom/sec/epdg/EpdgService$30;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$30;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCdmaOff:Ljava/lang/Runnable;

    .line 4921
    new-instance v0, Lcom/sec/epdg/EpdgService$31;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$31;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    .line 4943
    new-instance v0, Lcom/sec/epdg/EpdgService$32;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$32;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    .line 5452
    new-instance v0, Lcom/sec/epdg/EpdgService$33;

    invoke-direct {v0, p0}, Lcom/sec/epdg/EpdgService$33;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2184
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->criticalInit(Landroid/content/Context;)V

    .line 2185
    return-void
.end method

.method private declared-synchronized MoveToBasedOnSettings(I)V
    .locals 3
    .param p1, "voLte"    # I

    .prologue
    .line 2877
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnSettings : volte or vops("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") 1x available ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    sget-object v0, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 2881
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2883
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2884
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2885
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2900
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2889
    :cond_1
    :try_start_1
    const-string v0, "[EPDGService]"

    const-string v1, "Volte Off or vops disabled, Cdma scanning will start. Start the TEPDG1XSCANNING timer"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2892
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2894
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 2895
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2896
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2877
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized MoveToBasedOnVopsOrSsac(I)V
    .locals 3
    .param p1, "networkSetting"    # I

    .prologue
    .line 2903
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoveToBasedOnVopsOrSsac :  VoWifi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") VOPS ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") SSAC Voice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2908
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2909
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2910
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2917
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2913
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2914
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2903
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ReadEpdgSettingFromIMS()V
    .locals 7

    .prologue
    .line 1715
    const-string v4, "[EPDGService]"

    const-string v5, "ReadEpdgSettingFromIMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    const-string v2, ""

    .line 1717
    .local v2, "strEpgdEnabled":Ljava/lang/String;
    const-string v3, ""

    .line 1719
    .local v3, "strEpgdHandoverEnabled":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 1720
    .local v0, "reqField":[I
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v4, :cond_0

    .line 1721
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    invoke-interface {v4, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getIMSSettingValues([I)Landroid/util/SparseArray;

    move-result-object v1

    .line 1722
    .local v1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1723
    const/16 v4, 0x7a

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "strEpgdEnabled":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1724
    .restart local v2    # "strEpgdEnabled":Ljava/lang/String;
    const/16 v4, 0x7b

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1728
    .end local v1    # "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v3    # "strEpgdHandoverEnabled":Ljava/lang/String;
    :cond_0
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strEpgdEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "strEpgdHandoverEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 1731
    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v4, :cond_1

    .line 1732
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    .line 1733
    const-string/jumbo v5, "ril.epdg.handover.enable"

    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mEnableEpdgHandOver:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "true"

    :goto_0
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    :cond_1
    return-void

    .line 1733
    :cond_2
    const-string/jumbo v4, "false"

    goto :goto_0

    .line 1719
    nop

    :array_0
    .array-data 4
        0x7a
        0x7b
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleImsStateChange(I)V

    return-void
.end method

.method static synthetic access$10000(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onNetworkStatusChanged()V

    return-void
.end method

.method static synthetic access$10100(Lcom/sec/epdg/EpdgService;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onServiceStatusChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mNetworkStatusChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onDbAccessCompleted()V

    return-void
.end method

.method static synthetic access$10400()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/sec/epdg/smartwifi/SmartWifiAdapter;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/epdg/EpdgService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleDefaultSubChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onInternetKeepAliveTimerExpiry()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setIsScreenOn(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    return-void
.end method

.method static synthetic access$2200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300()Lcom/sec/epdg/EpdgTimers;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/epdg/EpdgService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    return-void
.end method

.method static synthetic access$2600()Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/sec/epdg/EpdgService$WfcProfileTask;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .prologue
    .line 133
    sput-object p0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/EpdgService;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendWifiDelayRequest(Z)V

    return-void
.end method

.method static synthetic access$3300()[Lcom/sec/epdg/IPSecDataConnSM;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isValidAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500()Lcom/sec/epdg/EpdgService$IpType;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startTimerOrPerformDns(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/epdg/EpdgService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->initEpdgService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/epdg/EpdgService;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/os/Message;
    .param p2, "x2"    # Landroid/os/Message;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/sec/epdg/EpdgService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->sendIpsecConnResultToTestApp(II)V

    return-void
.end method

.method static synthetic access$4100()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return v0
.end method

.method static synthetic access$4102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 133
    sput p0, Lcom/sec/epdg/EpdgService;->mCopyLogCnt:I

    return p0
.end method

.method static synthetic access$4200()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$4202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mW2LAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->movePdnFromWifi()V

    return-void
.end method

.method static synthetic access$4400()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    return v0
.end method

.method static synthetic access$4500()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return v0
.end method

.method static synthetic access$4502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    return p0
.end method

.method static synthetic access$4600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/epdg/EpdgService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/epdg/EpdgService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    return-object v0
.end method

.method static synthetic access$500()Lcom/sec/epdg/EpdgRilSharedData;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/epdg/EpdgService;)Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->notifyW2LHandoverResult(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleEpdgSettingsReadEvent()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->handleMapconChange()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    return-void
.end method

.method static synthetic access$5800()Lcom/sec/epdg/EpdgService$IpType;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startPeriodicDpdIfNecessary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500()V
    .locals 0

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->stopWifiRssiIntentDelayTimerIfRequired()V

    return-void
.end method

.method static synthetic access$6600(Lcom/sec/epdg/EpdgService;ZZZZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 133
    invoke-direct/range {p0 .. p5}, Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnSettings(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVolteProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$6900(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVoWifiProvisioningStateChanged(I)V

    return-void
.end method

.method static synthetic access$700()Lcom/sec/epdg/EpdgContentReader;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object v0
.end method

.method static synthetic access$7000()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    return v0
.end method

.method static synthetic access$7002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    return p0
.end method

.method static synthetic access$702(Lcom/sec/epdg/EpdgContentReader;)Lcom/sec/epdg/EpdgContentReader;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgContentReader;

    .prologue
    .line 133
    sput-object p0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    return-object p0
.end method

.method static synthetic access$7100()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    return-object v0
.end method

.method static synthetic access$7200()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    return v0
.end method

.method static synthetic access$7202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    return p0
.end method

.method static synthetic access$7300(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V

    return-void
.end method

.method static synthetic access$7400()Lcom/sec/epdg/EpdgService$HoDelayStatus;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    return-void
.end method

.method static synthetic access$7800()Z
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsSsacVoiceEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/epdg/EpdgService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # J

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    return-void
.end method

.method static synthetic access$8000(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->changeApBlocking(Z)V

    return-void
.end method

.method static synthetic access$8200(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->initAfterimsReady()V

    return-void
.end method

.method static synthetic access$8300(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/sec/epdg/EpdgService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 133
    sput p0, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    return p0
.end method

.method static synthetic access$8600(Lcom/sec/epdg/EpdgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/EpdgService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->handleSimStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/sec/epdg/EpdgService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget v0, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return v0
.end method

.method static synthetic access$9102(Lcom/sec/epdg/EpdgService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    return p1
.end method

.method static synthetic access$9200()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/epdg/EpdgService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9400()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9500(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 133
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->setIsWifiRssiInPollingZone(Z)V

    return-void
.end method

.method static synthetic access$9600(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiGoodEnough()V

    return-void
.end method

.method static synthetic access$9700(Lcom/sec/epdg/EpdgService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startTimersIfNeeded()V

    return-void
.end method

.method static synthetic access$9800(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V

    return-void
.end method

.method static synthetic access$9900(Lcom/sec/epdg/EpdgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/EpdgService;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    return-void
.end method

.method private changeApBlocking(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4172
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    .line 4195
    :goto_0
    return-void

    .line 4175
    :cond_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wifiConnected  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocking State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4177
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4178
    if-eqz p1, :cond_2

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v0, v1, :cond_2

    .line 4179
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4180
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4181
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    .line 4194
    :cond_1
    :goto_1
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApBlocking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4183
    :cond_2
    if-nez p1, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v0, v1, :cond_1

    .line 4184
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->AP_NOT_ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4185
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 4187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->sendEpdgDeregisterBroadcastIfRequired(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4188
    const-string v0, "[EPDGService]"

    const-string v1, "AP blocked - do not need de-register "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4189
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4190
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto :goto_1
.end method

.method private checkAndUpdateWifiAvailability()V
    .locals 3

    .prologue
    .line 3009
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3010
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_1

    .line 3011
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    if-nez v0, :cond_0

    .line 3012
    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 3014
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3020
    :cond_0
    :goto_0
    return-void

    .line 3017
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    goto :goto_0
.end method

.method private checkVopsStatus(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x1

    .line 5439
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: service state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5440
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getVoPS(Landroid/telephony/ServiceState;)I

    move-result v0

    .line 5441
    .local v0, "vops":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 5442
    const-string v2, "[EPDGService]"

    const-string v3, "checkVopsStatus: Inappropriate vops status, returning"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5450
    :cond_0
    :goto_0
    return-void

    .line 5445
    :cond_1
    if-ne v0, v1, :cond_2

    .line 5446
    .local v1, "vopsEnabled":Z
    :goto_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 5447
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkVopsStatus: Vops status is changed to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5448
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->onVopsStatusChanged(I)V

    goto :goto_0

    .line 5445
    .end local v1    # "vopsEnabled":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static copyVpnLog(I)V
    .locals 12
    .param p0, "num"    # I

    .prologue
    .line 3162
    const/4 v3, 0x0

    .line 3163
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 3164
    .local v6, "fout":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/log/vpnclientpm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3166
    .local v1, "dest":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/data/data/com.ipsec.service/vpnclientpm.txt"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3167
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v4, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3169
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_2
    new-array v0, v9, [B

    .line 3172
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    if-lez v8, :cond_2

    .line 3173
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 3176
    .end local v0    # "buffer":[B
    .end local v8    # "len":I
    :catch_0
    move-exception v5

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3177
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .local v5, "fnfe":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v9, "[EPDGService]"

    const-string v10, "FileNotFoundException "

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3181
    if-eqz v3, :cond_0

    .line 3183
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 3188
    :cond_0
    :goto_2
    if-eqz v6, :cond_1

    .line 3190
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 3197
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-void

    .line 3175
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3181
    if-eqz v4, :cond_3

    .line 3183
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3188
    :cond_3
    :goto_4
    if-eqz v7, :cond_7

    .line 3190
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3193
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3184
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 3185
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3191
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 3192
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 3193
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_3

    .line 3184
    .end local v0    # "buffer":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "len":I
    .restart local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 3185
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3191
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 3192
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3178
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v2

    .line 3179
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_9
    const-string v9, "[EPDGService]"

    const-string v10, "Exception occured"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3181
    if-eqz v3, :cond_4

    .line 3183
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 3188
    :cond_4
    :goto_6
    if-eqz v6, :cond_1

    .line 3190
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 3191
    :catch_6
    move-exception v2

    .line 3192
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3184
    :catch_7
    move-exception v2

    .line 3185
    const-string v9, "[EPDGService]"

    const-string v10, "Exception : close exception"

    invoke-static {v9, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 3181
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_7
    if-eqz v3, :cond_5

    .line 3183
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 3188
    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    .line 3190
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 3193
    :cond_6
    :goto_9
    throw v9

    .line 3184
    :catch_8
    move-exception v2

    .line 3185
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 3191
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v2

    .line 3192
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "[EPDGService]"

    const-string v11, "Exception : close exception"

    invoke-static {v10, v11}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 3181
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .line 3178
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v2

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .line 3176
    :catch_c
    move-exception v5

    goto/16 :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :catch_d
    move-exception v5

    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "len":I
    :cond_7
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private criticalInit(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2174
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    sput-object p1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    .line 2176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EpdgServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2177
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2178
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgHandler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgHandler;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    .line 2179
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgDelayedInit;-><init>(Lcom/sec/epdg/EpdgService;Lcom/sec/epdg/EpdgService$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2180
    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 1 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    return-void
.end method

.method public static getAllApnSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/epdg/IWlanApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getIWlanApnList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "epdgApnType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3661
    const/4 v2, 0x0

    .line 3663
    .local v2, "apnName":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 3664
    const-string v7, "[EPDGService]"

    const-string v8, "(null apnType)"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3682
    :goto_0
    return-object v6

    .line 3668
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 3669
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3670
    .local v1, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3671
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 3672
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v5

    .line 3673
    .local v5, "remoteUri":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v3

    .line 3674
    .local v3, "apnType":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3675
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 3676
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apnType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mapped to apnName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    .line 3678
    goto :goto_0

    .line 3681
    .end local v3    # "apnType":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v5    # "remoteUri":Ljava/lang/String;
    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find apnName for apnType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .locals 3

    .prologue
    .line 593
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getConfiguredWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getConnMgrInstance()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 5128
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 5130
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 5131
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 5132
    .local v0, "newSsid":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Ssid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 5134
    return-object v0
.end method

.method private static getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;
    .locals 3

    .prologue
    .line 583
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentWifiIntfIpType: returning ip type as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    sget-object v0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    return-object v0
.end method

.method public static getEpdgFqdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getEpdgFQDN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEpdgServiceContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1043
    const-string v0, "[EPDGService]"

    const-string v1, "Returning epdg service context"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getEpdgServiceHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2131
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getEpdgSettings()Lcom/sec/epdg/EpdgSettings;
    .locals 1

    .prologue
    .line 706
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    return-object v0
.end method

.method private static getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;
    .locals 1

    .prologue
    .line 4123
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v0, :cond_0

    .line 4124
    sget-object v0, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4126
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    goto :goto_0
.end method

.method private getHasPendingCdmaIndication()Z
    .locals 1

    .prologue
    .line 3142
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    .line 3143
    const/4 v0, 0x0

    .line 3145
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    goto :goto_0
.end method

.method public static declared-synchronized getIsAirplaneMode()Z
    .locals 4

    .prologue
    .line 500
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsAirplaneMode: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIsCellularAvailable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 624
    const-class v7, Lcom/sec/epdg/EpdgService;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 625
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 627
    .local v1, "isRoaming":Z
    const/4 v0, 0x0

    .line 628
    .local v0, "bIsCellularAvailable":Z
    const-string/jumbo v8, "gsm.sim.state"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "simState":Ljava/lang/String;
    const-string v8, "READY"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "true"

    const-string/jumbo v9, "gsm.operator.isroaming"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 630
    const/4 v1, 0x1

    .line 632
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataRoamingEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_1

    .line 654
    :goto_0
    monitor-exit v7

    return v5

    .line 636
    :cond_1
    :try_start_1
    sget v8, Lcom/sec/epdg/EpdgService;->mWifiCallingPrefState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 637
    const-string v6, "[EPDGService]"

    const-string/jumbo v8, "mWifiCallingPrefState is NEVER_USE_CS"

    invoke-static {v6, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 624
    .end local v3    # "simState":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .line 641
    .restart local v3    # "simState":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 642
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/telephony/TelephonyManager;->getServiceState(I)I

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v8

    if-nez v8, :cond_5

    move v0, v6

    .line 643
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    sget v9, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 649
    .local v2, "netType":I
    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 650
    if-nez v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_8

    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v8

    if-nez v8, :cond_8

    move v0, v6

    :cond_4
    :goto_3
    move v5, v0

    .line 654
    goto :goto_0

    .end local v2    # "netType":I
    :cond_5
    move v0, v5

    .line 642
    goto :goto_1

    .line 645
    :cond_6
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsAirplaneMode()Z

    move-result v8

    if-nez v8, :cond_7

    move v0, v6

    .line 646
    :goto_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .restart local v2    # "netType":I
    goto :goto_2

    .end local v2    # "netType":I
    :cond_7
    move v0, v5

    .line 645
    goto :goto_4

    .restart local v2    # "netType":I
    :cond_8
    move v0, v5

    .line 650
    goto :goto_3
.end method

.method public static declared-synchronized getIsCsAvailable()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 664
    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartCdmaRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 665
    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 669
    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    .line 665
    goto :goto_0

    .line 669
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    :cond_2
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v4, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1X:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getIsDynamicFqdn()Z
    .locals 1

    .prologue
    .line 714
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getIsDynamicFQDN()Z

    move-result v0

    return v0
.end method

.method private static getIsImsCallConnected()Z
    .locals 4

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "result":Z
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_BLOCKHANDOFF:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_0

    .line 572
    const/4 v0, 0x1

    .line 574
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsImsCallConnected: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return v0
.end method

.method public static declared-synchronized getIsLteAvailable()Z
    .locals 3

    .prologue
    .line 602
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getIsLteAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 605
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsVoPSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsSsacVoiceEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsNetworkRoaming()Z
    .locals 1

    .prologue
    .line 3911
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method private static getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1102
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static getIsRssiDisabledForProfiling()Z
    .locals 3

    .prologue
    .line 559
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsRssiDisabledForProfiling: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    return v0
.end method

.method private declared-synchronized getIsScreenOn()Z
    .locals 3

    .prologue
    .line 491
    monitor-enter p0

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsScreenOn: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized getIsSsacVoiceEnabled()Z
    .locals 4

    .prologue
    .line 519
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsSsacVoiceEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getIsVoPSEnabled()Z
    .locals 4

    .prologue
    .line 509
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsVoPSEnabled: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 3893
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v1, :cond_0

    .line 3899
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->ROAMING_MODE_SETTING:Ljava/lang/String;

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgConstants$TriState;->getValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3903
    .local v0, "prefWifi":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIsWiFiPreferredInRoaming :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3904
    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .line 3906
    .end local v0    # "prefWifi":I
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method private static getIsWifiRssiInPollingZone()Z
    .locals 3

    .prologue
    .line 549
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIsWifiRssiInPollingZone: returning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    return v0
.end method

.method public static declared-synchronized getIsimState()Z
    .locals 2

    .prologue
    .line 693
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getIwlanContextState(Ljava/lang/String;)Lcom/sec/epdg/IWlanState;
    .locals 4
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 3473
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIwlanContextState() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v1, :cond_1

    .line 3475
    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3477
    sget-object v1, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v1

    .line 3480
    :goto_1
    return-object v1

    .line 3474
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3480
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getPreviousE911CallCount()I
    .locals 4

    .prologue
    .line 529
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreviousE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget v0, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreviousNonE911CallCount()I
    .locals 4

    .prologue
    .line 539
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPreviousNonE911CallCount: returning: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget v0, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getRegistedNetworkStateChangeReceiver()Z
    .locals 1

    .prologue
    .line 429
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 7
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 1311
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1312
    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1317
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_1
    return-object v3

    .line 1311
    .restart local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1316
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1301
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1302
    .local v3, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1307
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_1
    return-object v3

    .line 1301
    .restart local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1306
    .end local v3    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No SM for apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getSimState()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 687
    const-class v2, Lcom/sec/epdg/EpdgService;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getSimState() SimState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SimState2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eq v3, v0, :cond_1

    :cond_0
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    if-ne v3, v0, :cond_2

    sget-boolean v3, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v0, :cond_2

    :cond_1
    :goto_0
    monitor-exit v2

    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getTargetRilNetwork()I
    .locals 4

    .prologue
    .line 5424
    const/16 v0, 0xff

    .line 5425
    .local v0, "mTargetRilNetwork":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current mActiveRat is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5427
    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 5428
    const/16 v0, 0x19

    .line 5434
    :goto_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning mTargetRilNetwork is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5435
    return v0

    .line 5429
    :cond_0
    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 5430
    const/16 v0, 0x21

    goto :goto_0

    .line 5432
    :cond_1
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;
    .locals 6

    .prologue
    .line 960
    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_call_enable"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 962
    .local v2, "settingState":I
    invoke-static {v2}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    .line 963
    .local v1, "isWifiCallEnableSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsSettings;->readVolteProvisionedState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 964
    .local v0, "isVolteProvisioned":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_0

    .line 966
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 979
    :goto_0
    return-object v3

    .line 967
    :cond_0
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_2

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v1, :cond_2

    .line 970
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    .line 972
    :cond_2
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-eq v3, v0, :cond_4

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_4

    .line 975
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_3

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    .line 979
    :cond_4
    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v0, :cond_5

    sget-object v3, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v3, v1, :cond_5

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0
.end method

.method private handleDefaultSubChange(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 1622
    const-string v2, "[EPDGService]"

    const-string v3, "Inside handleDefaultSubChange: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    const-string/jumbo v2, "subscription"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1624
    .local v1, "subscription":I
    if-le v1, v4, :cond_0

    const v2, 0x7ffffffb

    if-ge v1, v2, :cond_0

    .line 1625
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() subscription is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1627
    .local v0, "phoneID":I
    const-string/jumbo v2, "sys.default.data.phoneid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDefaultSubChange() phoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    sput v1, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    .line 1630
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    .line 1633
    .end local v0    # "phoneID":I
    :cond_0
    new-instance v2, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1634
    return-void
.end method

.method private handleEpdgSettingsReadEvent()V
    .locals 26

    .prologue
    .line 729
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-nez v2, :cond_0

    .line 730
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "handleEpdgSettingsReadEvent() mEnableEpdg is false. Stop to init."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :goto_0
    return-void

    .line 733
    :cond_0
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v2, :cond_14

    .line 734
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->init()V

    .line 735
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilSharedData;->makeInstance(I)Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    .line 737
    const-string v2, "[EPDGService]"

    const-string v3, "Using EpdgRilAdapter "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    .line 740
    invoke-static {}, Lcom/sec/epdg/ipc/EpdgModem;->getInstance()Lcom/sec/epdg/ipc/EpdgModem;

    .line 741
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 743
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget v6, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    sget v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget v9, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    const/16 v10, 0xa

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 753
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 758
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_UNTIL_REGI_FINISHED:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->UNKNOWN:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    :goto_1
    sput-object v2, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0xe1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->makeEpdgServiceUp()V

    .line 767
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDataRetryEnabled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleController;->createInstance(Landroid/content/Context;ZZ)V

    .line 771
    const-string v2, "[EPDGService]"

    const-string v3, "Creating the Handover State machines"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 773
    invoke-static/range {v17 .. v17}, Lcom/sec/epdg/IWlanApnContext;->getNewIWlanApnContextInstance(I)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v21

    .line 775
    .local v21, "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-static {v3, v4, v0, v5, v6}, Lcom/sec/epdg/IPSecDataConnSM;->getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v3

    aput-object v3, v2, v17

    .line 772
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 758
    .end local v17    # "i":I
    .end local v21    # "iwlanApnContext":Lcom/sec/epdg/IWlanApnContext;
    :cond_1
    sget-object v2, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    goto/16 :goto_1

    .line 780
    .restart local v17    # "i":I
    :cond_2
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    .line 782
    .local v13, "b":Landroid/os/IBinder;
    invoke-static {v13}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    .line 785
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mNMService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mIfaceObserver:Lcom/sec/epdg/EpdgService$EpdgNetworkManagementObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_3
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 791
    .local v16, "filter":Landroid/content/IntentFilter;
    new-instance v23, Landroid/content/IntentFilter;

    invoke-direct/range {v23 .. v23}, Landroid/content/IntentFilter;-><init>()V

    .line 792
    .local v23, "periodicDpdFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v11

    .line 793
    .local v11, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 794
    .local v12, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    :cond_3
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 795
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sec/epdg/IWlanApnSetting;

    .line 796
    .local v22, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v24

    .line 797
    .local v24, "remoteUri":Ljava/lang/String;
    if-eqz v24, :cond_3

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.sec.epdg.RETRY_TIMER_EXPIRED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_4

    .line 786
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v22    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    .end local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v24    # "remoteUri":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 787
    .local v14, "e":Landroid/os/RemoteException;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register InterfaceObserver "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 802
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_4
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mDataRetryIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 803
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNattKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.epdg.NATT_KEEP_ALIVE_TIMER_EXPIRED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 806
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_5

    .line 807
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 809
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 811
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 814
    :cond_5
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 815
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mInternetKeepAliveIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 817
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PingerHandlerThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 819
    new-instance v2, Lcom/sec/epdg/DnsPinger;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v4, "[EPDGService]"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService;->mPingerHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/epdg/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    .line 821
    :cond_6
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWifiStateIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 823
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mScreenOnIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 825
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mScreenOffIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 827
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mAirplaneModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 829
    const/4 v2, 0x0

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    if-eqz v2, :cond_7

    .line 831
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "registerForCallStateChange..."

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForCall:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mImsCallListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v2, v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForCall;->registerForCallStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V
    :try_end_1
    .catch Lcom/samsung/commonimsinterface/imscommon/IMSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 838
    :cond_7
    :goto_5
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    .line 839
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->EMERGENCY_CALLBACK_MODE:Z

    if-eqz v2, :cond_8

    .line 840
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 842
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mEcbmIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_IMS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 845
    :cond_8
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_9

    .line 846
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mShutdownIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 850
    :cond_9
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v2, :cond_c

    .line 851
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    .line 853
    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 857
    :cond_a
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :try_start_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_b

    .line 863
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "vowifi enable parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 867
    :cond_b
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): wifi call enable is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_call_enable"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 875
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vowifi_mdn"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 879
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    .line 880
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 882
    const-string v2, "[EPDGService]"

    const-string v3, "Turning off vowifi as SIM mdn and vowifi mdn parameter is different"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_call_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 895
    :cond_c
    :goto_7
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_12

    const/16 v18, 0x1

    .line 897
    .local v18, "isAirplaneModeEnabled":Z
    :goto_8
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): isAirplaneModeEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-static/range {v18 .. v18}, Lcom/sec/epdg/EpdgService;->setIsAirplaneMode(Z)V

    .line 901
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    .line 903
    const-string v2, "[EPDGService]"

    const-string v3, "Parameter is not present, create it with default value"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vowifi_mdn"

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 907
    :cond_d
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): MDN is set, value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vowifi_mdn"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v2

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    .line 910
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 911
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    .line 912
    const-string/jumbo v2, "sys.default.data.phoneid"

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleEpdgSettingsReadEvent(): mDefaultDataPhoneID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDefaultSubID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_e
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 918
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 921
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_SupportWifiCall"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    :goto_9
    sput v2, Lcom/sec/epdg/EpdgService;->mDefaultEnableEpdg:I

    .line 922
    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v25

    .line 923
    .local v25, "wifi":Landroid/net/NetworkInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 924
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 956
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "i":I
    .end local v18    # "isAirplaneModeEnabled":Z
    .end local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    .end local v25    # "wifi":Landroid/net/NetworkInfo;
    :cond_10
    :goto_a
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    goto/16 :goto_0

    .line 834
    .restart local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .restart local v13    # "b":Landroid/os/IBinder;
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    .restart local v17    # "i":I
    .restart local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :catch_1
    move-exception v14

    .line 835
    .local v14, "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    invoke-virtual {v14}, Lcom/samsung/commonimsinterface/imscommon/IMSException;->printStackTrace()V

    goto/16 :goto_5

    .line 869
    .end local v14    # "e":Lcom/samsung/commonimsinterface/imscommon/IMSException;
    :catch_2
    move-exception v15

    .line 870
    .local v15, "exception":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "[EPDGService]"

    const-string v3, "In catch block, setting not found exception"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 887
    .end local v15    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    :cond_11
    const-string v2, "[EPDGService]"

    const-string v3, "Vowifi is already turned off"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 895
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 921
    .restart local v18    # "isAirplaneModeEnabled":Z
    :cond_13
    const/4 v2, 0x1

    goto :goto_9

    .line 927
    .end local v11    # "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v12    # "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    .end local v13    # "b":Landroid/os/IBinder;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v17    # "i":I
    .end local v18    # "isAirplaneModeEnabled":Z
    .end local v23    # "periodicDpdFilter":Landroid/content/IntentFilter;
    :cond_14
    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->writeToEFSFile()V

    .line 928
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v5

    sget v6, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    sget v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_HO_TIMER_VALUE:I

    sget-object v8, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v8

    sget v9, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    const/16 v10, 0xa

    invoke-static/range {v2 .. v10}, Lcom/sec/epdg/EpdgTimers;->getInstance(Landroid/os/Handler;IIIIIIII)Lcom/sec/epdg/EpdgTimers;

    move-result-object v2

    sput-object v2, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    .line 938
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TepdgLteTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tepdg1xScanTimer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xScanTimer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 943
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 944
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 947
    :cond_15
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isRetryEnabledForAlwaysOnApn()Z

    move-result v19

    .line 949
    .local v19, "isDataRetryEnabled":Z
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v20

    .line 951
    .local v20, "isThrottlingEnabled":Z
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After db read: isDataRetryEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->onSettingUpdated(ZZ)V

    .line 954
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/handover/EpdgImsListener;->onEpdgSettingChanged(Lcom/sec/epdg/EpdgSettings;)V

    goto/16 :goto_a
.end method

.method private handleImsStateChange(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 1738
    const-string v0, "[EPDGService]"

    const-string v1, "Inside handleImsStateChange: "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMS_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    .line 1742
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->ReadEpdgSettingFromIMS()V

    .line 1743
    const/4 v0, 0x0

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentSimImsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1744
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableEpdg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v0, :cond_1

    .line 1747
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1749
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 1750
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    .line 1751
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bIsSimReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsEpdgInitialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v0, :cond_0

    .line 1754
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1758
    :cond_1
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->stopEpdgService()V

    goto :goto_0
.end method

.method private handleMapconChange()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 3201
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 3204
    .local v0, "apnType":Ljava/lang/String;
    sget-object v5, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3207
    .local v3, "wifi":Landroid/net/NetworkInfo;
    sget-object v5, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "voicecall_type"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3208
    .local v1, "callType":I
    if-nez v1, :cond_0

    move v2, v4

    .line 3210
    .local v2, "isVolteEnabled":Z
    :cond_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3211
    iput v4, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    .line 3214
    :cond_1
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorDtac()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_6

    .line 3217
    :cond_3
    const-string v5, "[EPDGService]"

    const-string v6, "CellularAvailable & LTE preferred or LTE only, disable wifi profiling"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3218
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3219
    sput-boolean v4, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 3220
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 3222
    :cond_4
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3245
    :cond_5
    :goto_0
    return-void

    .line 3225
    :cond_6
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3226
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 3227
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 3241
    :cond_7
    :goto_1
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3242
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 3228
    :cond_8
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3229
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v4

    if-nez v4, :cond_a

    .line 3230
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService$DnsRetryReason;->MAPCON_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3232
    const-string v4, "[EPDGService]"

    const-string v5, "DNS is successful, start profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1

    .line 3235
    :cond_9
    const-string v4, "[EPDGService]"

    const-string v5, "DNS failed for all tries"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3238
    :cond_a
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_1
.end method

.method private handleRetryTimerExpired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 1591
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->isThrottlingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1592
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->getSMForApnName(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v1

    .line 1593
    .local v1, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-nez v1, :cond_0

    .line 1594
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid SM found for apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :goto_0
    return-void

    .line 1598
    .restart local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1599
    .local v0, "dataRetryExpired":Landroid/os/Message;
    if-eqz v0, :cond_2

    .line 1600
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "handleRetryTimerExpired: Sending DATA_RETRY_TIMER_EXPIRED to state machine"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    const/16 v2, 0xd

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1603
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1614
    .end local v0    # "dataRetryExpired":Landroid/os/Message;
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_1
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1615
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypeByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 1605
    .restart local v0    # "dataRetryExpired":Landroid/os/Message;
    .restart local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleRetryTimerExpired: Unable to obtain message for SM with apnName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1617
    .end local v0    # "dataRetryExpired":Landroid/os/Message;
    .end local v1    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3
    const-string v2, "[EPDGService]"

    const-string v3, "Do not retry L2W handover. SSID changed: "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimStateChange(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1637
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1638
    .local v1, "action":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange: action is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const/4 v3, -0x1

    .line 1640
    .local v3, "simSlot":I
    const/4 v5, -0x1

    .line 1641
    .local v5, "subscription":I
    sget-object v6, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v6, v1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1642
    const-string v6, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1644
    invoke-static {v9}, Lcom/sec/epdg/EpdgService;->setIsimState(Z)V

    .line 1645
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getSimState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1646
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "handleSimStateChange: SIM is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    if-ne v3, v9, :cond_1

    .line 1648
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 1652
    :goto_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    .line 1712
    :cond_0
    :goto_1
    return-void

    .line 1650
    :cond_1
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_0

    .line 1654
    :cond_2
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1655
    const-string/jumbo v6, "ss"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1656
    .local v4, "simState":Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_STATE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    const-string v2, "LOADED"

    .line 1658
    .local v2, "loadedstate":Ljava/lang/String;
    const-string v0, "ABSENT"

    .line 1659
    .local v0, "absentState":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 1660
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1661
    const-string/jumbo v6, "slot"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1662
    const-string/jumbo v6, "subscription"

    invoke-virtual {p1, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1663
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM_SLOT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "subscription: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    :cond_3
    const-string v6, "LOADED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1667
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v6, :cond_6

    .line 1672
    if-ne v3, v9, :cond_4

    .line 1673
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    .line 1677
    :goto_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsimState()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1678
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "handleSimStateChange: Isim is already loaded"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    if-ne v3, v9, :cond_5

    .line 1680
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 1684
    :goto_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    goto/16 :goto_1

    .line 1675
    :cond_4
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    goto :goto_2

    .line 1682
    :cond_5
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_3

    .line 1687
    :cond_6
    if-ne v3, v9, :cond_7

    .line 1688
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    .line 1689
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    .line 1694
    :goto_4
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->notifySimChangedEvent()V

    goto/16 :goto_1

    .line 1691
    :cond_7
    sput-boolean v9, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    .line 1692
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto :goto_4

    .line 1696
    :cond_8
    const-string v6, "ABSENT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1697
    if-ne v3, v9, :cond_9

    .line 1698
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    .line 1699
    iput-object v11, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    goto/16 :goto_1

    .line 1701
    :cond_9
    iget-object v6, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    .line 1702
    iput-object v11, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    goto/16 :goto_1

    .line 1706
    :cond_a
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange() Sim State is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1710
    .end local v0    # "absentState":Ljava/lang/String;
    .end local v2    # "loadedstate":Ljava/lang/String;
    .end local v4    # "simState":Ljava/lang/String;
    :cond_b
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleSimStateChange: Invalid action received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initAfterimsReady()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2863
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;

    move-result-object v0

    .line 2864
    .local v0, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    .line 2865
    new-instance v1, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/EpdgService$EpdgSettingObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    .line 2866
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOnUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2867
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v1, :cond_0

    .line 2868
    sget-object v1, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 2869
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mRoamingUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mEpdgSettingObserver:Lcom/sec/epdg/EpdgService$EpdgSettingObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2872
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2873
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    .line 2874
    :cond_1
    return-void
.end method

.method private initEpdgService(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2135
    const-string v0, "[EPDGService]"

    const-string v1, "Enter step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 2139
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 2142
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isIndependentEpdg()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2143
    const-string v0, "[EPDGService]"

    const-string v1, "EPDG service was started without ims service."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    sget-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2145
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_IMSI_FROM_IMPI:Z

    if-eqz v0, :cond_0

    .line 2146
    sget-object v0, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ISIM_LOADED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2148
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mIntentFilterForSimStateChanged:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 2163
    :cond_1
    :goto_0
    const-string v0, "[EPDGService]"

    const-string v1, "Exit step 2 of boot"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    return-void

    .line 2150
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableIMS"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2151
    const/4 v0, 0x7

    invoke-static {v0, p1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    .line 2152
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_1

    .line 2153
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "registerForServiceStateChange..."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2154
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mImsInterfaceForGeneral:Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mRegistrationListener:Lcom/samsung/commonimsinterface/imscommon/IIMSListener;

    invoke-interface {v0, v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->registerForServiceStateChange(Lcom/samsung/commonimsinterface/imscommon/IIMSListener;)V

    .line 2155
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mImsReadyReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.ims.action.onsimloaded"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 2158
    :cond_3
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "imsservice is not installed."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static is1xAvailable()Z
    .locals 2

    .prologue
    .line 614
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 615
    const-string v0, "[EPDGService]"

    const-string v1, "1x is available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v0, 0x1

    .line 619
    :goto_0
    return v0

    .line 618
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "1x is NOT available"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private is3gNetwork(I)Z
    .locals 1
    .param p1, "netType"    # I

    .prologue
    .line 5268
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    .line 5273
    :cond_0
    const/4 v0, 0x1

    .line 5275
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnyPdnConnectedOverWifi()Z
    .locals 5

    .prologue
    .line 5167
    const/4 v1, 0x0

    .line 5168
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v2, :cond_1

    .line 5169
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 5171
    const/4 v1, 0x1

    .line 5168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5174
    :cond_1
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAnyPdnConnectedOverWifi: returning result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5175
    return v1
.end method

.method private static isBlockHandOverApn(Ljava/lang/String;)Z
    .locals 5
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1053
    const/4 v1, 0x0

    .line 1054
    .local v1, "result":Z
    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1055
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "operator":Ljava/lang/String;
    const-string v3, "26201"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "mms"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "xcap"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1060
    :cond_0
    const/4 v1, 0x1

    .line 1063
    :cond_1
    return v1
.end method

.method public static isEpdgAvailable()Z
    .locals 2

    .prologue
    .line 1048
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHandoverRequiredOnCdmaIndication()Z
    .locals 2

    .prologue
    .line 3131
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIPv6AddressScopeGlobal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2082
    const/4 v2, 0x1

    .line 2084
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isIPv6AddressScopeGlobal: Received address is: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isUserBinary()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Suppressed"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 2088
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCGlobal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCLinkLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCNodeLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCOrgLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMCSiteLocal()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2093
    :cond_0
    const/4 v2, 0x0

    .line 2095
    :cond_1
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isIPv6AddressScopeGlobal(): returning result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 2099
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    :goto_1
    return v3

    :cond_2
    move-object v3, p1

    .line 2084
    goto :goto_0

    .line 2097
    :catch_0
    move-exception v0

    .line 2098
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v3, "[EPDGService]"

    const-string v4, "Address is not proper ip address"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private declared-synchronized isKeepAliveExpired()Z
    .locals 1

    .prologue
    .line 417
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isKeepAliveRunning()Z
    .locals 1

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isOngoingConnectionOverWifi(Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5179
    const/4 v3, 0x0

    .line 5180
    .local v3, "result":Z
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_5

    aget-object v4, v0, v1

    .line 5181
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5182
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 5184
    const/4 v3, 0x1

    .line 5180
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5185
    :cond_1
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 5188
    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 5189
    :cond_3
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5192
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 5196
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_5
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isOngoingConnectionOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5197
    return v3
.end method

.method public static isPdnConnectedOverWifi(Ljava/lang/String;)Z
    .locals 8
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5152
    const/4 v3, 0x0

    .line 5153
    .local v3, "result":Z
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 5154
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5155
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 5156
    const/4 v3, 0x1

    .line 5161
    .end local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_0
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isPdnConnectedOverWifi: returning result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for apnType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5163
    return v3

    .line 5153
    .restart local v4    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isRegistrationRequired(ZZZZZ)Z
    .locals 4
    .param p1, "vowifiChanged"    # Z
    .param p2, "newValueW"    # Z
    .param p3, "voLteChanged"    # Z
    .param p4, "newValueL"    # Z
    .param p5, "vopsOrSsacChanged"    # Z

    .prologue
    const/16 v3, 0xd

    const/4 v1, 0x0

    .line 3089
    move v0, p1

    .line 3091
    .local v0, "bVowifiChanged":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVoWifiEnabled()Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 3092
    const/4 v0, 0x0

    .line 3096
    :cond_0
    if-eqz v0, :cond_2

    .line 3097
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3099
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. IMS on LTE and VoLTE is on"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    :goto_0
    return v1

    .line 3101
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3103
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. voice is 1x"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3106
    :cond_2
    if-eqz p3, :cond_4

    .line 3107
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_3

    .line 3108
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3110
    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3111
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3114
    :cond_4
    if-eqz p5, :cond_6

    .line 3115
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 3116
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. No LTE"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3118
    :cond_5
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3119
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. wifi preferred"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3122
    :cond_6
    if-nez v0, :cond_7

    if-nez p3, :cond_7

    if-nez p5, :cond_7

    .line 3123
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "re-regi is not required. nothing changed"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3126
    :cond_7
    const-string v1, "[EPDGService]"

    const-string v2, "IMS RegistrationRequired - HO delay"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2006
    const/4 v0, 0x0

    .line 2008
    .local v0, "result":Z
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2010
    :goto_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidAddress: returning result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    return v0

    .line 2008
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 4224
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVideoSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 4225
    .local v0, "videoSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_0

    .line 4226
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 4229
    :goto_0
    return-object v1

    .line 4228
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4229
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method public static isVoWifiEnabled()Z
    .locals 2

    .prologue
    .line 4209
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;
    .locals 4

    .prologue
    .line 4213
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings;->readCurrentVolteSettingState()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    .line 4214
    .local v0, "volteSetting":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_0

    .line 4215
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    .line 4219
    :goto_0
    return-object v1

    .line 4218
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "volteSetting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_FALSE:Lcom/sec/epdg/EpdgConstants$TriState;

    goto :goto_0
.end method

.method public static isW2LRecommended(I)Z
    .locals 5
    .param p0, "rilCid"    # I

    .prologue
    .line 5640
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 5641
    .local v0, "apnType":Ljava/lang/String;
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: rilCid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apnType is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5643
    const/4 v1, 0x0

    .line 5644
    .local v1, "result":Z
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isBlockHandOverApn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5645
    :cond_0
    const-string v2, "[EPDGService]"

    const-string/jumbo v3, "isW2LRecommended: null apnType"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5654
    :goto_0
    return v1

    .line 5646
    :cond_1
    const-string v2, "cbs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5648
    :cond_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, p0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getIsW2LRequested()Z

    move-result v1

    .line 5649
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isW2LRecommended: result is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5651
    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static isWifiCallingEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4198
    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v3, v4, :cond_3

    :cond_0
    move v0, v2

    .line 4200
    .local v0, "bVoWifi":Z
    :goto_0
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_4

    :cond_1
    move v2, v0

    .line 4204
    :cond_2
    :goto_1
    return v2

    .end local v0    # "bVoWifi":Z
    :cond_3
    move v0, v1

    .line 4198
    goto :goto_0

    .line 4204
    .restart local v0    # "bVoWifi":Z
    :cond_4
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgTemporaryBlocked()Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->ALLOWED:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-eq v3, v4, :cond_2

    move v2, v1

    goto :goto_1
.end method

.method private isWifiConnected()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3888
    iget v1, p0, Lcom/sec/epdg/EpdgService;->mWifiMgrState:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private movePdnFromWifi()V
    .locals 6

    .prologue
    .line 5138
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "movePdnFromWifi()"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v1, v3, :cond_1

    .line 5140
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 5142
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 5143
    .local v0, "apnType":Ljava/lang/String;
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "movePdnFromWifi, apnType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5144
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 5145
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 5146
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 5139
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5149
    :cond_1
    return-void
.end method

.method private moveToLteBasedOnMapcon()V
    .locals 4

    .prologue
    .line 1110
    sget-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v2, :cond_1

    .line 1118
    :cond_0
    return-void

    .line 1112
    :cond_1
    const/4 v1, 0x1

    .local v1, "cid":I
    :goto_0
    sget v2, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-gt v1, v2, :cond_0

    .line 1113
    sget-object v2, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1115
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    .line 1112
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private notifyL2WHandoverResult(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5630
    if-eqz p2, :cond_0

    .line 5631
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    .line 5637
    :goto_0
    return-void

    .line 5635
    :cond_0
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyL2WHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifySimChangedEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1789
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v0, :cond_1

    .line 1790
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg service is not yet initialized, calling epdg initialization"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1793
    :cond_1
    const/4 v0, 0x0

    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prev imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Prev imsi2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Current IMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Current IMSI2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1795
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSimImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSimImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentSim2Imsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mPrevSim2Imsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1797
    :cond_3
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleController;->onSimChanged()V

    goto :goto_0
.end method

.method private notifyW2LHandoverResult(ZLjava/lang/String;)V
    .locals 6
    .param p1, "result"    # Z
    .param p2, "apnType"    # Ljava/lang/String;

    .prologue
    .line 5621
    if-eqz p2, :cond_0

    .line 5622
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getIsBroadcastHONotiEnabled()Z

    move-result v5

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/MapconTable;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V

    .line 5628
    :goto_0
    return-void

    .line 5626
    :cond_0
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "notifyW2LHandoverResult(): APN is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDbAccessCompleted()V
    .locals 2

    .prologue
    .line 718
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 719
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 720
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 721
    return-void
.end method

.method private onInternetKeepAliveTimerExpiry()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/16 v2, 0xd

    .line 1067
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive: onInternetKeepAliveTimerExpiry()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    .line 1069
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_1

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v0, v2, :cond_1

    .line 1071
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT=LTE so Send keep alive packet+start the timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    .line 1074
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v4, :cond_2

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-eq v0, v2, :cond_2

    .line 1077
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=AVAILABLE,RAT!=LTE so Start keep alive timer again"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    goto :goto_0

    .line 1080
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v0

    if-ne v0, v3, :cond_0

    sget v0, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v0, v2, :cond_0

    .line 1082
    const-string v0, "[EPDGService]"

    const-string v1, "InternetKeepAlive:Timer=Expired,EPDG=UNAVAILABLE,RAT=LTE so Set keep alive expired flag"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    goto :goto_0
.end method

.method private onNetworkStatusChanged()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 5286
    sget v2, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .line 5292
    .local v2, "mExistingActiveRat":I
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "onNetworkStatusChanged"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5293
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5294
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5295
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    sget v5, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    .line 5306
    .local v3, "netType":I
    :goto_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    .line 5307
    .local v1, "currentCellular":Z
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    .line 5308
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService;->bootCompleted()V

    .line 5421
    :cond_0
    :goto_1
    return-void

    .line 5297
    .end local v1    # "currentCellular":Z
    .end local v3    # "netType":I
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_0

    .line 5300
    .end local v3    # "netType":I
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5301
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    sget v5, Lcom/sec/epdg/EpdgService;->mDefaultSubID:I

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_0

    .line 5303
    .end local v3    # "netType":I
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    .restart local v3    # "netType":I
    goto :goto_0

    .line 5312
    .restart local v1    # "currentCellular":Z
    :cond_4
    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v4, :cond_5

    .line 5313
    const-string v4, "[EPDGService]"

    const-string v5, "Epdg service is not yet initialized, ignore onNetworkStatusChanged"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5317
    :cond_5
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v4, :cond_6

    .line 5318
    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    if-eq v4, v1, :cond_6

    .line 5319
    if-nez v1, :cond_e

    .line 5320
    const-string v4, "[EPDGService]"

    const-string v5, "Celluler is not available, disable Wifi thresholds if Idle"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5321
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_6

    .line 5322
    invoke-static {v6}, Lcom/sec/epdg/EpdgService;->setIsRssiDisabledForProfiling(Z)V

    .line 5323
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5324
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5325
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    .line 5341
    :cond_6
    :goto_2
    sget v4, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v3, v4, :cond_7

    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    if-eq v4, v1, :cond_d

    .line 5342
    :cond_7
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    .line 5343
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 5347
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v3, :cond_8

    if-nez v1, :cond_13

    .line 5348
    :cond_8
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 5349
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5350
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5351
    const-string v4, "[EPDGService]"

    const-string v5, "OoS & LTE preferred, enable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5352
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    .line 5381
    :cond_9
    :goto_3
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v4

    sget-boolean v5, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    if-eq v4, v5, :cond_a

    .line 5382
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v4

    sput-boolean v4, Lcom/sec/epdg/EpdgService;->mRoaming:Z

    .line 5383
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v4, :cond_a

    .line 5384
    sget-object v4, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 5387
    :cond_a
    const-string v4, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    if-ne v1, v6, :cond_b

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-nez v4, :cond_b

    .line 5390
    const-string v4, "[EPDGService]"

    const-string v5, "ATT IR94,RAN is available, enable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5391
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    .line 5392
    sput-boolean v7, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    .line 5394
    :cond_b
    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_c

    sget v4, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->is3gNetwork(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5397
    :cond_c
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active Rat Changed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    invoke-static {v6}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5402
    sput v3, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    .line 5403
    const-wide/16 v4, 0x3e8

    invoke-direct {p0, v4, v5, v3}, Lcom/sec/epdg/EpdgService;->startTimerForPdnXfer(JI)V

    .line 5404
    sget-boolean v4, Lcom/sec/epdg/EpdgOperatorConstants;->LTE_PROFILING:Z

    if-eqz v4, :cond_d

    .line 5405
    sget v4, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    if-ne v4, v8, :cond_16

    .line 5406
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartLteRunning()Z

    move-result v4

    if-nez v4, :cond_15

    .line 5407
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 5419
    .end local v0    # "apnType":Ljava/lang/String;
    :cond_d
    :goto_4
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    .line 5420
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCellularAvailable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/epdg/EpdgService;->mCellularAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5329
    :cond_e
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsRssiDisabledForProfiling()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5330
    const-string v4, "[EPDGService]"

    const-string v5, "Celluler is available, enable Wifi thresholds"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5331
    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->setIsRssiDisabledForProfiling(Z)V

    .line 5332
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5333
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5334
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto/16 :goto_2

    .line 5354
    .restart local v0    # "apnType":Ljava/lang/String;
    :cond_f
    const-string v4, "ATT"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 5355
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVoWifiWave2()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_call_enable"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_9

    .line 5357
    :cond_10
    const-string v4, "[EPDGService]"

    const-string v5, "ATT IR94, no RAN, disable Wifi Call"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5358
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 5359
    sput-boolean v6, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 5360
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 5362
    :cond_11
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5363
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 5364
    sput-boolean v6, Lcom/sec/epdg/EpdgService;->mDisabledByNoRan:Z

    goto/16 :goto_3

    .line 5367
    :cond_12
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5368
    const-string v4, "[EPDGService]"

    const-string v5, "Rat us unknown, enable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5369
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onWifiConnected()V

    goto/16 :goto_3

    .line 5371
    :cond_13
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x12

    if-eq v3, v4, :cond_9

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 5374
    const-string v4, "[EPDGService]"

    const-string v5, "CellularAvailable & LTE preferred, disable wifi profiling"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5375
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 5376
    sput-boolean v6, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 5377
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 5379
    :cond_14
    sget-object v4, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    goto/16 :goto_3

    .line 5409
    :cond_15
    const-string v4, "[EPDGService]"

    const-string v5, "When LTE becomes available, smart lte is running, so in connected mode, smart lte decides the lte availability based upon signal strength"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 5413
    :cond_16
    if-ne v2, v8, :cond_d

    .line 5414
    const-string v4, "[EPDGService]"

    const-string v5, "RAT change from LTE to other RAT, calling LTE off"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5415
    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4
.end method

.method private onServiceStatusChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 5279
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->onNetworkStatusChanged()V

    .line 5280
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5281
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->checkVopsStatus(Landroid/telephony/ServiceState;)V

    .line 5283
    :cond_0
    return-void
.end method

.method private onSystemSelectTimerFinish()V
    .locals 4

    .prologue
    .line 3445
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3446
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3451
    const-string v0, "[EPDGService]"

    const-string v1, "Smart Wifi already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3453
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3470
    :goto_0
    return-void

    .line 3454
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3455
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->TEPDG_TIMER_EXPIRED:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3458
    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, adding routes"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3459
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 3461
    :cond_1
    const-string v0, "[EPDGService]"

    const-string v1, "DNS failed for all tries"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3464
    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3468
    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi not connected when TEpdg timer done"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVoWifiProvisioningStateChanged(I)V
    .locals 1
    .param p1, "isProvisioned"    # I

    .prologue
    .line 3049
    if-nez p1, :cond_0

    .line 3053
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    .line 3054
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V

    .line 3056
    :cond_0
    return-void
.end method

.method private onVolteProvisioningStateChanged(I)V
    .locals 3
    .param p1, "isProvisioned"    # I

    .prologue
    .line 3031
    if-nez p1, :cond_0

    .line 3035
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->resetVowifiMdnCache(Landroid/content/Context;)V

    .line 3036
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V

    .line 3046
    :goto_0
    return-void

    .line 3042
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_1
.end method

.method private onVopsStatusChanged(I)V
    .locals 6
    .param p1, "vops_enabled"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2855
    if-ne p1, v5, :cond_1

    move v0, v5

    :goto_0
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setIsVoPSEnabled(Z)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    .line 2856
    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService;->isRegistrationRequired(ZZZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2857
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V

    .line 2859
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->MoveToBasedOnVopsOrSsac(I)V

    .line 2860
    return-void

    :cond_1
    move v0, v1

    .line 2855
    goto :goto_0
.end method

.method private onWifiConnected()V
    .locals 3

    .prologue
    .line 4416
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getIsIpv6Enabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4418
    const-string v1, "[EPDGService]"

    const-string v2, "IPv6 support is enabled and wifi ip config timer is running, no need to perform wifi connected. It will happen after config timer expiry"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4447
    :goto_0
    return-void

    .line 4422
    :cond_0
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi is Connected"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4423
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_1

    .line 4425
    const-string v1, "[EPDGService]"

    const-string v2, "TEpdg timer running"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4426
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4427
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_RECONNECT:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4429
    const-string v1, "[EPDGService]"

    const-string v2, "DNS is successful, start profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4430
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 4432
    :cond_2
    const-string v1, "[EPDGService]"

    const-string v2, "DNS failed for all tries"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4433
    iget v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 4434
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 4435
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4436
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 4439
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4440
    const-string v1, "[EPDGService]"

    const-string v2, "DNS resolved, start WiFi profiling"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4441
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 4443
    :cond_4
    const-string v1, "[EPDGService]"

    const-string v2, "Epdg FQDN is already resolved, received duplicate wifi connect"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onWifiGoodEnough()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4506
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface {v1, v3}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 4507
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVodPreferredMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4508
    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V

    .line 4509
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4510
    .local v0, "wifiIntent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg.EPDG_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4511
    const-string v1, "EPDG_AVAILABLE"

    invoke-static {v1}, Lcom/sec/epdg/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    .line 4512
    const-string v1, "[EPDGService]"

    const-string v2, "Send EPDG Available broadcast"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4513
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4515
    invoke-direct {p0, v3}, Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V

    .line 4517
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4518
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->setIsEpdgAvailable(Z)V

    .line 4521
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4522
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveExpired()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/sec/epdg/EpdgService;->mActiveRat:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 4524
    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:onWifiGoodEnough:RAT=LTE,EPDG=AVAILABLE so send keep alive packet"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4526
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveExpired(Z)V

    .line 4527
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V

    .line 4528
    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4530
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    .line 4532
    :cond_2
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z

    move-result v1

    if-nez v1, :cond_3

    .line 4533
    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:onWifiGoodEnough:Starting the keep alive timer for Internet PDN"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4535
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V

    .line 4538
    :cond_3
    return-void
.end method

.method private performDnsIfPossible()V
    .locals 3

    .prologue
    .line 2104
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_1

    .line 2106
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    if-nez v0, :cond_0

    .line 2107
    const-string v0, "[EPDGService]"

    const-string v1, "check AP is allowed for EPDG service first"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    new-instance v0, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/epdg/EpdgService$WfcProfileTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    .line 2109
    sget-object v0, Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2128
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getConfiguredWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2114
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2115
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$DnsRetryReason;->WIFI_IPTYPE_CHANGE:Lcom/sec/epdg/EpdgService$DnsRetryReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->performDnsAndSetEpdgServerIpPool(Lcom/sec/epdg/EpdgService$DnsRetryReason;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2117
    const-string v0, "[EPDGService]"

    const-string v1, "DNS is successful, start profiling"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->startWifiProfiling()V

    goto :goto_0

    .line 2121
    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "DNS fail in all attempts"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2124
    :cond_3
    const-string v0, "[EPDGService]"

    const-string v1, "Configured ip type is already ipv4v6, no need to perform DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pingAsyncInternet()V
    .locals 5

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    if-nez v0, :cond_0

    .line 1090
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "mDnsPigner not intialized"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    :goto_0
    return-void

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;

    if-nez v0, :cond_1

    .line 1094
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "mCurrentNetwork is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDnsPinger:Lcom/sec/epdg/DnsPinger;

    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCurrentNetwork:Landroid/net/Network;

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/epdg/DnsPinger;->pingDnsAsync(Ljava/net/InetAddress;Landroid/net/Network;II)I

    goto :goto_0
.end method

.method private printEpdgSettingsThreshold()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWifiRssiA :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveInWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWifiRssiRoveOutWifiOnly:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLteRsrp3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static resetDataDependency()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 5216
    invoke-static {v0, v0}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    .line 5217
    return-void
.end method

.method public static resetVowifiMdnCache(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 724
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vowifi_mdn"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 726
    return-void
.end method

.method private retryL2WHandoverIfRequired(Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 5072
    const/4 v2, 0x0

    .line 5073
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TimerStatus :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5074
    if-nez p1, :cond_0

    .line 5075
    const-string v4, "[EPDGService]"

    const-string v5, "L2W handover failed : (null apnType)"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5124
    :goto_0
    return v4

    .line 5079
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5080
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v4, v5, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v4, v5, :cond_1

    .line 5084
    const-string v4, "[EPDGService]"

    const-string v5, "Block L2W as registration is not done"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5085
    goto :goto_0

    .line 5088
    :cond_1
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5089
    const-string v4, "[EPDGService]"

    const-string v5, "1x scanning is on, wait for TEPDG1XSCANNING"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5090
    goto :goto_0

    .line 5093
    :cond_2
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 5099
    .local v1, "networkType":I
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retryL2WHandoverIfRequired(): apnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5101
    if-eq v7, v1, :cond_6

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5102
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/epdg/mapcon/PolicyManager;->isL2WRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5104
    sget-object v4, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v5, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v4, v5, :cond_3

    .line 5105
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "delay L2W handover until regi-done"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5106
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 5109
    :cond_3
    :try_start_0
    const-string v4, "[EPDGService]"

    const-string v5, "Firing L2W handover"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5110
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 5111
    .local v3, "ret":I
    if-eq v3, v7, :cond_4

    .line 5112
    const/4 v2, 0x1

    .end local v3    # "ret":I
    :cond_4
    :goto_1
    move v4, v2

    .line 5124
    goto/16 :goto_0

    .line 5114
    :catch_0
    move-exception v0

    .line 5115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L2W Handover not required."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5118
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    const-string v4, "[EPDGService]"

    const-string v5, "L2W is not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5121
    :cond_6
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not retry L2W handover. apnType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private retryW2LHandoverIfRequired(Ljava/lang/String;)Z
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 5019
    const/4 v2, 0x0

    .line 5020
    .local v2, "result":Z
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->printEpdgSettingsThreshold()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->printProfilingState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TimerStatus :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5021
    if-nez p1, :cond_0

    .line 5022
    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover failed : (null apnType)"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5068
    :goto_0
    return v4

    .line 5025
    :cond_0
    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v5, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGLTE:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v4, v5}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5026
    const-string v4, "[EPDGService]"

    const-string v5, "TEPDGLTE timer running, W2L not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5027
    goto :goto_0

    .line 5030
    :cond_1
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getVoWifiSessionConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5031
    const-string v4, "[EPDGService]"

    const-string v5, "VoWIFI session is connected. So skip W2L Handover."

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 5032
    goto :goto_0

    .line 5035
    :cond_2
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v1

    .line 5036
    .local v1, "networkType":I
    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5037
    .local v3, "rule":Ljava/lang/String;
    const/4 v4, -0x1

    if-eq v4, v1, :cond_7

    .line 5038
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->isW2LRecommended(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5039
    sget-object v4, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v5, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne v4, v5, :cond_3

    .line 5040
    const-string v4, "[EPDGService]"

    const-string/jumbo v5, "delay W2L handover until regi-done"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5041
    const/4 v4, 0x1

    goto :goto_0

    .line 5043
    :cond_3
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsLteAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5045
    const-string v4, "[EPDGService]"

    const-string v5, "W2L recommended but LTE is not available, send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5046
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    .line 5047
    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    .line 5050
    :cond_4
    :try_start_0
    const-string v4, "[EPDGService]"

    const-string v5, "Firing W2L handover"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5051
    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5052
    const/4 v2, 0x1

    :goto_1
    move v4, v2

    .line 5068
    goto/16 :goto_0

    .line 5053
    :catch_0
    move-exception v0

    .line 5054
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "W2L handover not required."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5057
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getHasPendingCdmaIndication()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5058
    const-string v4, "[EPDGService]"

    const-string v5, "W2L not recommended, still send cdma availability to IMS"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5059
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCsAvailable()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/epdg/EpdgService;->sendEpdgRegisterBroadcast(Z)V

    .line 5060
    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->setHasPendingCdmaIndication(Z)V

    .line 5062
    :cond_6
    const-string v4, "[EPDGService]"

    const-string v5, "W2L handover not recommended"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5065
    :cond_7
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Do not retry W2L handover. apnType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " networkType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendEpdgDeregisterBroadcastIfRequired(Z)Z
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4888
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-nez v3, :cond_1

    .line 4904
    :cond_0
    :goto_0
    return v1

    .line 4891
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getRegStatus()Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;->REGISTRATION_DONE:Lcom/sec/epdg/handover/EpdgImsConstants$IMSRegStatus;

    if-eq v3, v4, :cond_3

    :cond_2
    if-eqz p1, :cond_0

    .line 4893
    :cond_3
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "sendEpdgDeregisterBroadcast: send deregi"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4894
    if-eqz p1, :cond_4

    .line 4895
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    .line 4899
    :goto_1
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    .line 4900
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.EPDG_DEREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4901
    .local v0, "deregiIntent":Landroid/content/Intent;
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    move v1, v2

    .line 4902
    goto :goto_0

    .line 4897
    .end local v0    # "deregiIntent":Landroid/content/Intent;
    :cond_4
    sput-boolean v1, Lcom/sec/epdg/EpdgService;->mDeregiForHOFail:Z

    goto :goto_1
.end method

.method private sendEpdgRegisterBroadcast(Z)V
    .locals 4
    .param p1, "cdmaAvailability"    # Z

    .prologue
    .line 4874
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v1, :cond_0

    .line 4885
    :goto_0
    return-void

    .line 4877
    :cond_0
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendEpdgRegisterBroadcast with cdmaAvailability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4878
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_1

    .line 4879
    const-string v1, "[EPDGService]"

    const-string v2, "Call in progress, dont send cdmaAvailability to IMS"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4882
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.EPDG_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4883
    .local v0, "epdgRegisterIntent":Landroid/content/Intent;
    const-string v1, "cdmaAvailability"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4884
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendIpsecConnFailIntent(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V
    .locals 3
    .param p0, "apnType"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/sec/epdg/IWlanError;

    .prologue
    .line 3149
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3159
    :cond_0
    :goto_0
    return-void

    .line 3153
    :cond_1
    if-eqz p1, :cond_0

    .line 3154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3155
    .local v0, "infoToIMSCII":Landroid/content/Intent;
    const-string v1, "apntype"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3156
    const-string/jumbo v1, "ikeerror"

    invoke-static {p1}, Lcom/sec/epdg/IWlanEnum$WfcErrorCode;->getWFCErrorCode(Lcom/sec/epdg/IWlanError;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3157
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private sendIpsecConnResultToSM(Landroid/os/Message;Landroid/os/Message;)V
    .locals 4
    .param p1, "srcMsg"    # Landroid/os/Message;
    .param p2, "destMsg"    # Landroid/os/Message;

    .prologue
    .line 3248
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3249
    .local v0, "cid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 3250
    const-string v1, "[IPSEC->EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event received for cid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3252
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 3253
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3254
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 3258
    :goto_0
    return-void

    .line 3256
    :cond_0
    const-string v1, "[IPSEC->EPDGService]"

    const-string v2, "Event received for invalid cid neglect it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendIpsecConnResultToTestApp(II)V
    .locals 15
    .param p1, "cid"    # I
    .param p2, "event"    # I

    .prologue
    .line 3261
    const/4 v0, 0x0

    .local v0, "apnType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3262
    .local v10, "ipsecEvent":Ljava/lang/String;
    const/4 v11, -0x1

    .line 3263
    .local v11, "networkType":I
    sget-object v12, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v13, p1, -0x1

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 3264
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "apnName after getIwlanApnNameFromCid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    if-eqz v0, :cond_0

    .line 3266
    invoke-static {v0}, Lcom/sec/epdg/EpdgUtils;->getNetworkTypeByApnType(Ljava/lang/String;)I

    move-result v11

    .line 3267
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "networkType returned:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    :cond_0
    if-eqz v0, :cond_1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 3271
    :cond_1
    const-string v10, "Unknown"

    .line 3272
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " apnName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ipsecEvent:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3277
    :goto_0
    sparse-switch v11, :sswitch_data_0

    .line 3344
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal NetworkType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    :cond_2
    :goto_1
    return-void

    .line 3274
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/sec/epdg/IWlanEnum;->toTestAppEventStatus(I)Ljava/lang/String;

    move-result-object v10

    .line 3275
    const-string v12, "[EPDGService]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ipsecEvent returned to UI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3279
    :sswitch_0
    new-instance v5, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_INTERNET"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3281
    .local v5, "infoToUiForInternet":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v5, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3282
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3283
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v5}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 3286
    .end local v5    # "infoToUiForInternet":Landroid/content/Intent;
    :sswitch_1
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_IMS"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3288
    .local v4, "infoToUiForIms":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v4, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3289
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v4, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3290
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v4}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 3293
    .end local v4    # "infoToUiForIms":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_APP"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3295
    .local v2, "infoToUiForApp":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3296
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v2, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3297
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 3300
    .end local v2    # "infoToUiForApp":Landroid/content/Intent;
    :sswitch_3
    new-instance v6, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3302
    .local v6, "infoToUiForMms":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v6, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3303
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v6, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3304
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v6}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3305
    const-string/jumbo v12, "mms"

    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "xcap"

    invoke-static {v13}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3307
    new-instance v9, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3309
    .local v9, "infoToUiForXcap1":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3310
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3311
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v9}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3315
    .end local v6    # "infoToUiForMms":Landroid/content/Intent;
    .end local v9    # "infoToUiForXcap1":Landroid/content/Intent;
    :sswitch_4
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_XCAP"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3317
    .local v8, "infoToUiForXcap":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v8, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3318
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v8, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3319
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v8}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3320
    const-string/jumbo v12, "xcap"

    invoke-static {v12}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "mms"

    invoke-static {v13}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3322
    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_MMS"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3324
    .local v7, "infoToUiForMms1":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v7, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3325
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v7, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3326
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v7}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3330
    .end local v7    # "infoToUiForMms1":Landroid/content/Intent;
    .end local v8    # "infoToUiForXcap":Landroid/content/Intent;
    :sswitch_5
    new-instance v3, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_EPDN"

    invoke-direct {v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3332
    .local v3, "infoToUiForEpdn":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v3, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3333
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v3, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3334
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3337
    .end local v3    # "infoToUiForEpdn":Landroid/content/Intent;
    :sswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v12, "com.sec.epdgtestapp.IPSEC_EVENT_REG_LISTENER_ADMIN"

    invoke-direct {v1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3339
    .local v1, "infoToUiForAdmin":Landroid/content/Intent;
    const-string/jumbo v12, "networkType"

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3340
    const-string/jumbo v12, "ipsecevent"

    invoke-virtual {v1, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3341
    sget-object v12, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 3277
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_3
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xf -> :sswitch_5
        0x17 -> :sswitch_6
        0x1b -> :sswitch_4
    .end sparse-switch
.end method

.method private sendWifiDelayRequest(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 4907
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendWifiDelayRequest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4908
    if-nez p1, :cond_0

    .line 4909
    sput-boolean v3, Lcom/sec/epdg/EpdgService;->mDisconnectRequired:Z

    .line 4911
    :cond_0
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v2, :cond_2

    .line 4912
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 4913
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4914
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x51

    iput v2, v0, Landroid/os/Message;->what:I

    .line 4915
    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 4916
    if-eqz p1, :cond_1

    const/16 v3, 0xfa0

    :cond_1
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 4917
    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 4919
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    move v2, v3

    .line 4915
    goto :goto_0
.end method

.method private sendWifiStatusChangedNotification(Z)V
    .locals 12
    .param p1, "isWifiConnected"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4965
    const/4 v6, 0x0

    .line 4966
    .local v6, "newSsid":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 4967
    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 4970
    :cond_0
    const/4 v3, 0x0

    .line 4971
    .local v3, "isSsidChanged":Z
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    .line 4973
    :cond_2
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SSID changed. Old Ssid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", New SSID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 4975
    const/4 v3, 0x1

    .line 4978
    :cond_3
    const-string v7, "[EPDGService]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wifi connected: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Ssid changed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4982
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v7

    invoke-virtual {v7, p1, v6}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiStatusChanged(ZLjava/lang/String;)V

    .line 4984
    const-string v7, "[EPDGService]"

    const-string v10, "Send Wifi status changed event to State Machines"

    invoke-static {v7, v10}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4985
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_7

    aget-object v1, v0, v2

    .line 4986
    .local v1, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v1}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v5

    .line 4987
    .local v5, "msg":Landroid/os/Message;
    const/16 v7, 0xa

    iput v7, v5, Landroid/os/Message;->what:I

    .line 4988
    if-eqz p1, :cond_5

    move v7, v8

    :goto_1
    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 4989
    if-eqz p1, :cond_4

    .line 4990
    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4991
    if-eqz v3, :cond_6

    move v7, v8

    :goto_2
    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 4993
    :cond_4
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 4985
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v7, v9

    .line 4988
    goto :goto_1

    :cond_6
    move v7, v9

    .line 4991
    goto :goto_2

    .line 4995
    .end local v1    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_7
    if-eqz p1, :cond_8

    .line 4998
    sget-boolean v7, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    if-eqz v7, :cond_9

    .line 4999
    sput-boolean v8, Lcom/sec/epdg/EpdgService;->mL2WAfterEpdgStatusQuery:Z

    .line 5003
    :goto_3
    iput-object v6, p0, Lcom/sec/epdg/EpdgService;->mLastSsid:Ljava/lang/String;

    .line 5005
    :cond_8
    return-void

    .line 5001
    :cond_9
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_3
.end method

.method private static setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 589
    sput-object p0, Lcom/sec/epdg/EpdgService;->mConfiguredWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 590
    return-void
.end method

.method private static setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V
    .locals 0
    .param p0, "ipType"    # Lcom/sec/epdg/EpdgService$IpType;

    .prologue
    .line 579
    sput-object p0, Lcom/sec/epdg/EpdgService;->mCurrentWifiIntfIpType:Lcom/sec/epdg/EpdgService$IpType;

    .line 580
    return-void
.end method

.method private static setDataDependency(ZZ)V
    .locals 3
    .param p0, "value"    # Z
    .param p1, "force"    # Z

    .prologue
    .line 5220
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data Dependency from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5223
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p0, :cond_1

    .line 5226
    :cond_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mDataDependency:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5232
    :cond_1
    return-void
.end method

.method private static setDataDependencyIfRequired()V
    .locals 4

    .prologue
    .line 5258
    sget-object v1, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5260
    .local v0, "mobileNetInfo":Landroid/net/NetworkInfo;
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current NetworkInfo for Mobile Internet PDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5262
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5263
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->setDataDependencyIfRequired(I)V

    .line 5265
    :cond_0
    return-void
.end method

.method private static setDataDependencyIfRequired(I)V
    .locals 5
    .param p0, "ratType"    # I

    .prologue
    .line 5235
    sget-object v2, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 5237
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5238
    const/4 v0, 0x1

    .line 5239
    .local v0, "dataDependency":Z
    sparse-switch p0, :sswitch_data_0

    .line 5247
    const/4 v0, 0x0

    .line 5250
    :sswitch_0
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data Dependency : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5253
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/epdg/EpdgService;->setDataDependency(ZZ)V

    .line 5255
    .end local v0    # "dataDependency":Z
    :cond_0
    return-void

    .line 5239
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method private setEpdgTemporaryBlocked(Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;)V
    .locals 5
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .prologue
    .line 4129
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-nez v2, :cond_0

    .line 4146
    :goto_0
    return-void

    .line 4132
    :cond_0
    sput-object p1, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    .line 4133
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->BLACKLIST_COUNTRY:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    if-ne v2, v3, :cond_2

    .line 4135
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v3, "country_detector"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    .line 4136
    .local v1, "countryDetector":Landroid/location/CountryDetector;
    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 4138
    .local v0, "country":Landroid/location/Country;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    .line 4139
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blacklist country code :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mBlackListCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    if-nez v2, :cond_1

    .line 4141
    new-instance v2, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    invoke-direct {v2, p0}, Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;-><init>(Lcom/sec/epdg/EpdgService;)V

    iput-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    .line 4143
    :cond_1
    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mCountryListener:Lcom/sec/epdg/EpdgService$EpdgCountryCodeListener;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 4145
    .end local v0    # "country":Landroid/location/Country;
    .end local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_2
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEpdgTemporaryBlocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgBlocking:Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgService$EpdgTempBlockReason;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4138
    .restart local v0    # "country":Landroid/location/Country;
    .restart local v1    # "countryDetector":Landroid/location/CountryDetector;
    :cond_3
    const-string v2, "UNKNOWN"

    goto :goto_1
.end method

.method private setHasPendingCdmaIndication(Z)V
    .locals 1
    .param p1, "isRequiredToSendCdmaIndication"    # Z

    .prologue
    .line 3135
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->CDMA_PROFILING:Z

    if-nez v0, :cond_0

    .line 3139
    :goto_0
    return-void

    .line 3138
    :cond_0
    sput-boolean p1, Lcom/sec/epdg/EpdgService;->mIsRequiredToSendCdmaIndication:Z

    goto :goto_0
.end method

.method private setHoDelay(Lcom/sec/epdg/EpdgService$HoDelayStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .prologue
    .line 3060
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    sget-object v1, Lcom/sec/epdg/EpdgService$HoDelayStatus;->DONOT_WAIT:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-eq v0, v1, :cond_0

    .line 3061
    sput-object p1, Lcom/sec/epdg/EpdgService;->mHoDelay:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    .line 3062
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoDelay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->SETTING_CHANGE:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_2

    .line 3064
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isOngoingConnectionOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3066
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3067
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 3085
    :cond_0
    :goto_0
    return-void

    .line 3071
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3072
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 3075
    :cond_2
    sget-object v0, Lcom/sec/epdg/EpdgService$HoDelayStatus;->REGISTRATION_FINISHED:Lcom/sec/epdg/EpdgService$HoDelayStatus;

    if-ne p1, v0, :cond_0

    .line 3076
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3077
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAYWIFI:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3078
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryL2WHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0

    .line 3079
    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3080
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGHODELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 3081
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/EpdgService;->retryW2LHandoverIfRequired(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static declared-synchronized setIsAirplaneMode(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 505
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsAirplaneMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit v0

    return-void

    .line 505
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsCsAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 678
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsCsAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit v0

    return-void

    .line 678
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIsEpdgAvailable(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    .line 682
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsEpdgAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string/jumbo v2, "ril.epdg.available"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    monitor-exit v1

    return-void

    .line 683
    :cond_0
    :try_start_1
    const-string/jumbo v0, "false"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 682
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setIsLteAvailable(Z)V
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 658
    const-class v0, Lcom/sec/epdg/EpdgService;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsLteAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    monitor-exit v0

    return-void

    .line 658
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static setIsOnDemandApnConnectionFailed(Z)V
    .locals 0
    .param p0, "isOnDemandApnConnectionFailedStatus"    # Z

    .prologue
    .line 1106
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->isOnDemandApnConnectionFailed:Z

    .line 1107
    return-void
.end method

.method private static setIsRssiDisabledForProfiling(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 564
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsRssiDisabledForProfiling: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsRssiDisabledForProfiling:Z

    .line 566
    return-void
.end method

.method private declared-synchronized setIsScreenOn(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mIsScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized setIsSsacVoiceEnabled(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    .line 524
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsSsacVoiceEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mSsacVoiceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit v1

    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setIsVoPSEnabled(Z)V
    .locals 4
    .param p0, "value"    # Z

    .prologue
    .line 514
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsVoPSEnabled: value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsVoPSEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    monitor-exit v1

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setIsWifiRssiInPollingZone(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 554
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsWifiRssiInPollingZone: value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsWifiRssiInPollingZone:Z

    .line 556
    return-void
.end method

.method private static declared-synchronized setIsimState(Z)V
    .locals 4
    .param p0, "state"    # Z

    .prologue
    .line 697
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIsimState: state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    sput-boolean p0, Lcom/sec/epdg/EpdgService;->mIsIsimReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    monitor-exit v1

    return-void

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setKeepAliveExpired(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveExpired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    monitor-exit p0

    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setKeepAliveRunning(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mKeepAliveRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V
    .locals 16
    .param p1, "reason"    # Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    .prologue
    .line 3934
    sget-object v12, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 3935
    .local v12, "status":Lcom/sec/epdg/EpdgService$VoWifiStatus;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 3939
    .local v11, "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :goto_0
    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 3940
    .local v10, "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_2

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 3941
    .local v2, "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_1
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 3942
    .local v3, "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_3

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 3943
    .local v4, "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :goto_2
    const/4 v9, 0x0

    .line 3944
    .local v9, "bootupChangeRequired":Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isVolteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    .line 3945
    .local v7, "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_UNKNOWN:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_4

    .line 4046
    :cond_0
    :goto_3
    return-void

    .line 3935
    .end local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .end local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .end local v9    # "bootupChangeRequired":Z
    .end local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .end local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_1
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto :goto_0

    .line 3940
    .restart local v10    # "emPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    .restart local v11    # "mcPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;
    :cond_2
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_1

    .line 3942
    .restart local v2    # "appPrfOrd":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v3    # "appPrfOrd2":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    :cond_3
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_2

    .line 3949
    .restart local v4    # "appPrfOrd3":Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;
    .restart local v7    # "bVolteTriState":Lcom/sec/epdg/EpdgConstants$TriState;
    .restart local v9    # "bootupChangeRequired":Z
    :cond_4
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsNetworkRoaming()Z

    move-result v5

    .line 3951
    .local v5, "bRoaming":Z
    :goto_4
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_6

    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->getIsWiFiPreferredInRoaming()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v14

    if-ne v13, v14, :cond_6

    const/4 v8, 0x1

    .line 3953
    .local v8, "bWifiPf":Z
    :goto_5
    sget-object v13, Lcom/sec/epdg/EpdgConstants$TriState;->TRI_TRUE:Lcom/sec/epdg/EpdgConstants$TriState;

    if-ne v13, v7, :cond_7

    const/4 v6, 0x1

    .line 3956
    .local v6, "bVolteState":Z
    :goto_6
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_8

    if-nez v5, :cond_8

    .line 3957
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - policy changed but it is home"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3949
    .end local v5    # "bRoaming":Z
    .end local v6    # "bVolteState":Z
    .end local v8    # "bWifiPf":Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    .line 3951
    .restart local v5    # "bRoaming":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    .line 3953
    .restart local v8    # "bWifiPf":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_6

    .line 3960
    .restart local v6    # "bVolteState":Z
    :cond_8
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->HAS_DIFFERENT_ROAMING_POLICY:Z

    if-eqz v13, :cond_9

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->BOOTUP_CHECKING:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_9

    .line 3965
    if-eqz v5, :cond_12

    if-eqz v8, :cond_12

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string/jumbo v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 3967
    const/4 v9, 0x1

    .line 3968
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - need update :power down at home and boot up in roaming area and WIFI preferred"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3983
    :cond_9
    :goto_7
    const-string v13, "[EPDGService]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setPolicyTable- VoWIFI :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "roaming : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "reason :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Volte status: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3986
    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_1c

    .line 3987
    if-eqz v6, :cond_17

    .line 3988
    if-eqz v8, :cond_15

    if-eqz v5, :cond_15

    .line 3989
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_14

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4000
    :cond_a
    :goto_8
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "imsvoicecall"

    invoke-virtual {v13, v14, v15, v4}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4003
    if-eqz v8, :cond_b

    if-eqz v5, :cond_b

    .line 4004
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1a

    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE_EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .line 4005
    :goto_9
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1b

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4008
    :cond_b
    :goto_a
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4010
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-eq v0, v13, :cond_c

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOLTE_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_d

    .line 4013
    :cond_c
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "imsvideovoicecall"

    invoke-virtual {v13, v14, v15, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4035
    :cond_d
    :goto_b
    if-nez v9, :cond_10

    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->PREFERRED_MODE_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_e

    if-nez v5, :cond_10

    :cond_e
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_f

    if-nez v5, :cond_10

    :cond_f
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->ROAMING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_11

    if-eqz v8, :cond_11

    .line 4039
    :cond_10
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "ims"

    invoke-virtual {v13, v14, v15, v11}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    .line 4042
    :cond_11
    sget-object v13, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    move-object/from16 v0, p1

    if-ne v0, v13, :cond_0

    .line 4043
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "emergency"

    invoke-virtual {v13, v14, v15, v10}, Lcom/sec/epdg/mapcon/PolicyManager;->updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto/16 :goto_3

    .line 3972
    :cond_12
    if-nez v5, :cond_13

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v13

    const-string/jumbo v14, "ims"

    invoke-virtual {v13, v14}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToWifi(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 3974
    const/4 v9, 0x1

    .line 3975
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable - need update :power down in roaming + WIFI perferred and boot up in home area"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3979
    :cond_13
    const-string v13, "[EPDGService]"

    const-string/jumbo v14, "setPolicyTable- skip "

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3989
    :cond_14
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_8

    .line 3991
    :cond_15
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_16

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_c
    goto/16 :goto_8

    :cond_16
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_c

    .line 3994
    :cond_17
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_18

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 3995
    :goto_d
    if-eqz v8, :cond_a

    if-eqz v5, :cond_a

    .line 3996
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_19

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_e
    goto/16 :goto_8

    .line 3994
    :cond_18
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_d

    .line 3996
    :cond_19
    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_e

    .line 4004
    :cond_1a
    sget-object v11, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_9

    .line 4005
    :cond_1b
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_IWLAN_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto/16 :goto_a

    .line 4018
    :cond_1c
    sget-object v13, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v13, v12, :cond_d

    .line 4020
    if-eqz v6, :cond_1e

    .line 4021
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1d

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .line 4025
    :goto_f
    const/4 v13, 0x2

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "imsvoicecall"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "imsvideovoicecall"

    aput-object v14, v1, v13

    .line 4028
    .local v1, "appList":[Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14, v1, v3}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4030
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v13

    sget-object v14, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "idle"

    invoke-virtual {v13, v14, v15, v2}, Lcom/sec/epdg/mapcon/PolicyManager;->updateAppPolicy(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V

    .line 4033
    sget-object v10, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    goto/16 :goto_b

    .line 4021
    .end local v1    # "appList":[Ljava/lang/String;
    :cond_1d
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_f

    .line 4023
    :cond_1e
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_CDMA_NETWORK:Z

    if-eqz v13, :cond_1f

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_CELLULAR:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    :goto_10
    goto :goto_f

    :cond_1f
    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->APP_LTE:Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    goto :goto_10
.end method

.method public static declared-synchronized setPreviousE911CallCount(I)V
    .locals 4
    .param p0, "count"    # I

    .prologue
    .line 534
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviousE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    sput p0, Lcom/sec/epdg/EpdgService;->mPreviousE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    monitor-exit v1

    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreviousNonE911CallCount(I)V
    .locals 4
    .param p0, "count"    # I

    .prologue
    .line 544
    const-class v1, Lcom/sec/epdg/EpdgService;

    monitor-enter v1

    :try_start_0
    const-string v0, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviousNonE911CallCount: count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sput p0, Lcom/sec/epdg/EpdgService;->mPreviousNonE911CallCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    monitor-exit v1

    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setRegistedNetworkStateChangeReceiver(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->mRegistedNetworkStateChangeReceiver:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    monitor-exit p0

    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVoWifiStatus(Lcom/sec/epdg/EpdgService$VoWifiStatus;)V
    .locals 6
    .param p1, "status"    # Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .prologue
    const/4 v5, 0x0

    .line 4051
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_5

    .line 4052
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_4

    .line 4053
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4054
    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    .line 4066
    :cond_0
    :goto_0
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWiFiCallEnabled is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4070
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_6

    .line 4071
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4072
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4073
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 4076
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 4078
    invoke-static {v5}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    .line 4080
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4081
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4082
    invoke-direct {p0, v5}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 4084
    :cond_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->unregisterListener()V

    .line 4116
    :cond_3
    :goto_1
    return-void

    .line 4056
    :cond_4
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_DISABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sput-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    goto :goto_0

    .line 4059
    :cond_5
    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne p1, v2, :cond_0

    .line 4061
    sput-object p1, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    .line 4062
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_0

    .line 4063
    sget-object v2, Lcom/sec/epdg/EpdgService$PolicyUpdateReason;->VOWIFI_SETTING_CHANGED:Lcom/sec/epdg/EpdgService$PolicyUpdateReason;

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setPolicyTable(Lcom/sec/epdg/EpdgService$PolicyUpdateReason;)V

    goto :goto_0

    .line 4086
    :cond_6
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_VIDEO_ONLY:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_7

    .line 4091
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_1

    .line 4093
    :cond_7
    sget-object v2, Lcom/sec/epdg/EpdgService;->mWifiCallingState:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    sget-object v3, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v2, v3, :cond_3

    .line 4095
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SEPARATE_VIDEO_FROM_VOWIFI:Z

    if-eqz v2, :cond_9

    .line 4096
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isSmartWifiRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4097
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v0

    .line 4098
    .local v0, "BEST_RSRP":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isEpdgAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    .line 4100
    .local v1, "LOW_RSRP":I
    :goto_2
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->setLteThreshold(II)V

    goto :goto_1

    .line 4098
    .end local v1    # "LOW_RSRP":I
    :cond_8
    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v1

    goto :goto_2

    .line 4104
    .end local v0    # "BEST_RSRP":I
    :cond_9
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    .line 4105
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getRegistedNetworkStateChangeReceiver()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4106
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4108
    sget-object v2, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4110
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/epdg/EpdgService;->setRegistedNetworkStateChangeReceiver(Z)V

    .line 4112
    :cond_a
    sget-object v2, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v2}, Lcom/sec/epdg/handover/EpdgImsListener;->registerListener()V

    goto/16 :goto_1
.end method

.method private setVowifiSetting(I)V
    .locals 3
    .param p1, "enable"    # I

    .prologue
    .line 3023
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_call_enable"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3025
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_wifi_call_enable_broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3026
    .local v0, "wifiCall":Landroid/content/Intent;
    const-string/jumbo v1, "wifi_call_enable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3027
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3028
    return-void
.end method

.method private startAlarmForInternetKeepAlive(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    .line 4389
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAlarmForInternetKeepAlive: Updating the alarm with delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4392
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    .line 4393
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4395
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.epdg.INTERNET_KEEP_ALIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    .line 4396
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetKeepAlive:Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Lcom/sec/epdg/EpdgUtils;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    .line 4398
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4401
    return-void
.end method

.method private startHandOverWifiToLte(I)I
    .locals 4
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3846
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Wifi RSSI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v3, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3847
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved Wifi RSSI Level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getSavedWifiRssiLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3849
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;

    invoke-direct {v1, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v2, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;

    invoke-direct {v2, p0, p1}, Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->isWifiTolteHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3853
    const/4 v0, 0x0

    return v0
.end method

.method private startHandoverLteToWifi(I)I
    .locals 6
    .param p1, "networkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 3789
    const/4 v3, 0x1

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3791
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (EPDG NOT AVAILABLE) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    :goto_0
    return v2

    .line 3798
    :cond_0
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->isWifiConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3799
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (WIFI NOT CONNECTED) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3804
    :cond_1
    sget-object v3, Lcom/sec/epdg/EpdgService;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3805
    .local v0, "nwkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3806
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot trigger L2W HO: (PDN Not active on other RAT) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " networkInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3814
    :cond_2
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v3, :cond_4

    .line 3815
    sget-object v3, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v3, v4, :cond_6

    .line 3816
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call status is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v5}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " check for LTE availability"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_5

    .line 3819
    const-string v3, "[EPDGService]"

    const-string v4, "LTE is available, now check for wifi strength"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3820
    sget-object v3, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    sget-object v4, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getCurrentWifiRssi(Landroid/content/Context;)I

    move-result v1

    .line 3821
    .local v1, "rssi":I
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3822
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi rssi is below handover threshold, no need to do L2W handover. rssi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wifi rssi A: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3825
    sget-object v3, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v3}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startL2WHandoverProfiling()V

    goto/16 :goto_0

    .line 3828
    :cond_3
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi rssi is good for handover. rssi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " wifi rssi A: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3838
    .end local v1    # "rssi":I
    :cond_4
    :goto_1
    const-string v2, "[HANDOFF]"

    const-string v3, "Starting HandOver To Wifi"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    sget-object v2, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    new-instance v3, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;

    invoke-direct {v3, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOSuccessRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    new-instance v4, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;

    invoke-direct {v4, p0, p1}, Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->islteToWifiHORecommended(ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3842
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3832
    :cond_5
    const-string v2, "[EPDGService]"

    const-string v3, "Connected mode but LTE is lost, perform L2W handover"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3835
    :cond_6
    const-string v2, "[EPDGService]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call status is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v4}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " perform L2W handover"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .locals 10
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2950
    const/4 v4, 0x0

    .line 2951
    .local v4, "retVal":Z
    if-nez p1, :cond_0

    .line 2952
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 2978
    .end local v4    # "retVal":Z
    .local v5, "retVal":I
    :goto_0
    return v5

    .line 2955
    .end local v5    # "retVal":I
    .restart local v4    # "retVal":Z
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v7

    if-nez v7, :cond_5

    .line 2956
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2957
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 2958
    .local v6, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2959
    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getPeriodicDpdTimer()I

    move-result v1

    .line 2960
    .local v1, "dpdTimer":I
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: dpd time is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    if-lez v1, :cond_2

    .line 2962
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v7

    invoke-virtual {v6}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v8

    mul-int/lit16 v9, v1, 0x3e8

    invoke-virtual {v7, v8, v9}, Lcom/sec/epdg/EpdgPeriodicDpd;->startTimerForPeriodicDpd(Ljava/lang/String;I)V

    .line 2964
    const/4 v4, 0x1

    .line 2977
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "dpdTimer":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_2
    const-string v7, "[EPDGService]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v4

    .line 2978
    .restart local v5    # "retVal":I
    goto :goto_0

    .line 2966
    .end local v5    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "dpdTimer":I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: dpd timer is 0"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2957
    .end local v1    # "dpdTimer":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2972
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_4
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2975
    :cond_5
    const-string v7, "[EPDGService]"

    const-string/jumbo v8, "startPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v7, v8}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private startTimerForPdnXfer(JI)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "networkType"    # I

    .prologue
    .line 5201
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTimerForPdnXfer: Updating the alarm with delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5203
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    if-eqz v0, :cond_0

    .line 5204
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5206
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-direct {v0, p0, p3}, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    .line 5207
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mEpdgPdnXFerRunnable:Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5208
    return-void
.end method

.method private startTimerOrPerformDns(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2015
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_NONE:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_3

    .line 2016
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2017
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv4 address is now configured, wait for ipv6 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2021
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 2079
    :cond_0
    :goto_0
    return-void

    .line 2022
    :cond_1
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2024
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is none and ipv6 address is now configured, wait for ipv4 address configuration"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2028
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 2030
    :cond_2
    const-string v0, "[EPDGService]"

    const-string v1, "Link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2032
    :cond_3
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_7

    .line 2033
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2035
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2036
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2037
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv4 and now ipv6 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2040
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2042
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto :goto_0

    .line 2044
    :cond_4
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv6 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->performDnsIfPossible()V

    goto :goto_0

    .line 2048
    :cond_5
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2049
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, again v4 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2052
    :cond_6
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v4, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2055
    :cond_7
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getCurrentWifiIntfIpType()Lcom/sec/epdg/EpdgService$IpType;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V6:Lcom/sec/epdg/EpdgService$IpType;

    if-ne v0, v1, :cond_0

    .line 2056
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2057
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setCurrentWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2058
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2059
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type was ipv6 and now ipv4 address is configured, stopping the timer and starting DNS"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIIPCONFIG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2062
    sget-object v0, Lcom/sec/epdg/EpdgService$IpType;->IP_TYPE_V4V6:Lcom/sec/epdg/EpdgService$IpType;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->setConfiguredWifiIntfIpType(Lcom/sec/epdg/EpdgService$IpType;)V

    .line 2064
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->checkAndUpdateWifiAvailability()V

    goto/16 :goto_0

    .line 2066
    :cond_8
    const-string v0, "[EPDGService]"

    const-string v1, "Wifi ip config timer is already expired when ipv4 address configured"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->performDnsIfPossible()V

    goto/16 :goto_0

    .line 2070
    :cond_9
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->isIPv6AddressScopeGlobal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2072
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, again v6 address is received, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2075
    :cond_a
    const-string v0, "[EPDGService]"

    const-string v1, "Current ip type is v6, link local ipv6 address is configured, ignore it"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startTimersIfNeeded()V
    .locals 3

    .prologue
    .line 3860
    sget-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    if-nez v1, :cond_3

    .line 3862
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isWifiSettingOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService;->getVoWifiStatus()Lcom/sec/epdg/EpdgService$VoWifiStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService$VoWifiStatus;->VOWIFI_ENABLE:Lcom/sec/epdg/EpdgService$VoWifiStatus;

    if-ne v1, v2, :cond_2

    .line 3864
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting on"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3865
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->shouldTEpdgTimerBeStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3866
    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    const-string/jumbo v1, "ro.csc.sales_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3868
    .local v0, "salesCode":Ljava/lang/String;
    const-string v1, "XFA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3869
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    .line 3883
    .end local v0    # "salesCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 3871
    .restart local v0    # "salesCode":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 3874
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_1
    const-string v1, "[EPDGService]"

    const-string v2, "IMS PDN not connected when wifi off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3877
    :cond_2
    const-string v1, "[EPDGService]"

    const-string v2, "Wifi Setting off"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3880
    :cond_3
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "isNotRequireTimer is true. reset it"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/epdg/EpdgService;->isNotRequiredTimer:Z

    goto :goto_0
.end method

.method private startWifiProfiling()V
    .locals 25

    .prologue
    .line 4450
    const/16 v24, 0x0

    .line 4451
    .local v24, "disableRSSI":Z
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v23

    .line 4455
    .local v23, "apnType":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsLteOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->shouldMoveToLte(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsCellularAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4459
    :cond_0
    const-string v1, "[EPDGService]"

    const-string v2, "Don\'t start wifi profiling.MAPCON is LTE or LTE:WIFI(NOT OoS)"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4503
    :goto_0
    return-void

    .line 4462
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/epdg/EpdgService;->mFqdnRetryCount:I

    .line 4465
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Lcom/sec/epdg/mapcon/MapconTable;->IsWifiOnlyAllowed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOLTE:Z

    if-eqz v1, :cond_2

    .line 4467
    const/16 v24, 0x1

    .line 4469
    :cond_2
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_THRESHOLD_BASED_HO:Z

    if-eqz v1, :cond_3

    .line 4470
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsRssiDisabledForProfiling()Z

    move-result v24

    .line 4472
    :cond_3
    const-string v1, "FTM"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ORO"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4473
    :cond_4
    const/16 v24, 0x0

    .line 4476
    :cond_5
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startWifiProfiling() disableRSSI : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4479
    if-eqz v24, :cond_9

    const/16 v13, -0x64

    .line 4480
    .local v13, "goodDB":I
    :goto_1
    if-eqz v24, :cond_a

    const/16 v14, -0x64

    .line 4481
    .local v14, "badDB":I
    :goto_2
    if-eqz v24, :cond_b

    const/16 v15, -0x64

    .line 4482
    .local v15, "thresholdDB":I
    :goto_3
    if-eqz v24, :cond_c

    const/16 v16, -0x64

    .line 4483
    .local v16, "goodDBWifiOnly":I
    :goto_4
    if-eqz v24, :cond_d

    const/16 v17, -0x64

    .line 4484
    .local v17, "badDBWifiOnly":I
    :goto_5
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v18

    .line 4485
    .local v18, "BEST_RSRP":I
    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v1, v2, :cond_6

    sget-object v1, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VIDEO_VOICE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_7

    .line 4487
    :cond_6
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v18

    .line 4488
    :cond_7
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v19

    .line 4489
    .local v19, "LOWEST_RSRP":I
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v20

    .line 4492
    .local v20, "cdmaRssi":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/epdg/EpdgService;->isHandoverRequiredOnCdmaIndication()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4493
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v2, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDG1XSCANNING:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v1, v2}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    .line 4496
    :cond_8
    sget-object v1, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgServerSelection;->getEpdgServerIp()Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/epdg/EpdgService;->mWifiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/epdg/EpdgService;->mLteOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/epdg/EpdgService;->mLteOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/epdg/EpdgService;->mCdmaOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/epdg/EpdgService;->mCdmaOff:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/epdg/EpdgService;->mL2WHandoverProfilingOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/epdg/EpdgService;->mWifiRssiIntentReceived:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/epdg/EpdgService;->mPollingRssiOn:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/epdg/EpdgService;->mPollingRssiOff:Ljava/lang/Runnable;

    sget-object v21, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/epdg/EpdgSettings;->getPktLossPercent()I

    move-result v21

    sget-object v22, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/epdg/EpdgSettings;->getSmartWifiTimer()I

    move-result v22

    invoke-virtual/range {v1 .. v22}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->startProfiling(Ljava/net/InetAddress;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;IIIIIIIIII)V

    goto/16 :goto_0

    .line 4479
    .end local v13    # "goodDB":I
    .end local v14    # "badDB":I
    .end local v15    # "thresholdDB":I
    .end local v16    # "goodDBWifiOnly":I
    .end local v17    # "badDBWifiOnly":I
    .end local v18    # "BEST_RSRP":I
    .end local v19    # "LOWEST_RSRP":I
    .end local v20    # "cdmaRssi":I
    :cond_9
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v13

    goto/16 :goto_1

    .line 4480
    .restart local v13    # "goodDB":I
    :cond_a
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v14

    goto/16 :goto_2

    .line 4481
    .restart local v14    # "badDB":I
    :cond_b
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiC()I

    move-result v15

    goto/16 :goto_3

    .line 4482
    .restart local v15    # "thresholdDB":I
    :cond_c
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInWifiOnly()I

    move-result v16

    goto/16 :goto_4

    .line 4483
    .restart local v16    # "goodDBWifiOnly":I
    :cond_d
    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveOutWifiOnly()I

    move-result v17

    goto/16 :goto_5
.end method

.method private static startWifiRssiIntentDelayTimerIfRequired(Ljava/lang/String;)V
    .locals 3
    .param p0, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2920
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWifiRssiIntentDelayTimerIfRequired: apn type is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    if-nez p0, :cond_1

    .line 2934
    :cond_0
    :goto_0
    return-void

    .line 2924
    :cond_1
    sget v0, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    if-lez v0, :cond_0

    .line 2925
    invoke-static {p0}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsWifiRssiInPollingZone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getIsImsCallConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2926
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2927
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->startTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    goto :goto_0

    .line 2930
    :cond_2
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already running"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopEpdgService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1763
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "stopEpdgService"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-eqz v0, :cond_1

    .line 1765
    const-string v0, "[EPDGService]"

    const-string v1, "WifiCall is disabled"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    const-string v0, "EVR"

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1767
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mWifiCallingOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1771
    :goto_0
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v0}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->stopProfiling()V

    .line 1772
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;->WIFI_DISCONNECT:Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgServerSelection;->resetEpdgServerIpAddressAndPool(Lcom/sec/epdg/EpdgService$EpdgServerIpResetReason;)V

    .line 1775
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V

    .line 1776
    invoke-static {}, Lcom/sec/epdg/EpdgService;->isWifiCallingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1777
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mNetworkStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1779
    :cond_0
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    .line 1782
    :cond_1
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-eqz v0, :cond_2

    .line 1783
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mSimStateChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1784
    sput-boolean v2, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    .line 1786
    :cond_2
    return-void

    .line 1769
    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mWifiOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private stopInternetKeepAlive()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4404
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "stopInternetKeepAlive()"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4405
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/epdg/EpdgService;->setKeepAliveRunning(Z)V

    .line 4406
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 4407
    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4409
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4410
    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mIntentKeepAlivePendingIntent:Landroid/app/PendingIntent;

    .line 4411
    iput-object v3, p0, Lcom/sec/epdg/EpdgService;->mInternetIntfName:Ljava/lang/String;

    .line 4413
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private stopPeriodicDpdIfNecessary(Ljava/lang/String;)Z
    .locals 9
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 2982
    const/4 v3, 0x0

    .line 2983
    .local v3, "retVal":Z
    if-nez p1, :cond_0

    .line 2984
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopPeriodicDpdIfNecessary: apnType is null, returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 3005
    .end local v3    # "retVal":Z
    .local v4, "retVal":I
    :goto_0
    return v4

    .line 2987
    .end local v4    # "retVal":I
    .restart local v3    # "retVal":Z
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgSettings;->isConnectedModeDpdAllow()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2988
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2989
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 2990
    .local v5, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2991
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: removing periodic dpd intent"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2992
    invoke-static {}, Lcom/sec/epdg/EpdgPeriodicDpd;->getInstance()Lcom/sec/epdg/EpdgPeriodicDpd;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/epdg/EpdgPeriodicDpd;->removePeriodicDpdPendingIntent(Ljava/lang/String;)V

    .line 2994
    const/4 v3, 0x1

    .line 3004
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_1
    :goto_2
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopPeriodicDpdIfNecessary: returning: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 3005
    .restart local v4    # "retVal":I
    goto :goto_0

    .line 2989
    .end local v4    # "retVal":I
    .restart local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2999
    .end local v0    # "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "sm":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_3
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: PDN is not connected on wifi"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3002
    :cond_4
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "stopPeriodicDpdIfNecessary: DPD is allowed in connected mode"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static stopWifiRssiIntentDelayTimerIfRequired()V
    .locals 2

    .prologue
    .line 2937
    sget v0, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    if-lez v0, :cond_0

    .line 2938
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->isTimerRunning(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2939
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer is running, stop it!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    sget-object v1, Lcom/sec/epdg/EpdgTimers$EpdgTimerType;->TEPDGWIFIRSSIDELAY:Lcom/sec/epdg/EpdgTimers$EpdgTimerType;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgTimers;->stopTimer(Lcom/sec/epdg/EpdgTimers$EpdgTimerType;)V

    .line 2947
    :cond_0
    :goto_0
    return-void

    .line 2943
    :cond_1
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "stopWifiRssiIntentDelayTimerIfRequired: Wifi Rssi intent delay timer already stopped"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCpEpdgHoThreshold(Z)V
    .locals 9
    .param p1, "isAvailable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4541
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveIn()I

    move-result v2

    .line 4542
    .local v2, "threshold4gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold4gRoveOut()I

    move-result v3

    .line 4543
    .local v3, "threshold4gRoveOut":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveIn()I

    move-result v4

    .line 4544
    .local v4, "threshold3gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold3gRoveOut()I

    move-result v5

    .line 4545
    .local v5, "threshold3gRoveOut":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveIn()I

    move-result v6

    .line 4546
    .local v6, "threshold2gRoveIn":I
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgSettings;->getThreshold2gRoveOut()I

    move-result v7

    .line 4548
    .local v7, "threshold2gRoveOut":I
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-nez v7, :cond_2

    .line 4551
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Can not use CP threshold"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4569
    :cond_1
    :goto_0
    return-void

    .line 4555
    :cond_2
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    const-string/jumbo v8, "ims"

    invoke-virtual {v0, v8}, Lcom/sec/epdg/mapcon/MapconTable;->isVoWifiPref(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4556
    const-string v0, "[EPDGService]"

    const-string v1, "Cellular preferred mode set threshold"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    if-eq v0, p1, :cond_1

    .line 4558
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    move v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    .line 4560
    iput-boolean p1, p0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    goto :goto_0

    .line 4563
    :cond_3
    iget-boolean v0, p0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    .line 4564
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    invoke-interface/range {v0 .. v7}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgHoThreshold(ZIIIIII)V

    .line 4566
    iput-boolean v1, p0, Lcom/sec/epdg/EpdgService;->isCpThresholdTurnOn:Z

    goto :goto_0
.end method

.method private updateMapconTable(Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .locals 9
    .param p1, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 5658
    if-nez p1, :cond_0

    .line 5659
    const-string v6, "[EPDGService]"

    const-string/jumbo v7, "prefered Order is NULL"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5676
    :goto_0
    return-void

    .line 5663
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getAllApnSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 5664
    .local v0, "allApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/epdg/IWlanApnSetting;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5665
    .local v2, "apnIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/IWlanApnSetting;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5666
    .local v5, "updateApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5667
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/IWlanApnSetting;

    .line 5668
    .local v4, "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v1

    .line 5669
    .local v1, "apn":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 5670
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5673
    .end local v1    # "apn":Ljava/lang/String;
    .end local v4    # "iwlanApnSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 5674
    .local v3, "apnList":[Ljava/lang/String;
    const-string v6, "[EPDGService]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prefered Order for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5675
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v3, p1}, Lcom/sec/epdg/mapcon/MapconTable;->updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V

    goto :goto_0
.end method


# virtual methods
.method public bootCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 987
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootCompleted: bIsSimReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEpdgReady is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    sget-boolean v0, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    if-nez v0, :cond_1

    .line 991
    const-string v0, "[EPDGService]"

    const-string v1, "EPDG is not ready yet."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSimReady:Z

    if-eq v0, v3, :cond_3

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/telephony/MultiSimManager;->getDefaultPhoneId(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-boolean v0, Lcom/sec/epdg/EpdgService;->bIsSim2Ready:Z

    if-ne v0, v3, :cond_0

    .line 998
    :cond_3
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 999
    new-instance v0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 7
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 3687
    const/4 v2, -0x1

    .line 3688
    .local v2, "profileId":I
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3689
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2b

    iput v3, v1, Landroid/os/Message;->what:I

    .line 3690
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    .line 3691
    if-ne v2, v6, :cond_0

    .line 3692
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    .line 3694
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3696
    add-int/lit8 v2, v0, 0x1

    .line 3697
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    .end local v0    # "i":I
    :cond_0
    if-ne v2, v6, :cond_1

    iget-object v3, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    instance-of v3, v3, Lcom/sec/epdg/EpdgTestRilAdapter;

    if-eqz v3, :cond_1

    .line 3704
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgSettings;->getTestNetInterfaceNum()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 3705
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect() with EpdgTestRilAdapter - find dummyid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    :cond_1
    if-eq v2, v6, :cond_2

    .line 3709
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 3710
    invoke-static {p1}, Lcom/sec/epdg/EpdgService;->getApnNameByApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3711
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_CONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3713
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3715
    :cond_2
    const/4 v3, 0x0

    return v3

    .line 3693
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public disconnect(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 8
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3721
    const/4 v2, -0x1

    .line 3722
    .local v2, "profileId":I
    sget-object v3, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3723
    .local v1, "msg":Landroid/os/Message;
    const/16 v3, 0x2c

    iput v3, v1, Landroid/os/Message;->what:I

    .line 3724
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getProfileIdbyApnType(Ljava/lang/String;)I

    move-result v2

    .line 3725
    if-ne v2, v6, :cond_0

    .line 3726
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() Unable to get cid for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/sec/epdg/IWlanEnum;->IWLAN_MAX_SETTING:I

    if-ge v0, v3, :cond_0

    .line 3728
    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3730
    add-int/lit8 v2, v0, 0x1

    .line 3731
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() find SM for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3737
    .end local v0    # "i":I
    :cond_0
    if-eq v2, v6, :cond_2

    .line 3738
    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;

    invoke-direct {v4, v2}, Lcom/sec/epdg/EpdgRilInterface$ApnDetachRequest;-><init>(I)V

    invoke-direct {v3, v7, v4, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3739
    const-string v3, "[HANDOFF]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post event RIL_DISCONNECT_REQ for profileId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3741
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3746
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 3727
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3743
    .end local v0    # "i":I
    :cond_2
    const-string v3, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect() can\'t be triggered for apnType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 442
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump EpdgService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump started"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v6, "EpdgService Dumpstate"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    .local v0, "arr$":[Lcom/sec/epdg/IPSecDataConnSM;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 453
    .local v3, "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v3, :cond_1

    .line 454
    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnContextDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 458
    .end local v3    # "handoverSM":Lcom/sec/epdg/IPSecDataConnSM;
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgRilSharedData;->getInstance()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    .line 459
    .local v1, "data":Lcom/sec/epdg/EpdgRilSharedData;
    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v1    # "data":Lcom/sec/epdg/EpdgRilSharedData;
    :goto_2
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-eqz v6, :cond_3

    .line 464
    sget-object v6, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    invoke-virtual {v6}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    :cond_3
    invoke-static {}, Lcom/sec/epdg/mapcon/PolicyManager;->getInstance()Lcom/sec/epdg/mapcon/PolicyManager;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 467
    const-string v6, "EPDG server last DNS status"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Lcom/sec/epdg/EpdgServerSelection;->getInstance()Lcom/sec/epdg/EpdgServerSelection;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/epdg/EpdgServerSelection;->isEpdgServerDnsValid()Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "UNSUCCESSFUL"

    :goto_3
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EPDG Enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sec/epdg/EpdgService;->mEnableEpdg:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    if-eqz v6, :cond_5

    .line 472
    sget-object v6, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v6}, Lcom/sec/epdg/handover/EpdgImsListener;->getEpdgImsSettings()Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 473
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Volte is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoLteEnabled()Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " VoWifi is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->getIsVoWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ims Listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    invoke-virtual {v7}, Lcom/sec/epdg/handover/EpdgImsListener;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    :cond_5
    sget-boolean v6, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v6, :cond_6

    .line 479
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vowifi MDN : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "vowifi_mdn"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    :cond_6
    sget-object v6, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    if-eqz v6, :cond_7

    .line 483
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VoWifi Timers :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/epdg/EpdgService;->mEpdgTimer:Lcom/sec/epdg/EpdgTimers;

    invoke-virtual {v7}, Lcom/sec/epdg/EpdgTimers;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    :cond_7
    invoke-static {}, Lcom/sec/epdg/Log;->dump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    invoke-static {p2}, Lcom/sec/epdg/EpdgDumpState;->dump(Ljava/io/PrintWriter;)V

    .line 487
    const-string v6, "[EPDGService]"

    const-string v7, "EpdgService dump finished"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :catch_0
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v6, "EpdgRilSharedData : null"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 468
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_8
    const-string v6, "SUCCESSFUL"

    goto/16 :goto_3
.end method

.method public enableTestRilAdapter(Z)I
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3752
    if-eqz p1, :cond_0

    .line 3753
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using TesRilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3754
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgTestRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgTestRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    .line 3759
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3756
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "Changing the RIL Operating Mode using RilAdapter"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    sget-object v0, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/epdg/EpdgRilAdapter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgRilAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;

    goto :goto_0
.end method

.method public isDuringHandoverForIMS()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3764
    const/16 v4, 0xb

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getProfileIDbyNetworkType(I)I

    move-result v1

    .line 3765
    .local v1, "cid":I
    if-gez v1, :cond_1

    .line 3766
    const-string v3, "[EPDGService]"

    const-string/jumbo v4, "invalid cid for ims"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3785
    :cond_0
    :goto_0
    return v2

    .line 3769
    :cond_1
    sget-boolean v4, Lcom/sec/epdg/EpdgService;->mIsEpdgInitialized:Z

    if-nez v4, :cond_2

    .line 3770
    const-string v3, "[EPDGService]"

    const-string v4, "EpdgService not initialized."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3774
    :cond_2
    sget-object v4, Lcom/sec/epdg/EpdgService;->mHOStateMachines:[Lcom/sec/epdg/IPSecDataConnSM;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanState;->getState()I

    move-result v0

    .line 3775
    .local v0, "apnState":I
    const-string v4, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDuringHandoverForIMS(), cid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnState is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3

    const/4 v4, 0x7

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    :cond_3
    move v2, v3

    .line 3783
    goto :goto_0
.end method

.method public makeEpdgServiceUp()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1005
    sget-object v6, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    .line 1006
    .local v6, "context":Landroid/content/Context;
    new-instance v0, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;

    sget-object v2, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;ZZZ)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/epdg/EpdgService$MapconDatabaseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1007
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mDefaultDataSubChangeReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1012
    :cond_0
    new-instance v0, Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    sget-object v1, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/epdg/EpdgService$EpdgContentObserver;-><init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    .line 1013
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_IWLANSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1015
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/EpdgService;->CONTENT_URI_EPDGSETTINGS:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1017
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1020
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1023
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->VOWIFI_BLACKLIST_BLOCKING:Z

    if-eqz v0, :cond_1

    .line 1024
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgWfcProfileReader;->CONTENT_URI_WFCPROFILE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/epdg/EpdgService;->mEpdgContentObserver:Lcom/sec/epdg/EpdgService$EpdgContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1029
    :cond_1
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1030
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mIPCallAdbCommandReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.commands.ipcall.action_ip_setting_change"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1033
    :cond_2
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mWiFiCallEnableIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "action_wifi_call_enable_broadcast"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1036
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 1037
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "action_wfc_switch_profile_broadcast"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1038
    const/16 v0, -0x64

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1039
    iget-object v0, p0, Lcom/sec/epdg/EpdgService;->mPreferedModeIntentReceiver:Lcom/sec/epdg/EpdgBroadcastReceiver;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1040
    return-void
.end method

.method public sendEventToStateMachine(IILandroid/os/IBinder;)I
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "event"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3655
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/epdg/EpdgService$SendEventToSMRunnable;-><init>(Lcom/sec/epdg/EpdgService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3657
    const/4 v0, 0x0

    return v0
.end method

.method public startForceToHandOverToEPDG(ZILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 11
    .param p1, "isEpdg"    # Z
    .param p2, "networkType"    # I
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3604
    sget-object v0, Lcom/sec/epdg/EpdgService;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    if-nez v0, :cond_0

    .line 3605
    const-string v0, "[EPDGService]"

    const-string/jumbo v1, "startForceToHandOverToEPDG : mSmartWifiAdapter is null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3606
    const/4 v0, -0x1

    .line 3618
    :goto_0
    return v0

    .line 3608
    :cond_0
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startForceToHandOverToEPDG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    if-eqz p1, :cond_1

    const/4 v8, 0x1

    .line 3610
    .local v8, "wificallenable":I
    :goto_1
    const/4 v9, -0x1

    .line 3611
    .local v9, "wificallpreferred":I
    if-eqz p1, :cond_2

    .line 3612
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3613
    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3618
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3609
    .end local v8    # "wificallenable":I
    .end local v9    # "wificallpreferred":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 3615
    .restart local v8    # "wificallenable":I
    .restart local v9    # "wificallpreferred":I
    :cond_2
    sget-object v10, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/epdg/EpdgService$WifiCallHandover;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/epdg/EpdgService$WifiCallHandover;-><init>(Lcom/sec/epdg/EpdgService;ZIILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3616
    sget-object v0, Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/epdg/EpdgService$WifiCallEnabler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v8, v9, v2}, Lcom/sec/epdg/EpdgService$WifiCallEnabler;-><init>(Lcom/sec/epdg/EpdgService;IIZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3638
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverLteToWifi : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3643
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    .line 3646
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addL2WApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 3649
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandoverLteToWifi(I)I

    move-result v0

    return v0
.end method

.method public startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3624
    const-string v0, "[HANDOFF]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startHandOverWifiToLte : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3626
    invoke-static {}, Lcom/sec/epdg/mapcon/MapconTable;->getInstance()Lcom/sec/epdg/mapcon/MapconTable;

    move-result-object v0

    sget-object v1, Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/sec/epdg/mapcon/MapconTable;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V

    .line 3629
    new-instance v0, Ljava/lang/Integer;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/epdg/EpdgDumpState;->addW2LApiCall(ILjava/lang/String;Ljava/lang/String;)V

    .line 3632
    invoke-direct {p0, p1}, Lcom/sec/epdg/EpdgService;->startHandOverWifiToLte(I)I

    move-result v0

    return v0
.end method
