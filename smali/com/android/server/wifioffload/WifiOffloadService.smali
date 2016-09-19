.class public Lcom/android/server/wifioffload/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;
    }
.end annotation


# static fields
.field private static final DATA_USAGE_THRESHOLD:I = 0x1

.field private static final DONT_SHOW_WIFI_POPUP_TIMER:J = 0x2932e00L

.field private static final MSG_CHECK_WIFIOFFLOADING_CONDITIONS_FOR_PACKAGE:I = 0x65

.field private static final MSG_START_WIFIOFFLOAD_DIALOG_DELAYED_MSG:I = 0x66

.field private static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "app.offload.datausage.limit"

.field private static final TAG:Ljava/lang/String; = "WifiOffloadService"

.field private static final WIFIOFFLOAD_APDIALOG_LAUNCH_DELAYTIME:J = 0x3e8L


# instance fields
.field private mAirPlaneModeEnabled:Z

.field private mAppLaunchCount:I

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

.field private mDateFormatter:Ljava/text/SimpleDateFormat;

.field private mDependentPackagesTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsTimerRunning:Z

.field private mIsWifiOffloadDialogIntentSent:Z

.field private mMessageHandler:Landroid/os/Handler;

.field private mMobileHotSpotEnabled:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviousSsidResult:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowWifiPopupEnabled:Z

.field private mStartTime:J

.field private mWifiConnectedToAP:Z

.field private mWifiEnabled:Z

.field private final mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mWifiOffloadLog:Ljava/lang/StringBuilder;

.field private final mblackListedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    .line 93
    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    .line 95
    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 97
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    .line 98
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    .line 99
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    .line 100
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    .line 101
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    .line 102
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    .line 103
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    .line 105
    iput v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    .line 106
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    .line 108
    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 110
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDateFormatter:Ljava/text/SimpleDateFormat;

    .line 112
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDependentPackagesTable:Ljava/util/HashMap;

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    .line 116
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    .line 637
    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadService$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifioffload/WifiOffloadService$1;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    .line 708
    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadService$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifioffload/WifiOffloadService$2;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

    .line 760
    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService$3;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 123
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    .line 124
    const-string v2, "WifiOffloadService"

    const-string v5, "WifiOffloadService onCreate()"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/wifioffload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    .line 127
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    invoke-virtual {v2}, Lcom/android/server/wifioffload/WifiOffloadDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 129
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 132
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_offload_network_notify"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    .line 146
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    .line 156
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 160
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "wifi_offload_network_notify"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->generateDependencyTable()V

    .line 166
    invoke-static {}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->initStats()V

    .line 167
    return-void

    :cond_0
    move v2, v4

    .line 143
    goto :goto_0

    :cond_1
    move v2, v4

    .line 146
    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/wifioffload/WifiOffloadService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifioffload/WifiOffloadService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->checkWifiOffloadConditions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->startWifiOffloadActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifioffload/WifiOffloadService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    return p1
.end method

.method private addDumpLogs(Ljava/lang/String;)V
    .locals 3
    .param p1, "logs"    # Ljava/lang/String;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    return-void
.end method

.method private areAllPreConditionsPassed()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "interfaceTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 374
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifioffload/WifiOffloadService;->getDataUsageForUid(ILandroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 375
    .local v2, "dataUsage":J
    invoke-direct {p0, p2}, Lcom/android/server/wifioffload/WifiOffloadService;->getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 376
    .local v6, "listOfPackagesForDataUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    .local v0, "currentPackage":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 384
    .local v1, "currentPackageUid":I
    invoke-direct {p0, v1, p3}, Lcom/android/server/wifioffload/WifiOffloadService;->getDataUsageForUid(ILandroid/net/NetworkTemplate;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    add-long/2addr v2, v8

    goto :goto_0

    .line 387
    .end local v1    # "currentPackageUid":I
    :catch_0
    move-exception v4

    .line 388
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 389
    const-string v7, "WifiOffloadService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Tried to check data usage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for dependencies but failed to find package. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-wide v2
.end method

.method private checkNetworksAndShowAPDialog()V
    .locals 8

    .prologue
    .line 556
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 557
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 559
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 560
    :cond_0
    const-string v4, "WifiOffloadService"

    const-string v5, "No networks. Start scanning."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 596
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    :goto_0
    return-void

    .line 569
    .restart local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 570
    .local v3, "ssidResultSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 571
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/wifi/ScanResult;>;"
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 572
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 573
    .local v0, "info":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->isHiddenOrPoorNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 574
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 578
    .end local v0    # "info":Landroid/net/wifi/ScanResult;
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 579
    const-string v4, "WifiOffloadService"

    const-string v5, "All scanresults are hidden or ad-hoc networks"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 585
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 586
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPreviousSsidResult:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 588
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    .line 589
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 593
    :cond_7
    const-string/jumbo v4, "scanresults are same \n"

    invoke-direct {p0, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkWifiOffloadConditions(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 508
    iput-boolean v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    .line 509
    iput v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    .line 511
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 512
    .local v1, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\npackage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 515
    const/4 v3, -0x1

    .line 517
    .local v3, "uid":I
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 519
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->isOffloadNeeded(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 525
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->getAppLaunchCount(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 526
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->insertDataUsage(Ljava/lang/String;)V

    .line 546
    :cond_0
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dialogInvoked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 547
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    .line 548
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 549
    return-void

    .line 520
    :catch_0
    move-exception v2

    .line 521
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 528
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-direct {p0, p1, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->updateAppLaunchCount(Ljava/lang/String;I)V

    .line 529
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->areAllPreConditionsPassed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 530
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWifiEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 531
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mWifiConnectedToAP="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 532
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMobileHotSpotEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 533
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mAirPlaneModeEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 534
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mShowWifiPopupEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 535
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifioffload/WifiOffloadService;->isAppDataUsageLimitExceeded(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 537
    .local v4, "originalId":J
    iget-boolean v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    if-eqz v6, :cond_3

    .line 538
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    .line 540
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1
.end method

.method private generateDependencyTable()V
    .locals 6

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDependentPackagesTable:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.email.ui"

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.samsung.android.email.sync"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    return-void
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 785
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 787
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 790
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAppLaunchCount(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 342
    const/4 v7, 0x0

    .line 344
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packagename = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "app_datausage"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifioffload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 348
    if-eqz v7, :cond_0

    .line 349
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const-string/jumbo v0, "launchcount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_0
    if-eqz v7, :cond_1

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_1
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "launch count in DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launchCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    return v0

    .line 355
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 356
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getDataUsageForUid(ILandroid/net/NetworkTemplate;)J
    .locals 14
    .param p1, "appUid"    # I
    .param p2, "statsTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 404
    const/4 v9, 0x0

    .line 405
    .local v9, "history":Landroid/net/NetworkStatsHistory;
    const/4 v0, 0x0

    .line 410
    .local v0, "statsSession":Landroid/net/INetworkStatsSession;
    :try_start_0
    const-string/jumbo v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v10

    .line 413
    .local v10, "statsService":Landroid/net/INetworkStatsService;
    if-eqz v10, :cond_0

    .line 414
    invoke-interface {v10}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 416
    :cond_0
    if-eqz v0, :cond_2

    .line 417
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object/from16 v1, p2

    move v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 430
    .end local v9    # "history":Landroid/net/NetworkStatsHistory;
    .end local v10    # "statsService":Landroid/net/INetworkStatsService;
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    :goto_0
    if-eqz v0, :cond_1

    .line 431
    :try_start_1
    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 438
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 439
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 441
    .local v8, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v8, :cond_3

    .line 442
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataUsage for app with uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v12, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v2, v4

    .line 447
    .end local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_2
    return-wide v2

    .line 421
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v9    # "history":Landroid/net/NetworkStatsHistory;
    :catch_0
    move-exception v7

    .line 422
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 423
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError in getting UID history "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    .line 427
    .end local v9    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v1    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    .line 424
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v9    # "history":Landroid/net/NetworkStatsHistory;
    :catch_1
    move-exception v7

    .line 425
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 426
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in getting history for uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, v9

    .end local v9    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v1    # "history":Landroid/net/NetworkStatsHistory;
    goto/16 :goto_0

    .line 433
    :catch_2
    move-exception v7

    .line 434
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 435
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ex in closing statsSession "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 447
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDependentPackagesTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 699
    .local v0, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v0    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method private insertDataUsage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 456
    const-string v1, "WifiOffloadService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertDataUsage for pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 459
    .local v0, "cvalues":Landroid/content/ContentValues;
    const-string/jumbo v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string/jumbo v1, "launchcount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 461
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "app_datausage"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wifioffload/WifiOffloadDB;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method private isAppDataUsageLimitExceeded(Ljava/lang/String;I)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 279
    const/16 v6, 0x3e8

    if-eq p2, v6, :cond_0

    const/4 v6, -0x1

    if-ne v6, p2, :cond_1

    .line 280
    :cond_0
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    .line 283
    :cond_1
    const/4 v0, 0x0

    .line 288
    .local v0, "dataUsageCrossed":Z
    const/high16 v6, 0x100000

    const-string v7, "app.offload.datausage.limit"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    mul-int v1, v6, v7

    .line 291
    .local v1, "dataUsageThreshold":I
    const-string v6, " PROPERTY_DATA_USAGE_THREHOLD 1"

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 296
    .local v2, "originalId":J
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J

    move-result-wide v4

    .line 298
    .local v4, "totalDataUsage":J
    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Usage for Wi-fi Interface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n     wifiUsage: total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " perLaunch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v7

    div-long v8, v4, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 301
    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Usage per launch count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v8

    div-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v6, v6

    div-long v6, v4, v6

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    .line 305
    const-string v6, "WifiOffloadService"

    const-string v7, "App\'s datausage exceeds the threshold so Offload"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x1

    .line 307
    const-string v6, "\n"

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 329
    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    dataUsageExceeded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 331
    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dataUsageCrossed ? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    :cond_3
    const-string v6, "WifiOffloadService"

    const-string v7, "Data Usage does not reach threshold yet"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/wifioffload/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v6

    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wifiAndMobileUsage: total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " perLaunch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v7

    div-long v8, v4, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 319
    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Usage for Wi-Fi + Mobile Interface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v6, "WifiOffloadService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Usage per launch count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v8

    div-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v6, v6

    div-long v6, v4, v6

    int-to-long v8, v1

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 325
    const-string v6, "WifiOffloadService"

    const-string v7, "DataUsage exceeds the threshold"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method private isAppInBackground(Ljava/lang/String;)Z
    .locals 10
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 178
    .local v3, "manager":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 179
    .local v2, "isAppinBg":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 181
    .local v4, "originalId":J
    const/16 v8, 0x1f4

    :try_start_0
    invoke-virtual {v3, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 183
    .local v7, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 184
    .local v6, "process":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v6, :cond_0

    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 187
    const/4 v2, 0x1

    .line 194
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "process":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appinbg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 196
    return v2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method private isHiddenOrPoorNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 606
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v1, -0x55

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOffloadNeeded(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 208
    .local v0, "blacklist":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package is in blacklist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 209
    if-eqz v0, :cond_1

    .line 210
    if-nez v0, :cond_0

    :goto_0
    move v5, v4

    .line 238
    :goto_1
    return v5

    :cond_0
    move v4, v5

    .line 210
    goto :goto_0

    .line 216
    :cond_1
    const/16 v6, 0x3e8

    if-ne p2, v6, :cond_2

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "its System uid ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 218
    iget-object v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 222
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 223
    .local v3, "listOfPackagesForDataUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, "currentPackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mblackListedApps:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 233
    .end local v1    # "currentPackage":Ljava/lang/String;
    :cond_4
    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.permission.INTERNET"

    invoke-virtual {v7, v8, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " have no internet permission"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v5, v4

    .line 238
    goto :goto_1
.end method

.method private isTimerRunning()Z
    .locals 4

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "12hrstimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 267
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    return v0
.end method

.method private startWifiOffloadActivity()V
    .locals 3

    .prologue
    .line 615
    const-string v1, "WifiOffloadService"

    const-string/jumbo v2, "startWifiOffloadActivity () "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wifioffload.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, "startWifiDialogIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    .line 618
    const-string v1, "WifiOffloadService"

    const-string v2, "There  is no associated handler for intent, Cann\'t resolve the activity "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_0
    return-void

    .line 630
    :cond_0
    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 633
    const-string v1, "EXTRA_PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateAppLaunchCount(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "currentLaunchCount"    # I

    .prologue
    .line 472
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .local v2, "cv":Landroid/content/ContentValues;
    const-string/jumbo v0, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packagename = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "app_datausage"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifioffload/WifiOffloadDB;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method


# virtual methods
.method public checkAppForWiFiOffloading(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 485
    if-nez p1, :cond_1

    .line 486
    const-string v0, "WifiOffloadService"

    const-string v1, "checkAppForWiFiOffloading package name is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 491
    const-string v0, "WifiOffloadService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->isAppInBackground(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 5
    .param p1, "taskID"    # I

    .prologue
    .line 671
    const-string v2, "WifiOffloadService"

    const-string v3, "Move task to front..!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 674
    .local v1, "manager":Landroid/app/IActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    :goto_0
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 678
    const-string v2, "WifiOffloadService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException move task to front "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 841
    const-string v0, "WifiOffloadService"

    const-string/jumbo v1, "dump started"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v0, "WifiOffloadService"

    const-string v1, "check if the caller has DUMP permission"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiOffloadService from pid="

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

    .line 858
    :goto_0
    return-void

    .line 852
    :cond_0
    const-string v0, "WifiOffloadService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    invoke-static {p2}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->dumpStats(Ljava/io/PrintWriter;)V

    .line 857
    const-string v0, "WifiOffloadService"

    const-string/jumbo v1, "dump finished"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startTimer()V
    .locals 2

    .prologue
    .line 660
    const-string v0, "WifiOffloadService"

    const-string v1, "12hrs Timer started "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTimerRunning:Z

    .line 663
    return-void
.end method
