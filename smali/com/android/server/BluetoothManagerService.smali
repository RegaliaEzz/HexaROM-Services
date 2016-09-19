.class Lcom/android/server/BluetoothManagerService;
.super Landroid/bluetooth/IBluetoothManager$Stub;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothManagerService$BluetoothHandler;,
        Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;,
        Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;,
        Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    }
.end annotation


# static fields
.field private static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field private static final ADD_PROXY_DELAY_MS:I = 0x64

.field private static BLE_ALWAYS_ON:Z = false

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_OFF:I = 0x0

.field private static final BLUETOOTH_ON_AIRPLANE:I = 0x2

.field private static final BLUETOOTH_ON_BLUETOOTH:I = 0x1

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final BLUETOOTH_PROPERTY_SECURITY_POLICY:Ljava/lang/String; = "service.bt.security.policy.mode"

.field private static final DBG:Z

.field private static final DEVICE_TYPE_NAMES:[Ljava/lang/String;

.field private static final ERROR_RESTART_TIME_MS:I = 0xbb8

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final MAX_ERROR_RESTART_RETRIES:I = 0x6

.field private static final MAX_SAVE_RETRIES:I = 0x3

.field private static final MESSAGE_ADD_PROXY_DELAYED:I = 0x190

.field private static final MESSAGE_BIND_PROFILE_SERVICE:I = 0x191

.field private static final MESSAGE_BLUETOOTH_SERVICE_CONNECTED:I = 0x28

.field private static final MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED:I = 0x29

.field private static final MESSAGE_BLUETOOTH_STATE_CHANGE:I = 0x3c

.field private static final MESSAGE_BT_IT_POLICY:I = 0x5

.field private static final MESSAGE_CHINA_BT_ENABLE_SECURITY_POPUP:I = 0x2bc

.field private static final MESSAGE_DISABLE:I = 0x2

.field private static final MESSAGE_ENABLE:I = 0x1

.field private static final MESSAGE_GET_NAME_AND_ADDRESS:I = 0xc8

.field private static final MESSAGE_GOOGLE_BLE_STATE_CHANGE:I = 0x2be

.field private static final MESSAGE_REGISTER_ADAPTER:I = 0x14

.field private static final MESSAGE_REGISTER_STATE_CHANGE_CALLBACK:I = 0x1e

.field private static final MESSAGE_REGISTER_STATE_DISBLE_BLE_CALLBACK:I = 0x3fa

.field private static final MESSAGE_RESTART_BLUETOOTH_SERVICE:I = 0x2a

.field private static final MESSAGE_SAMSUNG_BLE_STATE_CHANGE:I = 0x2bf

.field private static final MESSAGE_SAVE_NAME_AND_ADDRESS:I = 0xc9

.field private static final MESSAGE_TIMEOUT_BIND:I = 0x64

.field private static final MESSAGE_TIMEOUT_UNBIND:I = 0x65

.field private static final MESSAGE_UNREGISTER_ADAPTER:I = 0x15

.field private static final MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK:I = 0x1f

.field private static final MESSAGE_UNREGISTER_STATE_DISBLE_BLE_CALLBACK:I = 0x3fb

.field private static final MESSAGE_USER_SWITCHED:I = 0x12c

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDRESS:Ljava/lang/String; = "bluetooth_address"

.field private static final SECURE_SETTINGS_BLUETOOTH_ADDR_VALID:Ljava/lang/String; = "bluetooth_addr_valid"

.field private static final SECURE_SETTINGS_BLUETOOTH_NAME:Ljava/lang/String; = "bluetooth_name"

.field private static final SERVICE_IBLUETOOTH:I = 0x1

.field private static final SERVICE_IBLUETOOTHGATT:I = 0x2

.field private static final SERVICE_RESTART_TIME_MS:I = 0xc8

.field private static final STATE_BTMGR_BLE_OFF:I = 0x0

.field private static final STATE_BTMGR_BLE_ON:I = 0x2

.field private static final STATE_BTMGR_BLE_TURNING_OFF:I = 0x3

.field private static final STATE_BTMGR_BLE_TURNING_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothManagerService"

.field private static final TIMEOUT_BIND_MS:I = 0xbb8

.field private static final TIMEOUT_SAVE_MS:I = 0x1f4

.field private static final USER_SWITCHED_TIME_MS:I = 0xc8

.field private static isEnablePopup:Z

.field private static limit:I

.field private static mBleAppCount:I

.field private static mPolicy:I

.field private static mSamsungBleAppCount:I

.field private static mShutdown:Z

.field private static mainBuffer:Ljava/lang/String;

.field private static subBuffer:Ljava/lang/StringBuilder;


# instance fields
.field private btEnablePopUp:Landroid/app/AlertDialog;

.field private chinaThirdPartyAppName:Ljava/lang/String;

.field logDir:Ljava/io/File;

.field logDirp:Ljava/lang/String;

.field private mAddress:Ljava/lang/String;

.field private mBinding:Z

.field mBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetooth:Landroid/bluetooth/IBluetooth;

.field private final mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

.field private mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDisableBleCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothDisableBleCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEnable:Z

.field private mEnableExternal:Z

.field private mEnablingAirplane:Z

.field private mErrorRecoveryRetryCounter:I

.field private mGoogleBleState:I

.field private final mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

.field private mName:Ljava/lang/String;

.field private final mProfileServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietEnable:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRpaGeneration:Z

.field private mSamsugBleState:I

.field mSamsungBleApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/bluetooth/IBluetoothStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemUiUid:I

.field private mUnbinding:Z

.field private mUsingSSUpdate:Z

.field mainBfp:Ljava/lang/String;

.field mainF:Ljava/io/File;

.field subBfp:Ljava/lang/String;

.field subF:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 136
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    .line 200
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "???"

    aput-object v3, v0, v1

    const-string v3, "BR/EDR"

    aput-object v3, v0, v2

    const-string v2, "LE"

    aput-object v2, v0, v4

    const/4 v2, 0x3

    const-string v3, "DUAL"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/server/BluetoothManagerService;->DEVICE_TYPE_NAMES:[Ljava/lang/String;

    .line 210
    sput v4, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 230
    sput v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 231
    sput v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 256
    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    .line 257
    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    .line 272
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    .line 273
    const/high16 v0, 0x80000

    sput v0, Lcom/android/server/BluetoothManagerService;->limit:I

    .line 281
    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    return-void

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 470
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManager$Stub;-><init>()V

    .line 246
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 258
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    .line 259
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    .line 260
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    .line 261
    iput v5, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 262
    iput v5, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 266
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    .line 274
    const-string v3, "/data/misc/bluedroiddump"

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    .line 275
    const-string v3, "/data/misc/bluedroiddump/mainBuffer.log"

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    .line 276
    const-string v3, "/data/misc/bluedroiddump/subBuffer.log"

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    .line 283
    const-string v3, ""

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 325
    new-instance v3, Lcom/android/server/BluetoothManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$1;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    .line 333
    new-instance v3, Lcom/android/server/BluetoothManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$2;-><init>(Lcom/android/server/BluetoothManagerService;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 776
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    .line 777
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    .line 1843
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-direct {v3, p0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    .line 471
    new-instance v3, Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    .line 473
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    .line 474
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 475
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 476
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 477
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 478
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 479
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 480
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 481
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 482
    iput-object v6, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 483
    iput v5, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    .line 484
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 486
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V

    .line 487
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 488
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    .line 489
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v3, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    .line 490
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 493
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 494
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 496
    :cond_0
    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 498
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 502
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->loadStoredNameAndAddress()V

    .line 503
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 504
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 507
    :cond_1
    const/4 v2, -0x1

    .line 509
    .local v2, "sysUiUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 514
    :goto_0
    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I

    .line 516
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->setBdroidVersion()V

    .line 517
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->setBleAutoEnable()V

    .line 519
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->readFromFile()V

    .line 523
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->registerKnoxModeChangeObserver()V

    .line 526
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 512
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to resolve SystemUI\'s UID."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/BluetoothManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/BluetoothManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/BluetoothManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BluetoothManagerService;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->checkItPolicy(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/BluetoothManagerService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    return-void
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return p0
.end method

.method static synthetic access$206()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0
.end method

.method static synthetic access$208()I
    .locals 2

    .prologue
    .line 134
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    return-void
.end method

.method static synthetic access$2600(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 134
    invoke-static {p0}, Lcom/android/server/BluetoothManagerService;->debugGetMessageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/BluetoothManagerService;ZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/BluetoothManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService;->handleEnable(Z)V

    return-void
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 134
    sput p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return p0
.end method

.method static synthetic access$306()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 134
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothGatt;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/BluetoothManagerService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/BluetoothManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->bluetoothStateChangeHandler(II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->recoverBluetoothServiceFromError()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/BluetoothManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/server/BluetoothManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    return p1
.end method

.method static synthetic access$4800(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/BluetoothManagerService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    return-void
.end method

.method static synthetic access$5102(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->unbindAllBluetoothProfileServices()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5400()I
    .locals 1

    .prologue
    .line 134
    sget v0, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->enablePopupForBluetooth()V

    return-void
.end method

.method static synthetic access$5602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 134
    sput-boolean p0, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/BluetoothManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/BluetoothManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    return v0
.end method

.method private bluetoothStateChangeHandler(II)V
    .locals 12
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0xf

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2521
    const/4 v4, 0x1

    .line 2522
    .local v4, "isStandardBroadcast":Z
    if-eq p1, p2, :cond_9

    .line 2524
    if-eq p2, v10, :cond_0

    const/16 v7, 0xa

    if-ne p2, v7, :cond_1a

    .line 2526
    :cond_0
    const/16 v7, 0xd

    if-ne p1, v7, :cond_a

    if-ne p2, v10, :cond_a

    move v3, v5

    .line 2529
    .local v3, "intermediate_off":Z
    :goto_0
    const/16 v7, 0xa

    if-ne p2, v7, :cond_c

    .line 2531
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "BluetoothManagerService"

    const-string v8, "Bluetooth is complete turn off"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    :cond_1
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    .line 2533
    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    .line 2534
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->canUnbindBluetoothService()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2535
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "BluetoothManagerService"

    const-string v8, "Good to unbind!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    :cond_2
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2537
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 2538
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-eqz v7, :cond_3

    .line 2539
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2540
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 2542
    :cond_3
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-eqz v7, :cond_4

    .line 2543
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2544
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 2547
    :cond_4
    const/4 v4, 0x0

    .line 2549
    :cond_5
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    if-ne v7, v5, :cond_b

    .line 2550
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_6

    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bluetooth is LE only mode After shutdown mBleAppCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    :cond_6
    sput-boolean v6, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    .line 2552
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v6

    if-nez v6, :cond_7

    .line 2553
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v7

    .line 2554
    :try_start_0
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 2555
    sget v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 2556
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 2558
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 2559
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2676
    .end local v3    # "intermediate_off":Z
    :cond_7
    :goto_1
    if-eqz v4, :cond_9

    .line 2677
    if-ne p1, v10, :cond_8

    .line 2679
    const/16 p1, 0xa

    .line 2681
    :cond_8
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2682
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2683
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2684
    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2685
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2688
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    return-void

    :cond_a
    move v3, v6

    .line 2526
    goto/16 :goto_0

    .line 2559
    .restart local v3    # "intermediate_off":Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2561
    :cond_b
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v6, :cond_7

    .line 2562
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v7

    .line 2563
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 2564
    monitor-exit v7

    goto :goto_1

    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 2566
    :cond_c
    if-nez v3, :cond_14

    .line 2568
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "BluetoothManagerService"

    const-string v7, "Bluetooth is in LE only mode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :cond_d
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v6, :cond_12

    .line 2570
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "BluetoothManagerService"

    const-string v7, "Calling BluetoothGattServiceUp"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    :cond_e
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->onBluetoothGattServiceUp()V

    .line 2580
    :cond_f
    :goto_2
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v5, :cond_10

    .line 2581
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2582
    iput v9, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 2584
    :cond_10
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v5, :cond_11

    .line 2585
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2586
    iput v9, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 2589
    :cond_11
    const/4 v4, 0x0

    goto :goto_1

    .line 2573
    :cond_12
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_13

    const-string v6, "BluetoothManagerService"

    const-string v7, "Binding Bluetooth GATT service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :cond_13
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth_le"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2576
    new-instance v1, Landroid/content/Intent;

    const-class v6, Landroid/bluetooth/IBluetoothGatt;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2577
    .local v1, "i":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v7, 0x41

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v6, v7, v8}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_2

    .line 2591
    .end local v1    # "i":Landroid/content/Intent;
    :cond_14
    if-eqz v3, :cond_7

    .line 2592
    sget-boolean v7, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v7, :cond_15

    const-string v7, "BluetoothManagerService"

    const-string v8, "Intermediate off, back to LE only mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    :cond_15
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v7, v9, :cond_18

    .line 2595
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2604
    :cond_16
    :goto_3
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v7, v9, :cond_19

    .line 2605
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2614
    :cond_17
    :goto_4
    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2616
    const/16 p2, 0xa

    .line 2617
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBrEdrDownCallback()V

    goto/16 :goto_1

    .line 2596
    :cond_18
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v7, v11, :cond_16

    .line 2597
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2598
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-lez v7, :cond_16

    .line 2599
    const/16 v7, 0x10

    invoke-direct {p0, v10, v7}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2600
    const/16 v7, 0x10

    const/16 v8, 0xa

    invoke-direct {p0, v7, v8}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2601
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto :goto_3

    .line 2606
    :cond_19
    iget v7, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v7, v11, :cond_17

    .line 2607
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2608
    sget v7, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-lez v7, :cond_17

    .line 2609
    const/16 v7, 0x10

    invoke-direct {p0, v10, v7}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2610
    const/16 v7, 0x10

    const/16 v8, 0xa

    invoke-direct {p0, v7, v8}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2611
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    goto :goto_4

    .line 2619
    .end local v3    # "intermediate_off":Z
    :cond_1a
    const/16 v7, 0xc

    if-ne p2, v7, :cond_1f

    .line 2620
    const/16 v7, 0xc

    if-ne p2, v7, :cond_1e

    .line 2621
    .local v5, "isUp":Z
    :goto_5
    invoke-direct {p0, v5}, Lcom/android/server/BluetoothManagerService;->sendBluetoothStateCallback(Z)V

    .line 2623
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v9, :cond_1b

    .line 2624
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2626
    :cond_1b
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v9, :cond_1c

    .line 2627
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2629
    :cond_1c
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    if-nez v6, :cond_7

    .line 2630
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_1d

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2632
    :cond_1d
    :try_start_3
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 2633
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 2634
    :catch_0
    move-exception v0

    .line 2635
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration fails"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "isUp":Z
    :cond_1e
    move v5, v6

    .line 2620
    goto :goto_5

    .line 2639
    :cond_1f
    const/16 v6, 0xe

    if-eq p2, v6, :cond_20

    const/16 v6, 0x10

    if-ne p2, v6, :cond_25

    .line 2641
    :cond_20
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ble Turning On/Off, G state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", S state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-eq v6, v5, :cond_21

    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v11, :cond_22

    .line 2643
    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2645
    :cond_22
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-eq v6, v5, :cond_23

    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v11, :cond_24

    .line 2646
    :cond_23
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2648
    :cond_24
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2650
    :cond_25
    const/16 v6, 0xb

    if-eq p2, v6, :cond_26

    const/16 v6, 0xd

    if-ne p2, v6, :cond_7

    .line 2652
    :cond_26
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Turning On/Off, G state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", S state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mBLE count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", s BLE count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v9, :cond_28

    .line 2655
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2664
    :cond_27
    :goto_6
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v9, :cond_2a

    .line 2665
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    goto/16 :goto_1

    .line 2656
    :cond_28
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v5, :cond_29

    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v7, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v6, v7

    if-nez v6, :cond_29

    .line 2657
    const/16 v6, 0xa

    const/16 v7, 0xe

    invoke-direct {p0, v6, v7}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2658
    const/16 v6, 0xe

    invoke-direct {p0, v6, v10}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2659
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    .line 2660
    iput v9, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto :goto_6

    .line 2661
    :cond_29
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v6, v11, :cond_27

    .line 2662
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendBleStateChanged(II)V

    goto :goto_6

    .line 2666
    :cond_2a
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v5, :cond_2b

    sget v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-nez v6, :cond_2b

    .line 2667
    const/16 v6, 0xa

    const/16 v7, 0xe

    invoke-direct {p0, v6, v7}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2668
    const/16 v6, 0xe

    invoke-direct {p0, v6, v10}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2669
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    .line 2670
    iput v9, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    goto/16 :goto_1

    .line 2671
    :cond_2b
    iget v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v6, v11, :cond_7

    .line 2672
    invoke-direct {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->sendSamsungBleStateChanged(II)V

    goto/16 :goto_1
.end method

.method public static bufferLimitReached()Z
    .locals 2

    .prologue
    .line 3095
    const-string v0, "BluetoothManagerService"

    const-string v1, "In bufferLimitReached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    .line 3097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    .line 3098
    const/4 v0, 0x1

    return v0
.end method

.method private canUnbindBluetoothService()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2769
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 2778
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2785
    :goto_0
    return v1

    .line 2779
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :try_start_3
    monitor-exit v2

    goto :goto_0

    .line 2784
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2780
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    :try_start_5
    monitor-exit v2

    goto :goto_0

    .line 2781
    :catch_0
    move-exception v0

    .line 2782
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "getState()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2784
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method private checkIfCallerIsForegroundUser()Z
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2461
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 2462
    .local v4, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2463
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2464
    .local v2, "callingIdentity":J
    iget-object v12, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "user"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 2465
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2466
    .local v7, "ui":Landroid/content/pm/UserInfo;
    if-eqz v7, :cond_3

    iget v6, v7, Landroid/content/pm/UserInfo;->id:I

    .line 2467
    .local v6, "parentUser":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2468
    .local v0, "callingAppId":I
    const/4 v9, 0x0

    .line 2470
    .local v9, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 2473
    .local v5, "foregroundUser":I
    const/16 v12, 0x64

    if-lt v4, v12, :cond_5

    const/16 v12, 0xc8

    if-gt v4, v12, :cond_5

    .line 2474
    sget-object v12, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v12}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2476
    invoke-direct {p0, v4}, Lcom/android/server/BluetoothManagerService;->isKnoxBluetoothEnabled(I)Z

    move-result v9

    .line 2478
    :cond_0
    if-nez v9, :cond_1

    invoke-static {v4}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_1
    move v9, v11

    .line 2488
    :goto_1
    sget-boolean v10, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v10, :cond_2

    .line 2489
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkIfCallerIsForegroundUser: valid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " callingUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " parentUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " foregroundUser="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2495
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2497
    return v9

    .line 2466
    .end local v0    # "callingAppId":I
    .end local v5    # "foregroundUser":I
    .end local v6    # "parentUser":I
    .end local v9    # "valid":Z
    :cond_3
    const/16 v6, -0x2710

    goto :goto_0

    .restart local v0    # "callingAppId":I
    .restart local v5    # "foregroundUser":I
    .restart local v6    # "parentUser":I
    .restart local v9    # "valid":Z
    :cond_4
    move v9, v10

    .line 2478
    goto :goto_1

    .line 2483
    :cond_5
    if-eq v4, v5, :cond_6

    if-eq v6, v5, :cond_6

    const/16 v12, 0x403

    if-eq v0, v12, :cond_6

    :try_start_1
    iget v12, p0, Lcom/android/server/BluetoothManagerService;->mSystemUiUid:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v12, :cond_7

    :cond_6
    move v9, v11

    :goto_2
    goto :goto_1

    :cond_7
    move v9, v10

    goto :goto_2

    .line 2495
    .end local v5    # "foregroundUser":I
    :catchall_0
    move-exception v10

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method

.method private checkItPolicy(Z)I
    .locals 11
    .param p1, "notifyOff"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    .line 2845
    const-string/jumbo v5, "device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v3

    .line 2846
    .local v3, "mDPM":Landroid/app/admin/IDevicePolicyManager;
    const/4 v4, 0x0

    .line 2848
    .local v4, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v4, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2856
    :goto_0
    if-eqz v3, :cond_1

    .line 2857
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v3, v5, v4}, Landroid/app/admin/IDevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;I)I

    move-result v0

    .line 2858
    .local v0, "BtMode":I
    if-nez v0, :cond_2

    .line 2860
    const/4 v5, 0x0

    sput v5, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 2861
    const-string/jumbo v5, "service.bt.security.policy.mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    const-string v5, "BluetoothManagerService"

    const-string v6, "BT IT Policy is changed to disable Bluetooth. Cannot enable"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    if-eqz p1, :cond_0

    .line 2864
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2865
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/16 v6, 0xa

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2866
    const/high16 v5, 0x4000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2867
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2869
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2884
    .end local v0    # "BtMode":I
    :cond_1
    :goto_1
    sget v5, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    return v5

    .line 2849
    :catch_0
    move-exception v1

    .line 2850
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "BluetoothManagerService"

    const-string v6, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2851
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 2852
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v5, "BluetoothManagerService"

    const-string v6, "Failed getting userId using ActivityManagerNative"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2870
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "BtMode":I
    :cond_2
    if-ne v0, v7, :cond_3

    .line 2872
    const/4 v5, 0x1

    :try_start_2
    sput v5, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 2873
    const-string/jumbo v5, "service.bt.security.policy.mode"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    const-string v5, "BluetoothManagerService"

    const-string v6, "BT IT Policy is changed to support HF only. Can use HF only"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 2881
    .end local v0    # "BtMode":I
    :catch_2
    move-exception v1

    .line 2882
    .local v1, "e":Ljava/lang/Exception;
    sput v10, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    goto :goto_1

    .line 2877
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "BtMode":I
    :cond_3
    const/4 v5, 0x2

    :try_start_3
    sput v5, Lcom/android/server/BluetoothManagerService;->mPolicy:I

    .line 2878
    const-string/jumbo v5, "service.bt.security.policy.mode"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1
.end method

.method private checkRpaStop()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1012
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1013
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRpaStop: bleAlwaysOn true, mBleAppCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_0
    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    .line 1017
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 1014
    goto :goto_0

    .line 1016
    :cond_3
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRpaStop: bleAlwaysOn false, mBleAppCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_4
    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private clearBleApps()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1023
    monitor-enter p0

    .line 1024
    :try_start_0
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-ne v0, v1, :cond_0

    .line 1025
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 1027
    :cond_0
    iget v0, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-ne v0, v1, :cond_1

    .line 1028
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1031
    const/4 v0, 0x0

    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 1032
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1033
    const/4 v0, 0x0

    sput v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 1034
    monitor-exit p0

    .line 1035
    return-void

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static debugGetMessageName(I)Ljava/lang/String;
    .locals 2
    .param p0, "msgType"    # I

    .prologue
    .line 286
    sparse-switch p0, :sswitch_data_0

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 287
    :sswitch_0
    const-string v0, "MESSAGE_ENABLE"

    goto :goto_0

    .line 288
    :sswitch_1
    const-string v0, "MESSAGE_DISABLE"

    goto :goto_0

    .line 289
    :sswitch_2
    const-string v0, "MESSAGE_REGISTER_ADAPTER"

    goto :goto_0

    .line 290
    :sswitch_3
    const-string v0, "MESSAGE_UNREGISTER_ADAPTER"

    goto :goto_0

    .line 291
    :sswitch_4
    const-string v0, "MESSAGE_REGISTER_STATE_CHANGE_CALLBACK"

    goto :goto_0

    .line 292
    :sswitch_5
    const-string v0, "MESSAGE_UNREGISTER_STATE_CHANGE_CALLBACK"

    goto :goto_0

    .line 293
    :sswitch_6
    const-string v0, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED"

    goto :goto_0

    .line 294
    :sswitch_7
    const-string v0, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED"

    goto :goto_0

    .line 295
    :sswitch_8
    const-string v0, "MESSAGE_RESTART_BLUETOOTH_SERVICE"

    goto :goto_0

    .line 296
    :sswitch_9
    const-string v0, "MESSAGE_BLUETOOTH_STATE_CHANGE"

    goto :goto_0

    .line 297
    :sswitch_a
    const-string v0, "MESSAGE_TIMEOUT_BIND"

    goto :goto_0

    .line 298
    :sswitch_b
    const-string v0, "MESSAGE_TIMEOUT_UNBIND"

    goto :goto_0

    .line 299
    :sswitch_c
    const-string v0, "MESSAGE_GET_NAME_AND_ADDRESS"

    goto :goto_0

    .line 300
    :sswitch_d
    const-string v0, "MESSAGE_SAVE_NAME_AND_ADDRESS"

    goto :goto_0

    .line 301
    :sswitch_e
    const-string v0, "MESSAGE_USER_SWITCHED"

    goto :goto_0

    .line 302
    :sswitch_f
    const-string v0, "MESSAGE_ADD_PROXY_DELAYED"

    goto :goto_0

    .line 303
    :sswitch_10
    const-string v0, "MESSAGE_BIND_PROFILE_SERVICE"

    goto :goto_0

    .line 304
    :sswitch_11
    const-string v0, "MESSAGE_GOOGLE_BLE_STATE_CHANGE"

    goto :goto_0

    .line 305
    :sswitch_12
    const-string v0, "MESSAGE_SAMSUNG_BLE_STATE_CHANGE"

    goto :goto_0

    .line 286
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x1e -> :sswitch_4
        0x1f -> :sswitch_5
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2a -> :sswitch_8
        0x3c -> :sswitch_9
        0x64 -> :sswitch_a
        0x65 -> :sswitch_b
        0xc8 -> :sswitch_c
        0xc9 -> :sswitch_d
        0x12c -> :sswitch_e
        0x190 -> :sswitch_f
        0x191 -> :sswitch_10
        0x2be -> :sswitch_11
        0x2bf -> :sswitch_12
    .end sparse-switch
.end method

.method private disableBleScanMode()V
    .locals 3

    .prologue
    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 841
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothManagerService"

    const-string v2, "Reseting the mEnable flag for clean disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :cond_1
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getState()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private enablePopupForBluetooth()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2934
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "enablePopupForBluetooth"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2936
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->cancel()V

    .line 2939
    :cond_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    .line 2940
    .local v2, "mStatusBar":Landroid/app/StatusBarManager;
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2941
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_1

    .line 2942
    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 2943
    :cond_1
    new-instance v1, Lcom/android/server/BluetoothManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/BluetoothManagerService$4;-><init>(Lcom/android/server/BluetoothManagerService;)V

    .line 2957
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 2959
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x4

    .line 2961
    .local v4, "theme":I
    const/4 v4, 0x5

    .line 2963
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10409f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const v7, 0x10409f2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    aput-object v10, v8, v9

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const v10, 0x10409f3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/BluetoothManagerService$6;

    invoke-direct {v6, p0, v0}, Lcom/android/server/BluetoothManagerService$6;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/app/KeyguardManager;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/server/BluetoothManagerService$5;

    invoke-direct {v6, p0}, Lcom/android/server/BluetoothManagerService$5;-><init>(Lcom/android/server/BluetoothManagerService;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    .line 3006
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3007
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 3012
    :goto_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 3013
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 3014
    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 3015
    return-void

    .line 3010
    :cond_2
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private static getStrVer(I)Ljava/lang/String;
    .locals 1
    .param p0, "version"    # I

    .prologue
    .line 215
    packed-switch p0, :pswitch_data_0

    .line 226
    const-string v0, "0"

    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    const-string v0, "1.0"

    goto :goto_0

    .line 217
    :pswitch_1
    const-string v0, "1.1"

    goto :goto_0

    .line 218
    :pswitch_2
    const-string v0, "1.2"

    goto :goto_0

    .line 219
    :pswitch_3
    const-string v0, "2.0"

    goto :goto_0

    .line 220
    :pswitch_4
    const-string v0, "2.1"

    goto :goto_0

    .line 221
    :pswitch_5
    const-string v0, "3.0"

    goto :goto_0

    .line 222
    :pswitch_6
    const-string v0, "4.0"

    goto :goto_0

    .line 223
    :pswitch_7
    const-string v0, "4.1"

    goto :goto_0

    .line 224
    :pswitch_8
    const-string v0, "4.2"

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handleDisable()V
    .locals 4

    .prologue
    .line 2422
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 2423
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 2426
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2427
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothManagerService"

    const-string v3, "Sending off request."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2430
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2431
    const-string v1, "BluetoothManagerService"

    const-string v3, "IBluetooth.disable() returned false"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2437
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2438
    return-void

    .line 2433
    :catch_0
    move-exception v0

    .line 2434
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to call disable()"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2437
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleEnable(Z)V
    .locals 8
    .param p1, "quietMode"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2356
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    .line 2357
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2359
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v5

    .line 2360
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    if-nez v4, :cond_2

    .line 2362
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2363
    .local v3, "timeoutMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2364
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V

    .line 2365
    new-instance v1, Landroid/content/Intent;

    const-class v4, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2366
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/16 v6, 0x41

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v4, v6, v7}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2368
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2408
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :cond_0
    :goto_0
    monitor-exit v5

    .line 2409
    return-void

    .line 2370
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v3    # "timeoutMsg":Landroid/os/Message;
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    goto :goto_0

    .line 2408
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2372
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v4, :cond_0

    .line 2373
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2377
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->setGetNameAddressOnly(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2380
    :try_start_2
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v4, v6}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2385
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceUpCallback()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2390
    :cond_3
    :try_start_4
    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    if-nez v4, :cond_5

    .line 2391
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2392
    const-string v4, "BluetoothManagerService"

    const-string v6, "IBluetooth.enable() returned false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 2404
    :catch_0
    move-exception v0

    .line 2405
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "BluetoothManagerService"

    const-string v6, "Unable to call enable()"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2381
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2382
    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "BluetoothManagerService"

    const-string v6, "Unable to register BluetoothCallback"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2394
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_4
    const/4 v4, 0x1

    :try_start_6
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    goto :goto_0

    .line 2398
    :cond_5
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v4

    if-nez v4, :cond_6

    .line 2399
    const-string v4, "BluetoothManagerService"

    const-string v6, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2401
    :cond_6
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 555
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final isBluetoothPersistedStateOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 563
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "bluetooth_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final isBluetoothPersistedStateOnBluetooth()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 571
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isCustomizedByKccAgent()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 3062
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.sec.knox.kccagent/shared_prefs/customized.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3063
    .local v0, "kccAgentSharedPref":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKnoxBluetoothEnabled(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 2442
    const/4 v4, 0x0

    .line 2443
    .local v4, "isBtEnabled":Z
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v3

    .line 2445
    .local v3, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v1

    .line 2447
    .local v1, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    if-eqz v1, :cond_0

    .line 2448
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;

    move-result-object v0

    .line 2449
    .local v0, "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 2454
    .end local v0    # "ccp":Lcom/sec/enterprise/knox/container/ContainerConfigurationPolicy;
    .end local v1    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    :cond_0
    :goto_0
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BMS::isKnoxBluetoothEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    return v4

    .line 2451
    :catch_0
    move-exception v2

    .line 2452
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKnoxBluetoothEnabled(): SecurityException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNameAndAddressSet()Z
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadStoredNameAndAddress()V
    .locals 3

    .prologue
    .line 599
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothManagerService"

    const-string v1, "Loading stored name and address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 604
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "invalid bluetooth name and address stored"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_1
    :goto_0
    return-void

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 608
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 609
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored bluetooth Name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBluetoothGattServiceUp()V
    .locals 4

    .prologue
    .line 1068
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BluetoothGatt Service is Up = isBleAppPresent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRestrictedBtPolicy()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1086
    :cond_1
    :goto_0
    return-void

    .line 1075
    :cond_2
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v2, "Unable to call onServiceUp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1077
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1078
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "setRPAGeneration false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_4
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 1080
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private persistBluetoothSetting(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 583
    return-void
.end method

.method private recoverBluetoothServiceFromError()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2789
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "recoverBluetoothServiceFromError"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2790
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 2791
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2794
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v2, v4}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2799
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2801
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 2804
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->handleDisable()V

    .line 2806
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2}, Lcom/android/server/BluetoothManagerService;->waitForOnOff(ZZ)Z

    .line 2808
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendBluetoothServiceDownCallback()V

    .line 2809
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 2810
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    .line 2811
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 2813
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2815
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 2816
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2818
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2819
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    .line 2821
    iput-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2823
    iget v2, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mErrorRecoveryRetryCounter:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 2825
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2827
    .local v1, "restartMsg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2831
    .end local v1    # "restartMsg":Landroid/os/Message;
    :cond_2
    return-void

    .line 2795
    :catch_0
    move-exception v0

    .line 2796
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string v2, "BluetoothManagerService"

    const-string v4, "Unable to unregister"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2799
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 2816
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2
.end method

.method private registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .locals 5
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 313
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 314
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 320
    .local v1, "mIsAirplaneSensitive":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 321
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void

    .line 318
    .end local v1    # "mIsAirplaneSensitive":Z
    :cond_1
    const-string v4, "bluetooth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method private registerForBleScanModeChange()V
    .locals 4

    .prologue
    .line 791
    new-instance v0, Lcom/android/server/BluetoothManagerService$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothManagerService$3;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V

    .line 832
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 835
    return-void
.end method

.method private registerKnoxModeChangeObserver()V
    .locals 6

    .prologue
    .line 3214
    const-string v3, "BluetoothManagerService"

    const-string v4, "BMS.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    :try_start_0
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3217
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 3219
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_0

    .line 3220
    const-string v3, "BluetoothManagerService"

    const-string v4, "BMS.onKnoxModeChange() pms == null...  should not happened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_0
    return-void

    .line 3224
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    new-instance v3, Lcom/android/server/BluetoothManagerService$7;

    invoke-direct {v3, p0}, Lcom/android/server/BluetoothManagerService$7;-><init>(Lcom/android/server/BluetoothManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3239
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catch_0
    move-exception v1

    .line 3240
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private restrictedByKnoxPolicy()Z
    .locals 4

    .prologue
    .line 2919
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2920
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2921
    .local v0, "callingUser":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 2922
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->isKnoxBluetoothEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2923
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enable(): Bluetooth for KNOX blocked by MDM policy: userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    const/4 v1, 0x1

    .line 2929
    .end local v0    # "callingUser":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restrictedByMdmPolicy()Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 2891
    const-string v0, "content://com.sec.knox.provider/BluetoothPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2892
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x1

    .line 2893
    .local v8, "isBluetoothEnabled":Z
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "isBluetoothEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2895
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2897
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2898
    const-string/jumbo v0, "isBluetoothEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v8, v9

    .line 2903
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2907
    :cond_0
    :goto_1
    if-nez v8, :cond_2

    .line 2908
    const-string v0, "BluetoothManagerService"

    const-string v2, "MDM: BT is Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :goto_2
    return v9

    :cond_1
    move v8, v10

    .line 2898
    goto :goto_0

    .line 2900
    :catch_0
    move-exception v7

    .line 2901
    .local v7, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string v0, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CursorWindowAllocationException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2903
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    move v9, v10

    .line 2912
    goto :goto_2
.end method

.method private sendBleStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 2501
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLE State Change Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2504
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2505
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2506
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2507
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2508
    return-void
.end method

.method private sendBluetoothServiceDownCallback()V
    .locals 6

    .prologue
    .line 1706
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1707
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onBluetoothServiceDown callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1710
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothServiceDown() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1713
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1711
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1714
    :catch_0
    move-exception v0

    .line 1715
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceDown() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1719
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1722
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    return-void
.end method

.method private sendBluetoothServiceUpCallback()V
    .locals 6

    .prologue
    .line 1685
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1686
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothManagerService"

    const-string v4, "Calling onBluetoothServiceUp callbacks"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1689
    .local v2, "n":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothServiceUp() to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1692
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothManagerCallback;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3, v4}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1690
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1698
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1701
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    return-void
.end method

.method private sendBluetoothStateCallback(Z)V
    .locals 6
    .param p1, "isUp"    # Z

    .prologue
    .line 1650
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1651
    .local v2, "n":I
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1652
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1654
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v3, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1652
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1660
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1662
    return-void
.end method

.method private sendBrEdrDownCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1094
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothManagerService"

    const-string v2, "Calling sendBrEdrDownCallback callbacks"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v1, :cond_2

    .line 1097
    const-string v1, "BluetoothManagerService"

    const-string v2, "Bluetooth handle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_1
    :goto_0
    return-void

    .line 1101
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isBleAppPresent()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1103
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v2, "Call to onBrEdrDown() failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1107
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "setRPAGeneration false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_5
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1114
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z

    goto :goto_0

    .line 1111
    :catch_1
    move-exception v0

    .line 1112
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "setRPAGeneration fails"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendDisableMsg()V
    .locals 3

    .prologue
    .line 2759
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2760
    return-void
.end method

.method private sendEnableMsg(Z)V
    .locals 5
    .param p1, "quietMode"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2763
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    .line 2764
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v1, v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2766
    return-void

    :cond_0
    move v0, v2

    .line 2764
    goto :goto_0
.end method

.method private sendSamsungBleStateChanged(II)V
    .locals 4
    .param p1, "prevState"    # I
    .param p2, "newState"    # I

    .prologue
    .line 2511
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Samsung BLE State Change Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.ACTION_SAMSUNG_BLE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2514
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2515
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2516
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2517
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2518
    return-void
.end method

.method private setBdroidVersion()V
    .locals 5

    .prologue
    .line 532
    const-string v1, "8"

    .line 533
    .local v1, "verStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 535
    .local v0, "verInt":I
    sget-boolean v2, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBdroidVersion, Int version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    const-string/jumbo v2, "persist.service.bdroid.version"

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->getStrVer(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private setBleAutoEnable()V
    .locals 4

    .prologue
    .line 543
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_BLUETOOTH_ENABLE_AUTO_LE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 544
    .local v0, "flag":Z
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBleAutoEnable, flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    if-eqz v0, :cond_1

    .line 547
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    .line 549
    :cond_1
    return-void
.end method

.method private storeNameAndAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 619
    if-eqz p1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 621
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    .line 622
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetooth name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    if-eqz p2, :cond_1

    .line 627
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_address"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    .line 629
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stored Bluetoothaddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "bluetooth_address"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 634
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "bluetooth_addr_valid"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 636
    :cond_2
    return-void
.end method

.method private unbindAllBluetoothProfileServices()V
    .locals 8

    .prologue
    .line 1443
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v5

    .line 1444
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1445
    .local v1, "i":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    .local v3, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1451
    :goto_1
    :try_start_2
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V

    goto :goto_0

    .line 1454
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1448
    .restart local v1    # "i":Ljava/lang/Integer;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catch_0
    move-exception v0

    .line 1449
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v4, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to unbind service with intent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1453
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "i":Ljava/lang/Integer;
    .end local v3    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 1454
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1455
    return-void
.end method

.method private waitForOnOff(ZZ)Z
    .locals 7
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x1

    .line 2696
    const/4 v1, 0x0

    .line 2697
    .local v1, "i":I
    :goto_0
    const/16 v3, 0x28

    if-ge v1, v3, :cond_0

    .line 2698
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 2700
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2720
    :cond_0
    :goto_1
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOff time out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 2701
    :cond_1
    if-eqz p1, :cond_2

    .line 2702
    :try_start_2
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-ne v4, v6, :cond_4

    :try_start_3
    monitor-exit v3

    goto :goto_2

    .line 2712
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2703
    :cond_2
    if-eqz p2, :cond_3

    .line 2704
    :try_start_4
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 2706
    :cond_3
    :try_start_6
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-eq v4, v6, :cond_4

    :try_start_7
    monitor-exit v3

    goto :goto_2

    .line 2708
    :catch_0
    move-exception v0

    .line 2709
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "getState()"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2710
    monitor-exit v3

    goto :goto_1

    .line 2712
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2713
    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    .line 2714
    :cond_5
    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2718
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2716
    :cond_6
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3
.end method

.method private waitForOnOffBle(ZZ)Z
    .locals 7
    .param p1, "on"    # Z
    .param p2, "off"    # Z

    .prologue
    const/16 v6, 0xf

    const/4 v2, 0x1

    .line 2730
    const/4 v1, 0x0

    .line 2731
    .local v1, "i":I
    :goto_0
    const/16 v3, 0x28

    if-ge v1, v3, :cond_0

    .line 2732
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v3

    .line 2734
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2754
    :cond_0
    :goto_1
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "waitForOnOffBle time out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 2735
    :cond_1
    if-eqz p1, :cond_2

    .line 2736
    :try_start_2
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-ne v4, v6, :cond_4

    :try_start_3
    monitor-exit v3

    goto :goto_2

    .line 2746
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2737
    :cond_2
    if-eqz p2, :cond_3

    .line 2738
    :try_start_4
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 2740
    :cond_3
    :try_start_6
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v4

    if-eq v4, v6, :cond_4

    :try_start_7
    monitor-exit v3

    goto :goto_2

    .line 2742
    :catch_0
    move-exception v0

    .line 2743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "getState()"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2744
    monitor-exit v3

    goto :goto_1

    .line 2746
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2747
    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    .line 2748
    :cond_5
    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 2752
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2750
    :cond_6
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3
.end method


# virtual methods
.method public bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z
    .locals 9
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1395
    iget-boolean v5, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez v5, :cond_1

    .line 1396
    sget-boolean v4, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v4, :cond_0

    .line 1397
    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying to bind to profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", while Bluetooth was disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_0
    :goto_0
    return v3

    .line 1402
    :cond_1
    if-eqz p2, :cond_0

    .line 1404
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v5

    .line 1405
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1406
    .local v2, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v2, :cond_5

    .line 1407
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_2

    .line 1408
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating new ProfileServiceConnections object for profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_2
    if-eq p1, v4, :cond_3

    monitor-exit v5

    goto :goto_0

    .line 1420
    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1414
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :cond_3
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v6, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1415
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .end local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    invoke-direct {v2, p0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;-><init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V

    .line 1416
    .restart local v2    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    move-result v6

    if-nez v6, :cond_4

    monitor-exit v5

    goto :goto_0

    .line 1418
    :cond_4
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1423
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v5, 0x190

    invoke-virtual {v3, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1424
    .local v0, "addProxyMsg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1425
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1426
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v0, v6, v7}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 1427
    goto :goto_0
.end method

.method public disable(Z)Z
    .locals 12
    .param p1, "persist"    # Z

    .prologue
    const/4 v0, 0x5

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 1288
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permissicacheNameAndAddresson"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1293
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "disable(): not allowed for non-active and non system user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v2

    .line 1340
    :goto_0
    return v11

    .line 1297
    :cond_0
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_1

    .line 1298
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disable(): mBluetooth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_1
    const/4 v10, 0x0

    .line 1304
    .local v10, "isBtEnabled":Z
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v1

    .line 1306
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    move v10, v11

    .line 1310
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1312
    if-nez v10, :cond_3

    .line 1313
    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth is already disabled. DO NOT disable again."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v10, v2

    .line 1306
    goto :goto_1

    .line 1307
    :catch_0
    move-exception v7

    .line 1308
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "isEnabled()"

    invoke-static {v3, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1310
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1317
    :cond_3
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1318
    if-eqz p1, :cond_4

    .line 1320
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1321
    .local v8, "callingIdentity":J
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1322
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1324
    .end local v8    # "callingIdentity":J
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1325
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v4, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 1326
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 1328
    :cond_5
    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-nez v3, :cond_6

    .line 1329
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 1331
    :cond_6
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->sendDisableMsg()V

    .line 1332
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1335
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Disabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1332
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v1, 0x0

    .line 2412
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2413
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2414
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2415
    :cond_0
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to bind to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3249
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    const-string v9, "BluetoothManagerService"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    const-string v7, "Bluetooth Status"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  enabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3253
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  airplaneMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/BluetoothManagerService;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  address: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3259
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-nez v7, :cond_3

    .line 3260
    const-string v7, "Bluetooth Service not connected"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3290
    :cond_0
    :goto_0
    const-string v7, "---------------------------------------"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3291
    sget-object v7, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    sget-object v7, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3292
    :cond_1
    sget-object v7, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    sget-object v7, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3293
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3295
    return-void

    .line 3262
    :cond_3
    const/4 v5, 0x0

    .line 3264
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v7, "Bonded devices:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v7}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, "arr$":[Landroid/bluetooth/BluetoothDevice;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v1, v0, v2

    .line 3266
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/server/BluetoothManagerService;->DEVICE_TYPE_NAMES:[Ljava/lang/String;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3265
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3270
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3272
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 3273
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v7, v5}, Landroid/bluetooth/IBluetooth;->dump(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3279
    if-eqz v5, :cond_0

    .line 3281
    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3282
    :catch_0
    move-exception v3

    .line 3283
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "IOException attempting to close() fd"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3274
    .end local v0    # "arr$":[Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":I
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "len$":I
    :catch_1
    move-exception v6

    .line 3275
    .local v6, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "RemoteException while calling Bluetooth Service"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3279
    if-eqz v5, :cond_0

    .line 3281
    :try_start_3
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 3282
    :catch_2
    move-exception v3

    .line 3283
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v7, "IOException attempting to close() fd"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3276
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v6    # "re":Landroid/os/RemoteException;
    :catch_3
    move-exception v3

    .line 3277
    .restart local v3    # "ioe":Ljava/io/IOException;
    :try_start_4
    const-string v7, "IOException attempting to dup() fd"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3279
    if-eqz v5, :cond_0

    .line 3281
    :try_start_5
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 3282
    :catch_4
    move-exception v3

    .line 3283
    const-string v7, "IOException attempting to close() fd"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3279
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_5

    .line 3281
    :try_start_6
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3284
    :cond_5
    :goto_2
    throw v7

    .line 3282
    :catch_5
    move-exception v3

    .line 3283
    .restart local v3    # "ioe":Ljava/io/IOException;
    const-string v8, "IOException attempting to close() fd"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public dumpInFile()V
    .locals 7

    .prologue
    .line 3158
    const/4 v1, 0x0

    .line 3159
    .local v1, "mainFoutS":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 3160
    .local v3, "subFoutS":Ljava/io/FileOutputStream;
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    .line 3163
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    .line 3164
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    .line 3166
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3167
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 3170
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3171
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile delete main file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3174
    :cond_1
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3175
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile delete sub file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3179
    :cond_2
    sget-object v5, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 3180
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 3181
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3182
    .end local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    .local v2, "mainFoutS":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile write main file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    sget-object v5, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 3185
    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_2
    sget-object v5, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 3186
    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 3187
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3188
    .end local v3    # "subFoutS":Ljava/io/FileOutputStream;
    .local v4, "subFoutS":Ljava/io/FileOutputStream;
    :try_start_3
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile write sub file"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, v4

    .line 3196
    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v3    # "subFoutS":Ljava/io/FileOutputStream;
    :cond_4
    if-eqz v1, :cond_5

    .line 3197
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3198
    :cond_5
    if-eqz v3, :cond_6

    .line 3199
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 3204
    :cond_6
    :goto_0
    const-string v5, "BluetoothManagerService"

    const-string/jumbo v6, "dumpInFile end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    :cond_7
    :goto_1
    return-void

    .line 3191
    :catch_0
    move-exception v0

    .line 3192
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3196
    if-eqz v1, :cond_8

    .line 3197
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3198
    :cond_8
    if-eqz v3, :cond_7

    .line 3199
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 3200
    :catch_1
    move-exception v5

    goto :goto_1

    .line 3195
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3196
    :goto_3
    if-eqz v1, :cond_9

    .line 3197
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3198
    :cond_9
    if-eqz v3, :cond_a

    .line 3199
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 3202
    :cond_a
    :goto_4
    throw v5

    .line 3200
    :catch_2
    move-exception v6

    goto :goto_4

    .line 3195
    .end local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v3    # "subFoutS":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 3191
    .end local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "mainFoutS":Ljava/io/FileOutputStream;
    .restart local v1    # "mainFoutS":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v4    # "subFoutS":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "subFoutS":Ljava/io/FileOutputStream;
    .restart local v3    # "subFoutS":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 3200
    :catch_5
    move-exception v5

    goto :goto_0
.end method

.method public enable()Z
    .locals 12

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1158
    const-string v3, "BluetoothManagerService -- enable() BT ManagerService enable called "

    invoke-static {v3}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1161
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v2, "enable(): not allowed for non-active and non system user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string v0, "BluetoothManagerService -- enable(): not allowed for non-active and non system user"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    move v2, v1

    .line 1212
    :goto_0
    return v2

    .line 1166
    :cond_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH_ADMIN"

    const-string v5, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1170
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1171
    .local v8, "ChinaNalSecurityType":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "bluetooth_security_on_check"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1173
    .local v10, "isChecked":I
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enable(): enable PopUp for Bluetooth isChecked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const-string v3, "ChinaNalSecurity"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v10, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isUserAction()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1176
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    if-nez v3, :cond_1

    .line 1177
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1178
    .local v7, "BtSecurityPopupMsg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1182
    .end local v7    # "BtSecurityPopupMsg":Landroid/os/Message;
    :cond_1
    sput-boolean v1, Lcom/android/server/BluetoothManagerService;->isEnablePopup:Z

    .line 1185
    :cond_2
    const/16 v11, 0xa

    .line 1186
    .local v11, "state":I
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_3

    .line 1188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    const/16 v3, 0xf

    if-ne v1, v3, :cond_3

    .line 1189
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothManagerService"

    const-string v3, ""

    invoke-static {v1, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    .end local v8    # "ChinaNalSecurityType":Ljava/lang/String;
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "isChecked":I
    .end local v11    # "state":I
    :cond_3
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_4

    .line 1197
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enable():  mBluetooth ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_4
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1203
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 1204
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Enabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1204
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public enableNoAutoConnect()Z
    .locals 8

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x1

    .line 1129
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    .line 1133
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableNoAutoConnect():  mBluetooth ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBinding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 1139
    .local v7, "callingAppId":I
    const/16 v1, 0x403

    if-eq v7, v1, :cond_1

    .line 1140
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "no permission to enable Bluetooth quietly"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1145
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 1146
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v1, Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Enabling Bluetooth"

    const/4 v6, -0x1

    move v1, v0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1154
    return v2

    .line 1146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1725
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1730
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getAddress(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    const/4 v1, 0x0

    .line 1751
    :goto_0
    return-object v1

    .line 1734
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1736
    const-string v1, "02:00:00:00:00:00"

    goto :goto_0

    .line 1739
    :cond_1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1740
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 1742
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 1747
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v3, "getAddress(): Unable to retrieve address remotely..Returning cached address"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1747
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1751
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBleAppCount()I
    .locals 3

    .prologue
    .line 1046
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBleAppCount mBleAppCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1048
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getBleAppCount mBleAppCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ble is always on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_1
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1051
    :goto_0
    return v0

    :cond_2
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    goto :goto_0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    .locals 4

    .prologue
    .line 1378
    sget-object v1, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKnoxVersionSupported(Landroid/os/PersonaManager$KnoxContainerVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1379
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1380
    .local v0, "callingUser":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 1381
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->isKnoxBluetoothEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1382
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBluetoothGatt(): Bluetooth for this container is disabled! - userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/4 v1, 0x0

    .line 1389
    .end local v0    # "callingUser":I
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1755
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1760
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v2, "getName(): not allowed for non-active and non system user"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/4 v1, 0x0

    .line 1776
    :goto_0
    return-object v1

    .line 1764
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1765
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1767
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 1772
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1768
    :catch_0
    move-exception v0

    .line 1769
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BluetoothManagerService"

    const-string/jumbo v3, "getName(): Unable to retrieve name remotely..Returning cached name"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1772
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1776
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNameAndAddress()V
    .locals 4

    .prologue
    .line 1120
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    .line 1121
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNameAndAddress(): mBluetooth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1125
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    return-void
.end method

.method public getSamsungBleAppCount()I
    .locals 3

    .prologue
    .line 1056
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSamsungBleAppCount mSamsung : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :cond_0
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1058
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSamsungBleAppCount mSamsung : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ble is always on"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_1
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v0, v0, -0x1

    .line 1061
    :goto_0
    return v0

    :cond_2
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    goto :goto_0
.end method

.method public getSettingsName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1781
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1786
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "getName(): not allowed for non-active and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const/4 v0, 0x0

    .line 1794
    :goto_0
    return-object v0

    .line 1789
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1790
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1791
    .local v0, "localName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1792
    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1793
    :cond_1
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings Name is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleOnBootPhase()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1462
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth boot completed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManagerService -- ===== BOOT_COMPLETED ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[0008]{0019}(24::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")(25::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1465
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManagerServiceUnknown mBleAppCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1467
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isBluetoothPersistedStateOnBluetooth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1468
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "BluetoothManagerService"

    const-string v1, "Auto-enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    :cond_2
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1470
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 1471
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 1472
    iput v4, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 1474
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 1477
    :cond_4
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isNameAndAddressSet()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1479
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "BluetoothManagerService"

    const-string v1, "Retrieving Bluetooth Adapter name and address..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->getNameAndAddress()V

    .line 1491
    :cond_6
    :goto_0
    return-void

    .line 1481
    :cond_7
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->BLE_ALWAYS_ON:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    if-nez v0, :cond_6

    .line 1482
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "BluetoothManagerService"

    const-string v1, "BLE Always On"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_8
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 1484
    sget v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 1485
    iput v4, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 1486
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 1488
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->sendEnableMsg(Z)V

    .line 1489
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleOnSwitchUser(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1497
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothManagerService"

    const-string v1, "Bluetooth user switched"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothManagerService -- Bluetooth user switched. userHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1500
    return-void
.end method

.method public isBleAppPresent()Z
    .locals 3

    .prologue
    .line 1039
    sget-boolean v0, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBleAppPresent() count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_0
    sget v0, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "ble_scan_always_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 786
    :cond_0
    :goto_0
    return v0

    .line 784
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 708
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v3, "isEnabled(): not allowed for non-active and non system user"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :goto_0
    return v1

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 714
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    .line 718
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "isEnabled()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isRestrictedBtPolicy()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2838
    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService;->checkItPolicy(Z)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->restrictedByMdmPolicy()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->restrictedByKnoxPolicy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2840
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserAction()Z
    .locals 13

    .prologue
    const/4 v9, 0x1

    .line 3018
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3019
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 3021
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 3023
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 3024
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const-string v10, "com.android.systemui"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.android.settings"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.sec.android.easysettings"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.sec.android.emergencymode.service"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.samsung.android.app.sreminder"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "com.sec.knox.kccagent"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->isCustomizedByKccAgent()Z

    move-result v10

    if-nez v10, :cond_4

    .line 3030
    :cond_1
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->getCallingPid()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 3032
    const-string v9, "BluetoothManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "info pid = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",  getCallingPid() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    iget-object v9, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3034
    iget-object v9, p0, Lcom/android/server/BluetoothManagerService;->btEnablePopUp:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->cancel()V

    .line 3036
    :cond_2
    const/4 v9, 0x0

    .line 3057
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_0
    return v9

    .line 3039
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Lcom/android/server/BluetoothManagerService;->getCallingPid()I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 3041
    :try_start_0
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 3042
    iget-object v1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v7, v1, v3

    .line 3043
    .local v7, "mPackageList":Ljava/lang/String;
    const/16 v10, 0x80

    invoke-virtual {v8, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 3044
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3042
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3047
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v7    # "mPackageList":Ljava/lang/String;
    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v11, 0x80

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 3048
    const-string v10, "BluetoothManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "appName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3050
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 3051
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v10, p0, Lcom/android/server/BluetoothManagerService;->chinaThirdPartyAppName:Ljava/lang/String;

    .line 3052
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public putLogs(Ljava/lang/String;)V
    .locals 4
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 3072
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkIfCallerIsForegroundUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3091
    :goto_0
    return-void

    .line 3081
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Lcom/android/server/BluetoothManagerService;->limit:I

    if-le v1, v2, :cond_1

    .line 3082
    const-string v1, "BluetoothManagerService"

    const-string v2, "buffer limit reached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    invoke-static {}, Lcom/android/server/BluetoothManagerService;->bufferLimitReached()Z

    .line 3087
    :cond_1
    sget-object v1, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3088
    :catch_0
    move-exception v0

    .line 3089
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothManagerService"

    const-string v2, "btsvc manager.putLogs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readFile(Ljava/io/FileInputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "FinS"    # Ljava/io/FileInputStream;

    .prologue
    .line 3139
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3140
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3142
    .local v0, "bReader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3145
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "read":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3146
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3147
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3149
    .end local v3    # "read":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3150
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 3153
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public readFromFile()V
    .locals 10

    .prologue
    .line 3104
    const/4 v2, 0x0

    .line 3105
    .local v2, "mainFinS":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 3107
    .local v5, "subFinS":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 3108
    .local v1, "mainB":[B
    const/4 v4, 0x0

    .line 3109
    .local v4, "subB":[B
    const-string v7, "BluetoothManagerService"

    const-string/jumbo v8, "readFromFile start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->logDirp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    .line 3112
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->mainBfp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    .line 3113
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/BluetoothManagerService;->subBfp:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    .line 3115
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3116
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->logDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 3119
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3120
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->mainF:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3121
    .end local v2    # "mainFinS":Ljava/io/FileInputStream;
    .local v3, "mainFinS":Ljava/io/FileInputStream;
    :try_start_1
    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromFile main: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    new-instance v7, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/BluetoothManagerService;->readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/android/server/BluetoothManagerService;->mainBuffer:Ljava/lang/String;

    .line 3123
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 3125
    .end local v3    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v2    # "mainFinS":Ljava/io/FileInputStream;
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3126
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService;->subF:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3127
    .end local v5    # "subFinS":Ljava/io/FileInputStream;
    .local v6, "subFinS":Ljava/io/FileInputStream;
    :try_start_3
    const-string v7, "BluetoothManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFromFile sub: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lcom/android/server/BluetoothManagerService;->readFile(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/android/server/BluetoothManagerService;->subBuffer:Ljava/lang/StringBuilder;

    .line 3129
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    .line 3135
    .end local v6    # "subFinS":Ljava/io/FileInputStream;
    .restart local v5    # "subFinS":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    return-void

    .line 3131
    :catch_0
    move-exception v0

    .line 3132
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3131
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v3    # "mainFinS":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "mainFinS":Ljava/io/FileInputStream;
    .restart local v2    # "mainFinS":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v5    # "subFinS":Ljava/io/FileInputStream;
    .restart local v6    # "subFinS":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6    # "subFinS":Ljava/io/FileInputStream;
    .restart local v5    # "subFinS":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    const-string v1, "BluetoothManagerService"

    const-string v2, "Callback is null in registerAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/4 v1, 0x0

    .line 650
    :goto_0
    return-object v1

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 648
    .local v0, "added":Z
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_1

    .line 649
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerAdapter added : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    monitor-exit v2

    goto :goto_0

    .line 651
    .end local v0    # "added":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 675
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 677
    return-void
.end method

.method public registerStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothDisableBleCallback;

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3fa

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 692
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 693
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    return-void
.end method

.method public sendDisableBleCallback()V
    .locals 6

    .prologue
    .line 1667
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1668
    .local v2, "n":I
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Broadcasting sendDisableBleCallback to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " receivers."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1669
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1671
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/IBluetoothDisableBleCallback;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothDisableBleCallback;->ondisableBLE()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1669
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1672
    :catch_0
    move-exception v0

    .line 1673
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call sendDisableBleCallback() on callback #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1677
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v3

    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mDisableBleCallback:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1679
    return-void
.end method

.method public setBtEnableFlag(Z)Z
    .locals 8
    .param p1, "quietmode"    # Z

    .prologue
    const/16 v7, 0x403

    const/4 v1, 0x1

    .line 1216
    sget-boolean v4, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "BluetoothManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBtEnableFlag(): quietmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/BluetoothManagerService;->isRestrictedBtPolicy()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1219
    const-string v1, "BluetoothManagerService"

    const-string v4, "Enabling BT is restriced by policy"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v1, 0x0

    .line 1244
    :goto_0
    return v1

    .line 1223
    :cond_1
    if-eqz p1, :cond_2

    .line 1224
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1225
    .local v0, "callingAppId":I
    if-eq v0, v7, :cond_3

    .line 1226
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no permission to enable Bluetooth quietly."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1230
    .end local v0    # "callingAppId":I
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1231
    .local v2, "callingIdentity":J
    invoke-direct {p0, v1}, Lcom/android/server/BluetoothManagerService;->persistBluetoothSetting(I)V

    .line 1232
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1234
    .end local v2    # "callingIdentity":J
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z

    .line 1236
    iget v4, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    if-nez v4, :cond_4

    .line 1237
    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    .line 1239
    :cond_4
    iget v4, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    if-nez v4, :cond_5

    .line 1240
    iput v1, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    .line 1242
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService;->mQuietEnable:Z

    goto :goto_0
.end method

.method public shutdown()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1249
    sget-boolean v4, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "BluetoothManagerService"

    const-string/jumbo v5, "shutDown()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    const/16 v1, 0xa

    .line 1252
    .local v1, "st":I
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v4, :cond_3

    .line 1254
    :try_start_0
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1263
    :goto_0
    const-string v3, "BluetoothManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    .line 1266
    sput-boolean v2, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    .line 1267
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->clearBleApps()V

    .line 1269
    const/16 v3, 0xf

    if-ne v1, v3, :cond_4

    .line 1270
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "shutdown BLE disable()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v3, :cond_2

    .line 1273
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 1274
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mEnableExternal:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1284
    :cond_2
    :goto_1
    return v2

    .line 1255
    :catch_0
    move-exception v0

    .line 1256
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to call getState"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1259
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v2, "BluetoothManagerService"

    const-string/jumbo v4, "shutdown mBluetooth is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1260
    goto :goto_1

    .line 1276
    :catch_1
    move-exception v0

    .line 1277
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "Unable to call onBrEdrDown"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1279
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/16 v3, 0xc

    if-ne v1, v3, :cond_2

    .line 1280
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "shutdown BT disable()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/BluetoothManagerService;->disable(Z)Z

    goto :goto_1
.end method

.method public unbindAndFinish()V
    .locals 4

    .prologue
    .line 1344
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_0

    .line 1345
    const-string v1, "BluetoothManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindAndFinish(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBinding = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_0
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 1350
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    if-eqz v1, :cond_1

    monitor-exit v2

    .line 1372
    :goto_0
    return-void

    .line 1351
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1352
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_4

    .line 1353
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->isGetNameAddressOnly()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1356
    :try_start_1
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothCallback:Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v1, v3}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1361
    :cond_2
    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "BluetoothManagerService"

    const-string v3, "Sending unbind request."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    .line 1364
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1365
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z

    .line 1366
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mBinding:Z

    .line 1370
    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService;->mBluetoothGatt:Landroid/bluetooth/IBluetoothGatt;

    .line 1371
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1357
    :catch_0
    move-exception v0

    .line 1358
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "BluetoothManagerService"

    const-string v3, "Unable to unregister BluetoothCallback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1368
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService;->mUnbinding:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .locals 4
    .param p1, "bluetoothProfile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .prologue
    .line 1433
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    monitor-enter v2

    .line 1434
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mProfileServices:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1435
    .local v0, "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    if-nez v0, :cond_0

    .line 1436
    monitor-exit v2

    .line 1440
    :goto_0
    return-void

    .line 1438
    :cond_0
    # invokes: Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    invoke-static {v0, p2}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$2300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 1439
    monitor-exit v2

    goto :goto_0

    .end local v0    # "psc":Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 655
    if-nez p1, :cond_0

    .line 656
    const-string v1, "BluetoothManagerService"

    const-string v2, "Callback is null in unregisterAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService;->mConnection:Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    monitor-enter v2

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 666
    .local v0, "removed":Z
    sget-boolean v1, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v1, :cond_1

    .line 667
    const-string v1, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterAdapter removed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "removed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothStateChangeCallback;

    .prologue
    .line 680
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 683
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 684
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    return-void
.end method

.method public unregisterStateDisableBleCallback(Landroid/bluetooth/IBluetoothDisableBleCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/bluetooth/IBluetoothDisableBleCallback;

    .prologue
    .line 698
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v2, 0x3fb

    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 701
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    return-void
.end method

.method public updateBleAppCount(Landroid/os/IBinder;Z)I
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    const/16 v10, 0xf

    const/4 v9, 0x1

    .line 889
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z

    move-result v4

    .line 890
    .local v4, "prevRpaStop":Z
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->mShutdown:Z

    if-eq v6, v9, :cond_0

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnablingAirplane:Z

    if-ne v6, v9, :cond_2

    .line 891
    :cond_0
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount Pass"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_1
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 1008
    :goto_0
    return v6

    .line 894
    :cond_2
    if-eqz p2, :cond_e

    .line 895
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 896
    .local v5, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-nez v5, :cond_6

    .line 897
    new-instance v0, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;-><init>(Lcom/android/server/BluetoothManagerService;)V

    .line 899
    .local v0, "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p1, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    monitor-enter p0

    .line 906
    :try_start_1
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateBleAppCount #UP | mBleAppCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSappCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Using SS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_9

    .line 908
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount on state"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 933
    :cond_3
    :goto_1
    :try_start_2
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 934
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 936
    :try_start_3
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v6

    if-ne v6, v10, :cond_5

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z

    move-result v6

    if-nez v6, :cond_5

    .line 938
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_4
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 940
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 945
    :cond_5
    :goto_2
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "BluetoothManagerService"

    const-string v7, "Registered for death Notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_6
    :goto_3
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updated BleAppCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_7
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mEnable:Z

    if-eqz v6, :cond_8

    .line 1006
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->disableBleScanMode()V

    .line 1008
    :cond_8
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    goto/16 :goto_0

    .line 900
    .restart local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catch_0
    move-exception v2

    .line 901
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Wake lock is already dead."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 909
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_9
    :try_start_4
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-nez v6, :cond_b

    .line 910
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v6, :cond_a

    .line 911
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 930
    :catch_1
    move-exception v1

    .line 931
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "BluetoothManagerService"

    const-string v7, "Unable to call updateBleAppCount"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 934
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 913
    :cond_a
    const/4 v6, 0x1

    :try_start_6
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto/16 :goto_1

    .line 915
    :cond_b
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v7, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v6, v7

    if-nez v6, :cond_c

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-nez v6, :cond_c

    .line 916
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2be

    const/16 v8, 0xa

    const/16 v9, 0xe

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 917
    .local v3, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 918
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2be

    const/16 v8, 0xe

    const/16 v9, 0xf

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 919
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 920
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto/16 :goto_1

    .line 921
    .end local v3    # "msg":Landroid/os/Message;
    :cond_c
    sget v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-nez v6, :cond_d

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v6, :cond_d

    .line 922
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2bf

    const/16 v8, 0xa

    const/16 v9, 0xe

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 923
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 924
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2bf

    const/16 v8, 0xe

    const/16 v9, 0xf

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 925
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 926
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    goto/16 :goto_1

    .line 928
    .end local v3    # "msg":Landroid/os/Message;
    :cond_d
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount else case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 942
    :catch_2
    move-exception v2

    .line 943
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration fails"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 949
    .end local v0    # "deathRec":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    .end local v2    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_e
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 950
    .restart local v5    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v5, :cond_6

    .line 953
    const/4 v6, 0x0

    :try_start_7
    invoke-interface {p1, v5, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_3

    .line 957
    :goto_4
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    monitor-enter p0

    .line 959
    :try_start_8
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-lez v6, :cond_10

    .line 961
    :try_start_9
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateBleAppCount #DOWN | mBleAppCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSappCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Using SS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_13

    .line 963
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_f

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount on state : false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 988
    :cond_f
    :goto_5
    :try_start_a
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 990
    :cond_10
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 992
    :try_start_b
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    invoke-interface {v6}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v6

    if-ne v6, v10, :cond_12

    if-nez v4, :cond_12

    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService;->checkRpaStop()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 994
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_11

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration false "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    :cond_11
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/bluetooth/IBluetooth;->setRPAGeneration(Z)V

    .line 996
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mRpaGeneration:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5

    .line 1001
    :cond_12
    :goto_6
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "BluetoothManagerService"

    const-string v7, "Unregistered for death Notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 954
    :catch_3
    move-exception v2

    .line 955
    .local v2, "ex":Ljava/util/NoSuchElementException;
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "no such element, already unlinked"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 964
    .end local v2    # "ex":Ljava/util/NoSuchElementException;
    :cond_13
    :try_start_c
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-ne v6, v9, :cond_15

    .line 965
    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v6, :cond_14

    .line 966
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_5

    .line 985
    :catch_4
    move-exception v1

    .line 986
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_d
    const-string v6, "BluetoothManagerService"

    const-string v7, "Unable to call updateBleAppCount"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 990
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v6

    .line 968
    :cond_14
    const/4 v6, 0x3

    :try_start_e
    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto :goto_5

    .line 970
    :cond_15
    sget v6, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    sget v7, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    sub-int/2addr v6, v7

    if-ne v6, v9, :cond_16

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-nez v6, :cond_16

    .line 971
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2be

    const/16 v8, 0xf

    const/16 v9, 0x10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 972
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 973
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2be

    const/16 v8, 0x10

    const/16 v9, 0xa

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 974
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 975
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mGoogleBleState:I

    goto/16 :goto_5

    .line 976
    .end local v3    # "msg":Landroid/os/Message;
    :cond_16
    sget v6, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-ne v6, v9, :cond_17

    iget-boolean v6, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    if-eqz v6, :cond_17

    .line 977
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2bf

    const/16 v8, 0xf

    const/16 v9, 0x10

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 978
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 979
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    const/16 v7, 0x2bf

    const/16 v8, 0x10

    const/16 v9, 0xa

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 980
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService;->mHandler:Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 981
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/BluetoothManagerService;->mSamsugBleState:I

    goto/16 :goto_5

    .line 983
    .end local v3    # "msg":Landroid/os/Message;
    :cond_17
    sget-boolean v6, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v6, :cond_f

    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "updateBleAppCount else:false case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_5

    .line 998
    :catch_5
    move-exception v2

    .line 999
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    const-string/jumbo v7, "setRPAGeneration fails"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public updateSBleAppCount(Landroid/os/IBinder;Z)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 850
    sget v1, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    .line 851
    .local v1, "prevBleAppCount":I
    iput-boolean v4, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/android/server/BluetoothManagerService;->updateBleAppCount(Landroid/os/IBinder;Z)I

    .line 853
    iput-boolean v3, p0, Lcom/android/server/BluetoothManagerService;->mUsingSSUpdate:Z

    .line 855
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-ge v1, v3, :cond_2

    .line 856
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 857
    .local v2, "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-nez v2, :cond_0

    .line 858
    const-string v3, "BluetoothManagerService"

    const-string v4, "Updating Ble App count failed, return"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 885
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :goto_0
    return v3

    .line 862
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_0
    invoke-virtual {v2, p1, v4}, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;->setTokenAndAppInfo(Landroid/os/IBinder;Z)V

    .line 863
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    monitor-enter p0

    .line 865
    :try_start_0
    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 866
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "BluetoothManagerService"

    const-string v4, "Registered for death Notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_1
    :goto_1
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    goto :goto_0

    .line 866
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 869
    .end local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    :cond_2
    sget v3, Lcom/android/server/BluetoothManagerService;->mBleAppCount:I

    if-le v1, v3, :cond_1

    .line 870
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;

    .line 871
    .restart local v2    # "r":Lcom/android/server/BluetoothManagerService$ClientDeathRecipient;
    if-eqz v2, :cond_1

    .line 874
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 878
    :goto_2
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService;->mSamsungBleApps:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    monitor-enter p0

    .line 880
    :try_start_3
    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    if-lez v3, :cond_3

    sget v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/android/server/BluetoothManagerService;->mSamsungBleAppCount:I

    .line 881
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 882
    sget-boolean v3, Lcom/android/server/BluetoothManagerService;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "BluetoothManagerService"

    const-string v4, "Unregistered for death Notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, "ex":Ljava/util/NoSuchElementException;
    const-string v3, "BluetoothManagerService"

    const-string/jumbo v4, "no such element, already unlinked"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 881
    .end local v0    # "ex":Ljava/util/NoSuchElementException;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method
