.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.super Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    }
.end annotation


# static fields
.field private static final ALIASACCESSIBLE:I = 0x1

.field private static final ALIASINACCESSIBLE:I = 0x0

.field private static final ALIASUNKNOWN:I = 0x2

.field private static final BOOT_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.boot"

.field private static final CMC_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmc"

.field private static final CMP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.cmp"

.field private static final CREDENTIAL_AGENT_INTENT:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static final CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

.field private static final CREDENTIAL_AGENT_PERMISSION:Ljava/lang/String; = "com.samsung.ucm.permission.agent"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final ESE_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.ucs.agent.ese"

.field private static final EVENT_LICENSE_ACTIVATE:I = 0x1

.field private static final EVENT_LICENSE_EXPIRED:I = 0x2

.field private static final KNOX_UCSM_PLUGIN_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

.field private static final MSG_CREDENTIAL_STORAGE_AVAILABLE:I = 0x3

.field private static final MSG_CREDENTIAL_STORAGE_CHANGED:I = 0x2

.field private static final MSG_PACKAGE_LICENSE_UPDATE:I = 0x4

.field private static final MSG_REFRESH_ACTIVE_AGENTS:I = 0x1

.field private static final MSG_REFRESH_APPLET_INFO:I = 0x5

.field private static final ODE_CONFIG_PATH:Ljava/lang/String; = "/efs/sec_efs"

.field private static final SCEP_CLIENT_PKG:Ljava/lang/String; = "com.samsung.android.certenrollservice.scep"

.field private static final STORAGE_CONFIG_PATH:Ljava/lang/String; = "/data/system"

.field private static final TAG:Ljava/lang/String; = "UcmService"

.field private static final UCS_ODE_CHECK_PROPERTY:Ljava/lang/String; = "persist.security.ucs"

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private activeAgentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public bUseBlockingQueue:Z

.field private certEnrollSystemApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final interfaceQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppletsInfoLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPersistentAppletInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentAppletInfoFile:Landroid/util/AtomicFile;

.field private final mPersistentServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentServicesFile:Landroid/util/AtomicFile;

.field private mPersistentServicesFileDidNotExist:Z

.field private mPm:Landroid/content/pm/IPackageManager;

.field private mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

.field private final mServicesLock:Ljava/lang/Object;

.field private mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

.field private mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

.field private mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

.field private pinpadConn:Landroid/content/ServiceConnection;

.field private pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

.field private test_status_for_ode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.ucm.agent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 230
    invoke-direct {p0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;-><init>()V

    .line 120
    iput-boolean v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 135
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    .line 139
    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 140
    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 141
    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 146
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    .line 147
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    .line 149
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    .line 150
    iput-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    .line 151
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    .line 152
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    .line 154
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    .line 158
    new-instance v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v4, v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    .line 174
    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;

    invoke-direct {v4, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    .line 387
    new-instance v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;

    invoke-direct {v4, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadConn:Landroid/content/ServiceConnection;

    .line 231
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    .line 233
    new-instance v4, Lcom/samsung/ucm/ucmservice/PolicyManager;

    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    .line 234
    new-instance v4, Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-direct {v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;-><init>()V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    .line 236
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 237
    .local v0, "dataDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "system"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 238
    .local v3, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "registered_ucm_services"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    .local v2, "syncDir":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "com.samsung.ucm.agent.xml"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    .line 240
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system"

    const-string v7, "appletsConfig.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    .line 242
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    .line 244
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string/jumbo v4, "package"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;

    invoke-direct {v5, p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$2;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 266
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 267
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    monitor-enter v5

    .line 268
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    .line 269
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-boolean v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    if-nez v4, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bindUCSPinpadService()V

    .line 273
    :cond_0
    const-string/jumbo v4, "ro.crypto.state"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "unencrypted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "vold.decrypt"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "trigger_restart_framework"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "vold.decrypt"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "trigger_reset_main"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    :cond_1
    const-string/jumbo v4, "persist.security.ucs"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ro.boot.ucs_mode"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteODEConfigInFileIfExist()V

    .line 280
    :cond_2
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v5, "com.samsung.android.certenrollservice.scep"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v5, "com.samsung.android.certenrollservice.cmp"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    const-string v5, "com.samsung.android.certenrollservice.cmc"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-void

    .line 269
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mAppletsInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentAppletsInfoLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/CredentialManagerService;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgentList(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;)Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p1, "x1"    # Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    return-object p1
.end method

.method private bindUCSPinpadService()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 363
    const-string v2, "UcmService"

    const-string v3, "bindUCSPinpadService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    if-eqz v2, :cond_0

    .line 365
    const-string v2, "UcmService"

    const-string v3, "UCS pinpad service is already bound"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_0
    return-void

    .line 368
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 369
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.ucs.ucspinpad"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v2, "com.samsung.ucs.ucspinpad.BIND_UCS_PINPAD_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    if-ne v2, v4, :cond_1

    .line 374
    :try_start_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :cond_1
    :goto_1
    const-string v2, "UcmService"

    const-string v3, "bindUCSPinpadService() - bindService true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "UcmService"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 378
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 383
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const-string v2, "UcmService"

    const-string v3, "bindUCSPinpadService() - bindService false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkCaller(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "expectedPackage"    # Ljava/lang/String;

    .prologue
    .line 3856
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3857
    .local v0, "actualPackage":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "actualPackage":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "actualPackage":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 6
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 347
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v1, "CredentialManagerService"

    .line 349
    .local v1, "serviceName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-nez v2, :cond_1

    .line 359
    :cond_0
    return v5

    .line 352
    :cond_1
    sget-object v2, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 357
    throw v0
.end method

.method private checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 11
    .param p1, "activeAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 908
    new-instance v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 909
    .local v0, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v8, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    iput-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 910
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 911
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 912
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify for cs Name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v8, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v1, v8, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 919
    .local v1, "enforceManagement":Z
    if-eqz v1, :cond_3

    .line 920
    const-string v8, "UcmService"

    const-string/jumbo v9, "notifying to managed plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 922
    .local v3, "mUm":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 924
    .local v7, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .line 925
    .local v4, "notify":Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 926
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    .line 927
    .local v5, "userId":I
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkIfNotify: Valid userid - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8, v5, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isStorageEnabled(ILcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    .line 929
    if-eqz v4, :cond_0

    .line 935
    .end local v1    # "enforceManagement":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mUm":Landroid/os/UserManager;
    .end local v4    # "notify":Z
    .end local v5    # "userId":I
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v7    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :goto_0
    return v4

    .line 914
    :cond_2
    const-string v8, "UcmService"

    const-string v9, "Package name for CS found NULL. Cannot notify."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v4, 0x0

    goto :goto_0

    .line 934
    .restart local v1    # "enforceManagement":Z
    :cond_3
    const-string v8, "UcmService"

    const-string/jumbo v9, "notifying to unmanaged plugin"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkPluginUsed(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2895
    const-string/jumbo v4, "persist.keyguard.ucs.csname"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2896
    .local v1, "keyguardCSName":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2897
    .local v2, "source":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 2898
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2899
    const-string v4, "UcmService"

    const-string v5, "This plugin is already used in keyguard"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :goto_0
    return v3

    .line 2905
    :cond_0
    const-string/jumbo v4, "persist.security.ucs.csname"

    const-string v5, "None"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2906
    .local v0, "ODECSName":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2907
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 2908
    const-string v4, "UcmService"

    const-string v5, "This plugin is already used in ODE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2912
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkSystemCaller()V
    .locals 2

    .prologue
    .line 3849
    const-string v1, "android.uid.system:1000"

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCaller(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3850
    .local v0, "actual":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3851
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3853
    :cond_0
    return-void
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 9
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v6, 0x0

    .line 320
    if-nez p0, :cond_0

    .line 321
    const-string v7, "UcmService"

    const-string v8, "Signature s1 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :goto_0
    return v6

    .line 324
    :cond_0
    if-nez p1, :cond_1

    .line 325
    const-string v7, "UcmService"

    const-string v8, "Signature s2 is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 330
    .local v3, "set1":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 331
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 334
    .local v4, "set2":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/pm/Signature;>;"
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    .line 335
    .restart local v5    # "sig":Landroid/content/pm/Signature;
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 338
    .end local v5    # "sig":Landroid/content/pm/Signature;
    :cond_3
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 339
    const-string v6, "UcmService"

    const-string v7, "  Signature match"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v6, 0x1

    goto :goto_0

    .line 342
    :cond_4
    const-string v7, "UcmService"

    const-string v8, "  Signature doesn\'t match"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private convertByteToString([B)Ljava/lang/String;
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 675
    const-string v2, ""

    .line 676
    .local v2, "byteString":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 677
    .local v1, "b":B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    .end local v1    # "b":B
    :cond_0
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertByteToString result - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-object v2
.end method

.method private deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "ismdmcaller"    # Z
    .param p3, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2233
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2235
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2236
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2237
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteInternal : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2239
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2292
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 2244
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2245
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2246
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 2247
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 2248
    :cond_1
    if-eqz p2, :cond_3

    move/from16 v4, p3

    .line 2249
    .local v4, "user_id":I
    :goto_1
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 2250
    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    const/4 v13, 0x1

    .line 2253
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2254
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 2255
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! deleteInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2257
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2248
    .end local v4    # "user_id":I
    .end local v13    # "uriresource":I
    .end local v14    # "id":J
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    goto :goto_1

    .line 2260
    .restart local v4    # "user_id":I
    .restart local v13    # "uriresource":I
    .restart local v14    # "id":J
    :cond_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2264
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v17

    .line 2265
    .local v17, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_7

    .line 2266
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2267
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    .end local v17    # "userId":I
    :cond_5
    :goto_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2274
    .local v12, "argBundle":Landroid/os/Bundle;
    if-eqz p2, :cond_6

    const-string/jumbo v2, "ismdm"

    move/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2275
    :cond_6
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2276
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2277
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2278
    const-string/jumbo v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2280
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2286
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_8

    .line 2287
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2289
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2269
    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    :cond_7
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2292
    .end local v17    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private deleteODEConfigInFileIfExist()V
    .locals 4

    .prologue
    .line 3489
    const-string v2, "UcmService"

    const-string/jumbo v3, "deleteODEConfigInFile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/sec_efs"

    const-string/jumbo v3, "odeConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    .local v1, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 3492
    .local v0, "existFile":Z
    if-nez v0, :cond_0

    .line 3493
    const-string v2, "UcmService"

    const-string v3, "ODE config file does not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    :goto_0
    return-void

    .line 3495
    :cond_0
    const-string v2, "UcmService"

    const-string v3, "ODE config file exist so delete it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "isSystem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2334
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2336
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2337
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2338
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2340
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2394
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 2345
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2346
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2347
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 2348
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 2349
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2350
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 2351
    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    const/4 v13, 0x1

    .line 2353
    :cond_2
    if-nez p5, :cond_4

    .line 2355
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2356
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2357
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! generateKeyPairMain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2359
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2362
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2367
    .end local v14    # "id":J
    :cond_4
    if-eqz p5, :cond_5

    .line 2368
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v17

    .line 2369
    .local v17, "userId":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPairMain system provided userId"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    .line 2371
    move/from16 v4, v17

    .line 2375
    .end local v17    # "userId":I
    :cond_5
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2376
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2377
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2378
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2379
    const-string/jumbo v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2380
    const-string/jumbo v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2382
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPair KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPair KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateKeyPair KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2388
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 2389
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2391
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2394
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;
    .locals 4
    .param p1, "credAgent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2015
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2016
    .local v0, "agentInfoBundle":Landroid/os/Bundle;
    iget-object v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 2017
    .local v1, "credAgentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v1, :cond_5

    .line 2018
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "uniqueId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    :cond_0
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "id"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    :cond_1
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "summary"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    :cond_2
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string/jumbo v2, "title"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    :cond_3
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "vendorId"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    :cond_4
    const-string/jumbo v2, "isDetachable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2024
    const-string/jumbo v2, "reqUserVerification"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2025
    const-string/jumbo v2, "isHardwareBacked"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2026
    const-string/jumbo v2, "isReadOnly"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2027
    const-string/jumbo v2, "isManageable"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2028
    const-string/jumbo v2, "enforceManagement"

    iget-boolean v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2029
    iget-object v2, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v2, "configuratorList"

    iget-object v3, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    :cond_5
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    .line 2032
    iget-object v2, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2033
    const-string/jumbo v2, "packageName"

    iget-object v3, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    :cond_6
    return-object v0
.end method

.method private getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .locals 4
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 602
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo is called for pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 605
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v0, :cond_1

    .line 606
    const-string v1, "UcmService"

    const-string/jumbo v2, "getAppletInfo pluginName entry found.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo appletLocation-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo pluginName-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo adminId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAppletInfo aid-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v1, :cond_0

    .line 612
    iget-object v1, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    .line 617
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 3
    .param p1, "agentResponse"    # Landroid/os/Bundle;

    .prologue
    .line 2398
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2399
    .local v1, "errorcode":I
    const-string v2, "bytearrayresponse"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2400
    .local v0, "data":[B
    new-instance v2, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    invoke-direct {v2, v1, v0}, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;-><init>(I[B)V

    return-object v2
.end method

.method private declared-synchronized getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    if-nez v0, :cond_0

    .line 169
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMMDMService:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getUCMService()Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    .locals 1

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    if-nez v0, :cond_0

    .line 162
    const-string/jumbo v0, "knox_ucsm_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mUCMService:Lcom/sec/enterprise/knox/ucm/configurator/IUniversalCredentialManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getuseridforuid(I)I
    .locals 1
    .param p1, "callingUid"    # I

    .prologue
    .line 1533
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1534
    .local v0, "callerUserId":I
    return v0
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 684
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 685
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 686
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 687
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 689
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 691
    :cond_0
    return-object v0
.end method

.method private importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .param p5, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2139
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPair "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2142
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2143
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2144
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPair : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2146
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2205
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    :goto_0
    return-object v10

    .line 2149
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "agent= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v6, v6, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2153
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2154
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 2155
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 2156
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2157
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v13

    .line 2158
    .local v13, "uriresource":I
    const/4 v2, -0x1

    if-ne v13, v2, :cond_2

    const/4 v13, 0x1

    .line 2160
    :cond_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2161
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ismdm"

    move/from16 v0, p5

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2163
    if-eqz p5, :cond_4

    if-eqz p4, :cond_4

    .line 2164
    const-string v2, "callerUid"

    const-string v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2165
    const-string/jumbo v2, "ownerUid"

    const-string v3, "admin_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2166
    const-string/jumbo v2, "renew"

    const-string/jumbo v3, "renew"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2168
    const-string v2, "allow_wifi"

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2169
    const-string/jumbo v2, "resource"

    const/4 v3, 0x3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2173
    :goto_1
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userd id from MDM = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    const-string/jumbo v2, "user_id"

    const-string/jumbo v3, "user_id"

    const/4 v6, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2175
    const-string/jumbo v2, "extraArgs"

    move-object/from16 v0, p4

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2183
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2184
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    move/from16 v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 2185
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! importKeyPairInternal is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2187
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2171
    .end local v14    # "id":J
    :cond_3
    const-string/jumbo v2, "resource"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 2177
    :cond_4
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2178
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2179
    const-string/jumbo v2, "resource"

    invoke-virtual {v12, v2, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2180
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 2190
    .restart local v14    # "id":J
    :cond_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2193
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPairInternal KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPairInternal KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "importKeyPairInternal KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2199
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 2200
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2202
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2205
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private isCallFromSystem(I)Z
    .locals 10
    .param p1, "adminUid"    # I

    .prologue
    .line 3872
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCallFromSystem adminUid-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    const/4 v6, 0x0

    .line 3875
    .local v6, "status":Z
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 3876
    .local v5, "pkgs":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 3877
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 3878
    .local v4, "pkgName":Ljava/lang/String;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCallFromSystem pkgName-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->certEnrollSystemApps:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3880
    const-string v7, "UcmService"

    const-string/jumbo v8, "isCallFromSystem match found...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3881
    const/4 v6, 0x1

    .line 3889
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCallFromSystem status-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    return v6

    .line 3877
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3886
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3887
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCallFromSystem e-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 305
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 307
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x40

    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 310
    .local v3, "targetPkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 313
    .local v2, "sys":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v5, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    .line 315
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "sys":Landroid/content/pm/PackageInfo;
    .end local v3    # "targetPkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private isSystemStorage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 287
    const-string v0, "com.samsung.ucs.agent.ese"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.ucs.agent.boot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidFormFactor(Ljava/lang/String;)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "status":Z
    if-eqz p1, :cond_1

    .line 581
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 593
    const/4 v0, 0x0

    .line 596
    :cond_1
    :goto_1
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidFormFactor type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return v0

    .line 581
    :sswitch_0
    const-string/jumbo v2, "eSE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "eSE1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "SIM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "SIM1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "SIM2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "SD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "SD1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 590
    :pswitch_0
    const/4 v0, 0x1

    .line 591
    goto :goto_1

    .line 581
    :sswitch_data_0
    .sparse-switch
        0xa51 -> :sswitch_5
        0x14000 -> :sswitch_6
        0x140b7 -> :sswitch_2
        0x18577 -> :sswitch_0
        0x26d65a -> :sswitch_3
        0x26d65b -> :sswitch_4
        0x2f299a -> :sswitch_1
        0x6761d4f -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidMsgType(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1193
    const/4 v0, 0x0

    .line 1194
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    .line 1201
    const/4 v0, 0x0

    .line 1203
    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidMsgType type-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    return v0

    .line 1198
    :pswitch_0
    const/4 v0, 0x1

    .line 1199
    goto :goto_0

    .line 1194
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidSCPProtocol(I)Z
    .locals 4
    .param p1, "protocolType"    # I

    .prologue
    .line 1177
    const/4 v0, 0x0

    .line 1178
    .local v0, "status":Z
    packed-switch p1, :pswitch_data_0

    .line 1186
    const/4 v0, 0x0

    .line 1188
    :goto_0
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isValidSCPProtocol protocolType-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    return v0

    .line 1183
    :pswitch_0
    const/4 v0, 0x1

    .line 1184
    goto :goto_0

    .line 1178
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private listExposedProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 8
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2497
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2499
    .local v3, "finalagents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2500
    .local v0, "agent":Landroid/os/Bundle;
    const-string/jumbo v5, "uniqueId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2501
    .local v2, "cs_id":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2502
    :cond_0
    const-string v5, "UcmService"

    const-string v6, "WARNING!!!! null/empty ID returned for agent bundle. Skipping agent."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2505
    :cond_1
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2506
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! Obscure CS agent bundle. Skipping agent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2509
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2511
    .end local v0    # "agent":Landroid/os/Bundle;
    .end local v2    # "cs_id":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/os/Bundle;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Bundle;

    return-object v5
.end method

.method private listProvidersInternal(Z)[Landroid/os/Bundle;
    .locals 12
    .param p1, "ismdmcaller"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2516
    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 2517
    .local v2, "user_id":I
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2540
    :goto_0
    return-object v5

    .line 2520
    :cond_0
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "listProviders "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " and ismdmcaller-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2522
    .local v6, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 2523
    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v1, :cond_1

    .line 2527
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2528
    .local v10, "id":J
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2529
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v9, v9, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2534
    :cond_2
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v7

    .line 2535
    .local v7, "cs":Landroid/os/Bundle;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2537
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2539
    .end local v1    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v7    # "cs":Landroid/os/Bundle;
    .end local v10    # "id":J
    :cond_3
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listProviders filtered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    move-object v5, v0

    goto/16 :goto_0
.end method

.method private processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "adminId"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 620
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest is called...adminId-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uri-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v7, 0x1

    .line 623
    .local v7, "status":Z
    if-eqz p3, :cond_1

    .line 624
    :try_start_0
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, "pluginName":Ljava/lang/String;
    const-string v1, "applet_location"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "appletLocation":Ljava/lang/String;
    const-string v1, "applet_id"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 627
    .local v3, "aid":[B
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest is called...appletLocation-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidFormFactor(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 630
    const-string/jumbo v1, "reset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 631
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest removed pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 656
    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :cond_1
    :goto_1
    return v7

    .line 636
    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 637
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_3
    new-instance v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 640
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 641
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest added pluginName-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 653
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "appletLocation":Ljava/lang/String;
    .end local v3    # "aid":[B
    .end local v4    # "pluginName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 654
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processAdminConfigRequest Exception"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 647
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "appletLocation":Ljava/lang/String;
    .restart local v3    # "aid":[B
    .restart local v4    # "pluginName":Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_1

    .line 648
    const/4 v7, 0x0

    .line 649
    :try_start_1
    const-string v1, "UcmService"

    const-string/jumbo v5, "processAdminConfigRequest not valid form factor"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private readPersistentAppletsInfoLocked()V
    .locals 20

    .prologue
    .line 734
    const-string v2, "UcmService"

    const-string/jumbo v18, "readPersistentAppletsInfoLocked is called..."

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v12, 0x0

    .line 739
    .local v12, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v12

    .line 741
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 742
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    invoke-interface {v15, v12, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 743
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    .line 745
    .local v11, "eventType":I
    :goto_0
    const/4 v2, 0x2

    if-eq v11, v2, :cond_0

    const/4 v2, 0x1

    if-eq v11, v2, :cond_0

    .line 746
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    goto :goto_0

    .line 748
    :cond_0
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 749
    .local v16, "tagName":Ljava/lang/String;
    const-string v2, "applets"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 750
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .line 752
    :cond_1
    const/4 v2, 0x2

    if-ne v11, v2, :cond_3

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v2, v0, :cond_3

    .line 753
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 754
    const-string v2, "applet"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 756
    const/4 v2, 0x0

    const-string/jumbo v18, "pluginName"

    move-object/from16 v0, v18

    invoke-interface {v15, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 757
    .local v5, "pluginName":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "appletLocation"

    move-object/from16 v0, v18

    invoke-interface {v15, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 758
    .local v3, "appletLocation":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "adminId"

    move-object/from16 v0, v18

    invoke-interface {v15, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 759
    .local v7, "adminId":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v18, "aid"

    move-object/from16 v0, v18

    invoke-interface {v15, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 761
    .local v8, "aid":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 762
    .local v6, "admin":I
    const/4 v4, 0x0

    .line 763
    .local v4, "aidByte":[B
    if-eqz v8, :cond_2

    .line 764
    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 766
    :cond_2
    new-instance v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V

    .line 767
    .local v1, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .end local v1    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v3    # "appletLocation":Ljava/lang/String;
    .end local v4    # "aidByte":[B
    .end local v5    # "pluginName":Ljava/lang/String;
    .end local v6    # "admin":I
    .end local v7    # "adminId":Ljava/lang/String;
    .end local v8    # "aid":Ljava/lang/String;
    :cond_3
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 773
    const/4 v2, 0x1

    if-ne v11, v2, :cond_1

    .line 778
    :cond_4
    if-eqz v12, :cond_5

    .line 780
    :try_start_1
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 786
    .end local v11    # "eventType":I
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 787
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 788
    .local v14, "key":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 789
    .local v17, "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  key-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  pluginName-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  AID-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  appletLocation-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v2, "UcmService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PersistentApplet  adminId-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 775
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "value":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    :catch_0
    move-exception v9

    .line 776
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "UcmService"

    const-string v18, "Error reading persistent applet info, starting from scratch"

    move-object/from16 v0, v18

    invoke-static {v2, v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 778
    if-eqz v12, :cond_5

    .line 780
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 781
    :catch_1
    move-exception v2

    goto/16 :goto_1

    .line 778
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_6

    .line 780
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 782
    :cond_6
    :goto_3
    throw v2

    .line 781
    .restart local v11    # "eventType":I
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16    # "tagName":Ljava/lang/String;
    :catch_2
    move-exception v2

    goto/16 :goto_1

    .end local v11    # "eventType":I
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "tagName":Ljava/lang/String;
    :catch_3
    move-exception v18

    goto :goto_3

    .line 796
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method private readPersistentServicesLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v12, 0x1

    .line 830
    const-string v11, "UcmService"

    const-string/jumbo v13, "readPersistentServicesLocked is called..."

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v3, 0x0

    .line 834
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    move v11, v12

    :goto_0
    iput-boolean v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z

    .line 835
    iget-boolean v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFileDidNotExist:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_2

    .line 869
    if-eqz v3, :cond_0

    .line 871
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 883
    :cond_0
    :goto_1
    return-void

    .line 834
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 838
    :cond_2
    :try_start_2
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    if-nez v11, :cond_3

    .line 839
    const-string v11, "UcmService"

    const-string/jumbo v12, "persistent service list is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 869
    if-eqz v3, :cond_0

    .line 871
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 872
    :catch_0
    move-exception v11

    goto :goto_1

    .line 842
    :cond_3
    :try_start_4
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 843
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 844
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 845
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v6, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 846
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 848
    .local v2, "eventType":I
    :goto_2
    if-eq v2, v14, :cond_4

    if-eq v2, v12, :cond_4

    .line 849
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_2

    .line 851
    :cond_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 852
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v11, "services"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 853
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 855
    :cond_5
    if-ne v2, v14, :cond_6

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v14, :cond_6

    .line 856
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 857
    const-string/jumbo v11, "service"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 858
    const/4 v11, 0x0

    const-string/jumbo v13, "uid"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 859
    .local v8, "uidString":Ljava/lang/String;
    const/4 v11, 0x0

    const-string/jumbo v13, "uniqueId"

    invoke-interface {v6, v11, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 860
    .local v9, "uniqueString":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .end local v8    # "uidString":Ljava/lang/String;
    .end local v9    # "uniqueString":Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    .line 864
    if-ne v2, v12, :cond_5

    .line 869
    :cond_7
    if-eqz v3, :cond_8

    .line 871
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 877
    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_8
    :goto_3
    iget-object v11, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 878
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 879
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 880
    .local v10, "value":Ljava/lang/Integer;
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PersistentServices  key-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-string v11, "UcmService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PersistentServices  value-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 866
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v11, "UcmService"

    const-string v12, "Error reading persistent services, starting from scratch"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 869
    if-eqz v3, :cond_8

    .line 871
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 872
    :catch_2
    move-exception v11

    goto :goto_3

    .line 869
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v3, :cond_9

    .line 871
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 873
    :cond_9
    :goto_5
    throw v11

    .line 872
    :catch_3
    move-exception v11

    goto/16 :goto_1

    .restart local v2    # "eventType":I
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "tagName":Ljava/lang/String;
    :catch_4
    move-exception v11

    goto :goto_3

    .end local v2    # "eventType":I
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_5
    move-exception v12

    goto :goto_5
.end method

.method private refreshAgentList(ILandroid/os/Bundle;)V
    .locals 23
    .param p1, "userId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 432
    :try_start_0
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "*****refreshAgentList userId-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is called***"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 434
    .local v14, "pm":Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;

    move-result-object v16

    .line 435
    .local v16, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 436
    .local v12, "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, "activatedPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 440
    .local v7, "expiredPackage":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 441
    const-string/jumbo v20, "event"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 442
    .local v6, "event":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_3

    .line 443
    const-string/jumbo v20, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 447
    :cond_0
    :goto_0
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "event "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", activatedPackage-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",expiredPackage-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .end local v6    # "event":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 450
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mPersistentServices size is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 453
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v15}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v11

    .line 454
    .local v11, "name":Landroid/content/ComponentName;
    if-nez v11, :cond_4

    .line 455
    const-string v20, "UcmService"

    const-string/jumbo v21, "name is empty"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 573
    .end local v2    # "activatedPackage":Ljava/lang/String;
    .end local v7    # "expiredPackage":Ljava/lang/String;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "name":Landroid/content/ComponentName;
    .end local v12    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v5

    .line 574
    .local v5, "e":Ljava/lang/Exception;
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exceptioon in refreshAgentList main- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 444
    .restart local v2    # "activatedPackage":Ljava/lang/String;
    .restart local v6    # "event":I
    .restart local v7    # "expiredPackage":Ljava/lang/String;
    .restart local v12    # "obsoleteAgents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;>;"
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_0

    .line 445
    :try_start_1
    const-string/jumbo v20, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 458
    .end local v6    # "event":I
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "name":Landroid/content/ComponentName;
    .restart local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;-><init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V

    .line 459
    .local v3, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v10, 0x0

    .line 460
    .local v10, "isValidAgent":Z
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 464
    .local v4, "agentPackageName":Ljava/lang/String;
    :try_start_2
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "-------Processing started for agentPackageName----- -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-eqz v7, :cond_5

    .line 466
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 467
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "agentPackageName -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is not an active plugin. Its license is expired. Ignoring it..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 549
    :catch_1
    move-exception v5

    .line 550
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exceptioon in refreshAgentList loop - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 472
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_4
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  agentPackageName -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is an active plugin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v20, "UcmService"

    const-string v21, "  Check if caller has UCS Plugin permission..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 475
    :try_start_5
    const-string v20, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_9

    .line 476
    const-string v20, "UcmService"

    const-string v21, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemStorage(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 478
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  agentPackageName "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is system storage. Checking system signature"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 480
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  system storage found - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is not valid. Ignoring it..."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 490
    :catch_2
    move-exception v17

    .line 491
    .local v17, "se":Ljava/lang/Exception;
    :try_start_6
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Exception se-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 483
    .end local v17    # "se":Ljava/lang/Exception;
    :cond_6
    :try_start_7
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Valid system storage found is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 495
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12

    .line 496
    if-eqz v15, :cond_8

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    .line 498
    :cond_8
    const-string v20, "UcmService"

    const-string/jumbo v21, "resolveInfo null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 487
    :cond_9
    :try_start_9
    const-string v20, "UcmService"

    const-string v21, "  Agent don\'t has UCS PLUGIN permission. Ignoring it..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 501
    :cond_a
    :try_start_a
    new-instance v20, Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v15, v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v20

    if-lez v20, :cond_10

    .line 504
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 505
    .local v19, "uniqueId":Ljava/lang/String;
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    move/from16 v18, v0

    .line 506
    .local v18, "serviceUid":I
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Agent uniqueId-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " and serviceUid-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServices:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 509
    .local v13, "persistUid":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_c

    .line 510
    const-string v20, "UcmService"

    const-string v21, "  Matched found in mPersistentServices map"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v10, 0x1

    .line 538
    .end local v13    # "persistUid":I
    .end local v18    # "serviceUid":I
    .end local v19    # "uniqueId":Ljava/lang/String;
    :cond_b
    :goto_3
    if-eqz v10, :cond_11

    .line 539
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Adding new agent -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 513
    .restart local v13    # "persistUid":I
    .restart local v18    # "serviceUid":I
    .restart local v19    # "uniqueId":Ljava/lang/String;
    :cond_c
    const-string v20, "UcmService"

    const-string v21, "  UID comparision failed for agent. Ignoring it.."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 516
    .end local v13    # "persistUid":I
    :cond_d
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 517
    const-string v20, "UcmService"

    const-string v21, "  Agent entry is not in PersistentServices but its system signed agent. Ading it.."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v10, 0x1

    goto :goto_3

    .line 520
    :cond_e
    if-eqz v2, :cond_f

    .line 521
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 522
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  agentPackageName -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is an active plugin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v10, 0x1

    goto :goto_3

    .line 525
    :cond_f
    if-nez v2, :cond_b

    .line 526
    const-string v20, "UcmService"

    const-string v21, "  Agent entry is not in PersistentServices and it\'s not system signed agent. Ignoring it.."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 531
    .end local v18    # "serviceUid":I
    .end local v19    # "uniqueId":Ljava/lang/String;
    :cond_10
    const-string v20, "UcmService"

    const-string v21, "  mPersistentServices size is 0. Trying to add new agent "

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 533
    const-string v20, "UcmService"

    const-string v21, "  Adding system signed agent"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 542
    :cond_11
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " Unbind agent -"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    goto/16 :goto_1

    .line 547
    :cond_12
    invoke-virtual {v12, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 554
    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v4    # "agentPackageName":Ljava/lang/String;
    .end local v10    # "isValidAgent":Z
    .end local v11    # "name":Landroid/content/ComponentName;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_13
    const/4 v2, 0x0

    .line 555
    const/4 v7, 0x0

    .line 558
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    :try_start_b
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_15

    .line 559
    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 560
    .restart local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 561
    const-string v20, "UcmService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "  Removing unwanted agent- "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_14
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->unbind()V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 567
    .end local v3    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mServicesLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 568
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->writePersistentServicesLocked()V

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->readPersistentServicesLocked()V

    .line 571
    monitor-exit v21

    goto/16 :goto_2

    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v20
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
.end method

.method public static resolveAllowedAgents(Landroid/content/pm/PackageManager;I)Ljava/util/List;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolveAllowedAgents for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    sget-object v5, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->CREDENTIAL_AGENT_INTENT_FILTER:Landroid/content/Intent;

    const/16 v6, 0x80

    invoke-virtual {p0, v5, v6, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 893
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 894
    .local v0, "allowedAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 895
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    .line 897
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    .line 899
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 900
    .local v2, "packageName":Ljava/lang/String;
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 904
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v0
.end method

.method private sendStateChangeBroadcast(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 2980
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ucs.ucsservice.stateblocked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2981
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2982
    .local v0, "csname":Ljava/lang/String;
    const-string v2, "UCS_STATE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2983
    const-string v2, "UCS_CSNAME"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2984
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast CSNAME "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2986
    return-void
.end method

.method private setODEConfigInFile(I)V
    .locals 9
    .param p1, "config"    # I

    .prologue
    .line 3463
    const-string v7, "UcmService"

    const-string/jumbo v8, "setODEConfigInFile"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    new-instance v6, Ljava/io/File;

    const-string v7, "/efs/sec_efs"

    const-string/jumbo v8, "odeConfig"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3465
    .local v6, "odeConfigFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    .line 3466
    .local v3, "existFile":Z
    const/4 v4, 0x0

    .line 3468
    .local v4, "fis":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3469
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .local v5, "fis":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v4, v5

    .line 3478
    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    :goto_0
    if-eqz v4, :cond_0

    .line 3480
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3486
    :cond_0
    :goto_1
    return-void

    .line 3470
    :catch_0
    move-exception v1

    .line 3471
    .local v1, "e1":Ljava/io/FileNotFoundException;
    :goto_2
    const-string v7, "UcmService"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3473
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 3474
    .local v2, "e2":Ljava/io/IOException;
    :goto_3
    const-string v7, "UcmService"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3481
    .end local v2    # "e2":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 3482
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "UcmService"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3483
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3473
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 3470
    .end local v4    # "fis":Ljava/io/FileOutputStream;
    .restart local v5    # "fis":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private verifyPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    .line 3503
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyPassword : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v4, v1, :cond_1

    .line 3505
    :cond_0
    const-string v1, "UcmService"

    const-string/jumbo v2, "uri is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    :goto_0
    return v0

    .line 3509
    :cond_1
    if-eqz p2, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v4, v1, :cond_3

    .line 3510
    :cond_2
    const-string v1, "UcmService"

    const-string/jumbo v2, "password is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3516
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writePersistentAppletsInfoLocked()V
    .locals 10

    .prologue
    .line 698
    const-string v7, "UcmService"

    const-string/jumbo v8, "writePersistentAppletsInfoLocked is called..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v3, 0x0

    .line 702
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 703
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 704
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v6, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 705
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 706
    const-string/jumbo v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 707
    const/4 v7, 0x0

    const-string v8, "applets"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfo:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 709
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 710
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    .line 711
    .local v0, "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Persistent  key-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v7, 0x0

    const-string v8, "applet"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    const/4 v7, 0x0

    const-string v8, "appletLocation"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    const/4 v7, 0x0

    const-string/jumbo v8, "pluginName"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    const/4 v7, 0x0

    const-string v8, "adminId"

    iget v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 716
    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    if-eqz v7, :cond_0

    .line 717
    const/4 v7, 0x0

    const-string v8, "aid"

    iget-object v9, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    invoke-direct {p0, v9}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->convertByteToString([B)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 719
    :cond_0
    const/4 v7, 0x0

    const-string v8, "applet"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 724
    .end local v0    # "appletInfo":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e1":Ljava/io/IOException;
    const-string v7, "UcmService"

    const-string v8, "Error writing accounts"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    if-eqz v3, :cond_1

    .line 727
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 730
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void

    .line 721
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    const-string v8, "applets"

    invoke-interface {v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 722
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 723
    iget-object v7, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentAppletInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private writePersistentServicesLocked()V
    .locals 8

    .prologue
    .line 803
    const/4 v2, 0x0

    .line 805
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 806
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 807
    .local v4, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 808
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 809
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 810
    const/4 v5, 0x0

    const-string/jumbo v6, "services"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 811
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 812
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v5, 0x0

    const-string/jumbo v6, "service"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 813
    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 814
    const/4 v5, 0x0

    const-string/jumbo v6, "uniqueId"

    iget-object v7, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 815
    const/4 v5, 0x0

    const-string/jumbo v6, "service"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 820
    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 821
    .local v1, "e1":Ljava/io/IOException;
    const-string v5, "UcmService"

    const-string v6, "Error writing accounts"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    if-eqz v2, :cond_0

    .line 823
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 826
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_0
    :goto_1
    return-void

    .line 817
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    const-string/jumbo v6, "services"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 818
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 819
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPersistentServicesFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "apdu"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 3208
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APDUCommand : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3211
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 3212
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3257
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3217
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-nez p2, :cond_2

    .line 3218
    const-string v5, "UcmService"

    const-string v6, "apdu is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3220
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3223
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    .line 3224
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 3225
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3230
    :goto_1
    if-nez v0, :cond_4

    .line 3231
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3233
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3227
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3236
    :cond_4
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3237
    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3238
    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3239
    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3240
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3243
    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3244
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    .line 3245
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3246
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3247
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3250
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3251
    if-nez v1, :cond_7

    .line 3252
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3253
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3254
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3255
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    move-object v2, v1

    .line 3257
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public authenticatePin(Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2975
    const-string v0, "UcmService"

    const-string/jumbo v1, "need to check authenticatePin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2976
    const/4 v0, 0x0

    return v0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "oldPin"    # Ljava/lang/String;
    .param p3, "newPin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xe

    const/16 v9, 0x10

    const/4 v8, 0x1

    .line 3104
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changePin : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3107
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 3108
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3160
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3113
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p2, :cond_2

    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_3

    .line 3114
    :cond_2
    const-string v5, "UcmService"

    const-string/jumbo v6, "oldPin is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3116
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3119
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    if-eqz p3, :cond_4

    const-string v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_5

    .line 3120
    :cond_4
    const-string v5, "UcmService"

    const-string/jumbo v6, "newPin is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3122
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3125
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    .line 3126
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_6

    .line 3127
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3132
    :goto_1
    if-nez v0, :cond_7

    .line 3133
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3135
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3129
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3138
    :cond_7
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 3139
    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3140
    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3141
    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3142
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3145
    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3146
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_9

    .line 3147
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3148
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3149
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3152
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_9
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3153
    if-nez v1, :cond_a

    .line 3154
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3156
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3157
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_a
    move-object v2, v1

    .line 3160
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public configureKeyguardSettings(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3309
    if-nez p1, :cond_0

    .line 3310
    const-string v3, "UcmService"

    const-string/jumbo v4, "disable keyguard in UCS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    const-string/jumbo v3, "persist.keyguard.ucs"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    const-string/jumbo v3, "persist.keyguard.ucs.csname"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    :goto_0
    return v2

    .line 3316
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 3317
    const-string v2, "UcmService"

    const-string/jumbo v4, "uri is empty"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3318
    goto :goto_0

    .line 3321
    :cond_1
    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3322
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3324
    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v4, v4, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v4, :cond_2

    .line 3325
    const-string/jumbo v3, "persist.keyguard.ucs"

    const-string/jumbo v4, "yes"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    const-string/jumbo v3, "persist.keyguard.ucs.csname"

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_3
    move v2, v3

    .line 3331
    goto :goto_0
.end method

.method public configureODESettings(Ljava/lang/String;)I
    .locals 27
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 3336
    const-string v3, "UcmService"

    const-string v25, "configureODESettings"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    const-string/jumbo v3, "ro.crypto.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3338
    .local v16, "crypto_state":Ljava/lang/String;
    const-string/jumbo v3, "ro.vold.forceencryption"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3339
    .local v18, "force_crypto_state":Ljava/lang/String;
    const-string/jumbo v3, "ro.boot.ucs_mode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3340
    .local v24, "ucs_flag":Ljava/lang/String;
    const-string/jumbo v3, "encrypted"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "1"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3341
    const-string v3, "UcmService"

    const-string/jumbo v25, "device is encrypted state in non-default encryption device."

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    const v3, 0xc000200

    .line 3439
    :goto_0
    return v3

    .line 3344
    :cond_0
    const-string v3, "2"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3345
    const-string v3, "UcmService"

    const-string/jumbo v25, "device is encrypted with UCS so cannot change configuration"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    const v3, 0xc000200

    goto :goto_0

    .line 3348
    :cond_1
    if-nez p1, :cond_3

    .line 3349
    const-string v3, "UcmService"

    const-string/jumbo v25, "disable configureODESettings in UCS"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    const-string/jumbo v3, "persist.security.ucs"

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    const-string/jumbo v3, "persist.security.ucs.csname"

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3352
    new-instance v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>(I[BIIIIIIIII[B)V

    .line 3353
    .local v2, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v22

    .line 3354
    .local v22, "save":Z
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_2

    .line 3355
    const/4 v3, 0x0

    goto :goto_0

    .line 3357
    :cond_2
    const/16 v3, 0x10d

    goto :goto_0

    .line 3360
    .end local v2    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v22    # "save":Z
    :cond_3
    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    move/from16 v0, v25

    if-ne v3, v0, :cond_4

    .line 3361
    const-string v3, "UcmService"

    const-string/jumbo v25, "uri is empty"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    const/16 v3, 0x10

    goto :goto_0

    .line 3365
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 3366
    :cond_5
    const/16 v3, 0xe

    goto :goto_0

    .line 3369
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3370
    .local v20, "pluginName":Ljava/lang/String;
    if-eqz v20, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_8

    .line 3371
    :cond_7
    const/16 v3, 0xe

    goto/16 :goto_0

    .line 3374
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3375
    .local v15, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v15, :cond_9

    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v3, :cond_9

    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3378
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3379
    const-string v3, "UcmService"

    const-string v25, "Find UcmAgentWrapper"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    if-nez v3, :cond_a

    .line 3382
    const-string v3, "UcmService"

    const-string v25, "This agent dose not support ODE"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    const/4 v3, 0x3

    goto/16 :goto_0

    .line 3386
    :cond_a
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v4, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B

    .line 3387
    .local v4, "AID":[B
    if-eqz v4, :cond_b

    array-length v3, v4

    if-nez v3, :cond_c

    .line 3388
    :cond_b
    const-string v3, "UcmService"

    const-string v25, "AID is empty"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 3390
    :cond_c
    array-length v3, v4

    const/16 v25, 0x5

    move/from16 v0, v25

    if-lt v3, v0, :cond_d

    array-length v3, v4

    const/16 v25, 0x10

    move/from16 v0, v25

    if-le v3, v0, :cond_e

    .line 3391
    :cond_d
    const-string v3, "UcmService"

    const-string v25, "AID range is not proper"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 3395
    :cond_e
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 3396
    .local v23, "storageType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAppletInfo(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;

    move-result-object v21

    .line 3397
    .local v21, "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    if-eqz v21, :cond_f

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 3398
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 3400
    :cond_f
    invoke-static/range {v23 .. v23}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getStorageTypeIndex(Ljava/lang/String;)I

    move-result v5

    .line 3401
    .local v5, "storageTypeIndex":I
    if-gez v5, :cond_10

    .line 3402
    const-string v3, "UcmService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "UCM does not support this storage type : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 3406
    :cond_10
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3407
    .local v17, "enabledSCP":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->getSCPTypeIndex(Ljava/lang/String;)I

    move-result v6

    .line 3408
    .local v6, "scpIndex":I
    if-gez v6, :cond_11

    .line 3409
    const-string v3, "UcmService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "UCM does not support this SCP type : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 3413
    :cond_11
    const-string/jumbo v3, "persist.security.ucs"

    const-string v25, "1"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    const-string/jumbo v3, "persist.security.ucs.csname"

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .line 3418
    .local v7, "enabledWrap":I
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 3419
    .local v8, "pinMinLength":I
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 3420
    .local v9, "pinMaxLength":I
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v10, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 3421
    .local v10, "authMode":I
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v11, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 3422
    .local v11, "authMaxCnt":I
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v12, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 3423
    .local v12, "pukMinLength":I
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v13, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 3424
    .local v13, "pukMaxLength":I
    iget-object v3, v15, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 3425
    .local v14, "csName":[B
    if-eqz v14, :cond_12

    array-length v3, v14

    if-nez v3, :cond_13

    .line 3426
    :cond_12
    const-string v3, "UcmService"

    const-string/jumbo v25, "csName is empty"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 3430
    :cond_13
    new-instance v2, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    const/4 v3, 0x1

    invoke-direct/range {v2 .. v14}, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;-><init>(I[BIIIIIIIII[B)V

    .line 3431
    .restart local v2    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/EFSProperties;->saveODEConfig(Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;)Z

    move-result v22

    .line 3432
    .restart local v22    # "save":Z
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_14

    .line 3433
    const-string/jumbo v3, "security.knox_ucs_mode"

    const-string/jumbo v25, "true"

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3436
    :cond_14
    const/16 v3, 0x10d

    goto/16 :goto_0

    .line 3439
    .end local v2    # "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    .end local v4    # "AID":[B
    .end local v5    # "storageTypeIndex":I
    .end local v6    # "scpIndex":I
    .end local v7    # "enabledWrap":I
    .end local v8    # "pinMinLength":I
    .end local v9    # "pinMaxLength":I
    .end local v10    # "authMode":I
    .end local v11    # "authMaxCnt":I
    .end local v12    # "pukMinLength":I
    .end local v13    # "pukMaxLength":I
    .end local v14    # "csName":[B
    .end local v15    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v17    # "enabledSCP":Ljava/lang/String;
    .end local v21    # "prop":Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
    .end local v22    # "save":Z
    .end local v23    # "storageType":Ljava/lang/String;
    :cond_15
    const/16 v3, 0xe

    goto/16 :goto_0
.end method

.method public containsAlias(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 18
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3783
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 3784
    .local v13, "callerUid":I
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3786
    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsAlias "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3788
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3789
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3790
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3826
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3795
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3796
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .line 3797
    .local v5, "uriuid":I
    const/4 v2, -0x1

    if-ne v5, v2, :cond_1

    move v5, v13

    .line 3798
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3799
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3800
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3801
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! containsAlias is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3802
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3803
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3804
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3806
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3809
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3810
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 3811
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3813
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3814
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3816
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p2

    invoke-interface {v12, v2, v0, v13}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v10

    .line 3817
    if-nez v10, :cond_4

    .line 3818
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3820
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3821
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3822
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3824
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 3825
    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containsAlias Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3826
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public createSecureChannel(ILandroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 8
    .param p1, "protocolType"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1209
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "createSecureChannel protocolType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1211
    .local v1, "uid":I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v6, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v5, v6, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1212
    const-string v5, "UcmService"

    const-string v6, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :goto_0
    return-object v4

    .line 1215
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidSCPProtocol(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1216
    const-string v5, "UcmService"

    const-string v6, "Invalid protocolType..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1219
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1221
    .local v2, "id":J
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v5, v1, p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->createSecureChannel(II)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1225
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in createSecureChannel -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1619
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1622
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 1623
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 1624
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1625
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 1691
    :goto_0
    return-object v2

    .line 1629
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1630
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1631
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 1632
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    move/from16 v5, v18

    .line 1633
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 1634
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 1635
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/16 v17, 0x1

    .line 1637
    :cond_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1640
    .local v12, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1641
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1642
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! decrypt is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1644
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto :goto_0

    .line 1646
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1650
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .line 1651
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 1652
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 1653
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypt new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    .end local v19    # "userId":I
    :cond_4
    :goto_1
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1660
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1661
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1662
    const-string/jumbo v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1664
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 1670
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 1671
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1673
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1655
    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v19    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decrypt. Keeping same userid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1676
    .end local v19    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_6
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1677
    if-nez v10, :cond_7

    .line 1678
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1680
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1681
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1683
    :cond_7
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1684
    .local v16, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1685
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "decrypt Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    if-nez v16, :cond_8

    .line 1687
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for decrypt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1689
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1691
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected deletAndRefreshAgents(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 3
    .param p1, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 419
    const-string v0, "UcmService"

    const-string/jumbo v1, "deletAndRefreshAgents()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    if-eqz p1, :cond_0

    .line 421
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deletAndRefreshAgents() remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->refreshAgents()V

    .line 425
    return-void
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2210
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2211
    .local v0, "pluginResponse":Landroid/os/Bundle;
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UCMERRORTESTING: @CredentialManagerService delete Response from plugin with error code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorresponse"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    return-object v0
.end method

.method public deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2217
    const-string/jumbo v4, "deleteCertificate"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2218
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, p2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->deleteInternal(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v0

    .line 2219
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 2220
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2221
    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "booleanresponse"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2222
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v1, v0

    .line 2229
    .end local v0    # "agentResponse":Landroid/os/Bundle;
    .local v1, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2225
    .end local v1    # "agentResponse":Ljava/lang/Object;
    .restart local v0    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v4, "booleanresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2226
    .local v3, "response":Z
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2227
    .local v2, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificate Response:  error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UCMERRORTESTING: @CredentialManagerService deleteCertificate Response from plugin with error code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 2229
    .restart local v1    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public generateDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1262
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1267
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "generateDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1274
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1275
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1277
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1308
    :goto_0
    return-object v5

    .line 1268
    :catch_0
    move-exception v3

    .line 1269
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1270
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1271
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1280
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1281
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1282
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1287
    :goto_1
    if-nez v0, :cond_3

    .line 1288
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1290
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1284
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1292
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1294
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1295
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1297
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1299
    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1300
    if-nez v1, :cond_5

    .line 1301
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1303
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1304
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    .line 1306
    :cond_5
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1307
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateDek response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2317
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPair "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2320
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2321
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2322
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2323
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .line 2329
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2326
    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 2327
    .local v9, "response":[B
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2328
    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPair Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2329
    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "keySize"    # I
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2298
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPairInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const-string/jumbo v0, "generateKeyPairInternal"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2301
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateKeyPairMain(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2302
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2303
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2304
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2305
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .line 2311
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2308
    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "bytearrayresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 2309
    .local v9, "response":[B
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2310
    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "generateKeyPairInternal Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2311
    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public generateKeyguardPassword(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x1

    const/16 v10, 0xd

    .line 1474
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateKeyguardPassword "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1477
    .local v1, "agentResponse":Landroid/os/Bundle;
    const/4 v5, 0x0

    .line 1478
    .local v5, "password":[B
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v11, v7, :cond_1

    .line 1479
    :cond_0
    const-string v7, "UcmService"

    const-string/jumbo v8, "uri is empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const-string/jumbo v7, "errorresponse"

    const/16 v8, 0x10

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1528
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 1484
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .line 1485
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v11, v7, :cond_2

    .line 1486
    const-string v7, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1491
    :goto_1
    if-nez v0, :cond_3

    .line 1492
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no agent found for Source = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1494
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1488
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1496
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 1498
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_4

    .line 1499
    const-string v7, "UcmService"

    const-string/jumbo v8, "no agentService found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1501
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1504
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-interface {v3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateKeyguardPassword()Landroid/os/Bundle;

    move-result-object v1

    .line 1505
    if-nez v1, :cond_5

    .line 1506
    const-string v7, "UcmService"

    const-string v8, "ERROR: Null Response received from agentService"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1508
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 1509
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1511
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const-string v7, "bytearrayresponse"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1512
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1513
    .local v4, "errorcode":I
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "generateKeyguardPassword Response from plugin:  error code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    if-nez v5, :cond_6

    .line 1516
    const-string v7, "UcmService"

    const-string/jumbo v8, "password is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    move-object v2, v1

    .line 1528
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 1518
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    array-length v7, v5

    if-nez v7, :cond_7

    .line 1519
    const-string v7, "UcmService"

    const-string/jumbo v8, "password length is 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const-string/jumbo v7, "errorresponse"

    invoke-virtual {v1, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 1522
    :cond_7
    const-string v7, "UcmService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "password length is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 1525
    .local v6, "strAscii":Ljava/lang/String;
    const-string/jumbo v7, "stringresponse"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 1526
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "numBytes"    # I
    .param p3, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2608
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2610
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2611
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2612
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2614
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2674
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 2619
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2620
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2621
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v19

    .line 2622
    .local v19, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_1

    move/from16 v5, v19

    .line 2623
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2624
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v18

    .line 2625
    .local v18, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    const/16 v18, 0x1

    .line 2628
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2629
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2630
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! generateSecureRandom is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2632
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2633
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2635
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2638
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2639
    .local v13, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2640
    const-string/jumbo v2, "user_id"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2641
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2642
    const-string/jumbo v2, "resource"

    move/from16 v0, v18

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2644
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 2650
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_4

    .line 2651
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2653
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2654
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2656
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1, v13}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2657
    if-nez v10, :cond_5

    .line 2658
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2660
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2661
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2663
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_5
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v15

    .line 2664
    .local v15, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 2665
    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generateSecureRandom Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    if-nez v15, :cond_6

    .line 2668
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for generateSecureRandom"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2670
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2671
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2672
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move-object v11, v10

    .line 2674
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public generateWrappedDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1313
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1318
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "generateWrappedDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1326
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1328
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1359
    :goto_0
    return-object v5

    .line 1319
    :catch_0
    move-exception v3

    .line 1320
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1321
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1322
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1331
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1332
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1333
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1338
    :goto_1
    if-nez v0, :cond_3

    .line 1339
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1341
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1335
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1343
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1345
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1346
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1348
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1350
    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1351
    if-nez v1, :cond_5

    .line 1352
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1354
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1355
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    .line 1357
    :cond_5
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1358
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "generateWrappedDek response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .locals 6
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3835
    if-nez p1, :cond_0

    move-object v0, v2

    .line 3845
    :goto_0
    return-object v0

    .line 3838
    :cond_0
    const-string v3, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "finding active agent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3839
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 3840
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v3, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3841
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "found active agent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    :cond_2
    move-object v0, v2

    .line 3845
    goto :goto_0
.end method

.method public getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2926
    const-string/jumbo v2, "getAdminConfigureBundleFromCs"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2927
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2929
    .local v10, "agentResponse":Landroid/os/Bundle;
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAdminConfigureBundleFromCs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2931
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2932
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2934
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2969
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 2939
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2940
    .local v14, "id":J
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2941
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v5

    .line 2942
    .local v5, "uriuid":I
    move/from16 v4, p2

    .line 2943
    .local v4, "user_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 2944
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! getAdminConfigureBundleFromCs is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2946
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2947
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2949
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2952
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 2953
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_2

    .line 2954
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2956
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2957
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2959
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    move/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object v10

    .line 2960
    if-nez v10, :cond_3

    .line 2961
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2963
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bundleresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2964
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2965
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2967
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 2968
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPackageSetting Response from plugin: error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 2969
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 1989
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1990
    .local v7, "agentInfoBundle":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v8

    .line 1993
    .local v8, "credAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1994
    .local v6, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1995
    .local v3, "uid":I
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 1996
    .local v12, "uriuid":I
    if-eq v12, v1, :cond_0

    move v3, v12

    .line 1997
    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 1998
    .local v2, "user_id":I
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v9

    .line 1999
    .local v9, "uriresource":I
    if-ne v9, v1, :cond_1

    const/4 v9, 0x1

    .line 2002
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2003
    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 2004
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! getAgentInfo is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    :goto_0
    return-object v5

    .line 2007
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2010
    invoke-direct {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getAgentInfoBundle(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Bundle;

    move-result-object v7

    move-object v5, v7

    .line 2011
    goto :goto_0
.end method

.method public getAgentService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 13
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3597
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3598
    .local v3, "uid":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBinder "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", uid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v7

    .line 3600
    .local v7, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v7, :cond_0

    .line 3620
    :goto_0
    return-object v5

    .line 3605
    :cond_0
    new-instance v6, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    invoke-direct {v6, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3606
    .local v6, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v12

    .line 3607
    .local v12, "uriuid":I
    const/4 v0, -0x1

    if-eq v12, v0, :cond_1

    move v3, v12

    .line 3608
    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 3610
    .local v2, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3611
    .local v10, "id":J
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 3612
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING!!!! getAgentService is NOT allowed for URI = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3615
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3618
    invoke-virtual {v7}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .line 3619
    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "binderService":Landroid/os/IBinder;
    :goto_1
    move-object v5, v9

    .line 3620
    goto :goto_0

    .end local v9    # "binderService":Landroid/os/IBinder;
    :cond_3
    move-object v9, v5

    .line 3619
    goto :goto_1
.end method

.method public getCertificateChain(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1539
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1543
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 1544
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 1545
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1547
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 1613
    :goto_0
    return-object v2

    .line 1551
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1552
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1553
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 1554
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    move/from16 v5, v18

    .line 1555
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 1556
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 1557
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/16 v17, 0x1

    .line 1559
    :cond_2
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1562
    .local v12, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1563
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1564
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! getCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1566
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto :goto_0

    .line 1568
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1572
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .line 1573
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 1574
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 1575
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    .end local v19    # "userId":I
    :cond_4
    :goto_1
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1582
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1583
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1584
    const-string/jumbo v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1586
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 1592
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 1593
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1595
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1577
    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v19    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    const-string/jumbo v3, "getCertificateChain user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1597
    .end local v19    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_6
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1598
    if-nez v10, :cond_7

    .line 1599
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1601
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1602
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1604
    :cond_7
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1605
    .local v16, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 1606
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    if-nez v16, :cond_8

    .line 1609
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for getCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1611
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 1613
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getConfigureBundleFromCs(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2918
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2919
    .local v0, "agentResponse":Landroid/os/Bundle;
    const-string v1, "bundleresponse"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2920
    const-string/jumbo v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2921
    return-object v0
.end method

.method public getDek(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1364
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1369
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "getDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1377
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1379
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1413
    :goto_0
    return-object v5

    .line 1370
    :catch_0
    move-exception v3

    .line 1371
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1372
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1373
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1381
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const/4 v0, 0x0

    .line 1385
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1386
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1391
    :goto_1
    if-nez v0, :cond_3

    .line 1392
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1394
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1388
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1397
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1398
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1399
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1401
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1402
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1405
    :cond_4
    invoke-interface {v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object v1

    .line 1406
    if-nez v1, :cond_5

    .line 1407
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1409
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0

    .line 1411
    :cond_5
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1412
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDek Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 3262
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3265
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 3266
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3305
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3271
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v0, 0x0

    .line 3272
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 3273
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3278
    :goto_1
    if-nez v0, :cond_3

    .line 3279
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no agent found for Source = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3281
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3275
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3284
    :cond_3
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3285
    new-instance v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;-><init>()V

    .line 3286
    .local v4, "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    .line 3287
    iget-object v5, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v5, v5, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    .line 3288
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getUCMMDMService()Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v5

    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;)V

    .line 3291
    .end local v4    # "cs":Lcom/sec/enterprise/knox/ucm/configurator/CredentialStorage;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3292
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_5

    .line 3293
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3295
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3298
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_5
    invoke-interface {v3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 3299
    if-nez v1, :cond_6

    .line 3300
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3302
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3303
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move-object v2, v1

    .line 3305
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getODESettingsConfiguration()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 3444
    const-string v2, "UcmService"

    const-string/jumbo v3, "getODESettingsConfiguration"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    invoke-static {}, Lcom/samsung/ucm/ucmservice/EFSProperties;->loadODEConfig()Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;

    move-result-object v0

    .line 3448
    .local v0, "odeProp":Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
    if-nez v0, :cond_0

    .line 3449
    const/4 v1, 0x0

    .line 3459
    :goto_0
    return-object v1

    .line 3452
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3454
    .local v1, "responseBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "supportsode"

    iget v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3455
    const-string v2, "aid"

    iget-object v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3456
    const-string/jumbo v2, "storagetype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    const-string/jumbo v2, "scptype"

    sget-object v3, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    iget v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPackageSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 20
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2743
    const-string/jumbo v4, "getPackageSetting"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2745
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2746
    .local v12, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .line 2747
    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_0

    .line 2748
    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2749
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2798
    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .line 2754
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2755
    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2756
    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v17

    .line 2757
    .local v17, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_1

    move/from16 v7, v17

    .line 2758
    :cond_1
    move/from16 v6, p5

    .line 2761
    .local v6, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2762
    .local v18, "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 2763
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! getPackageSetting is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2765
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2766
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2768
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2771
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 2772
    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v4, "callerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2773
    const-string/jumbo v4, "user_id"

    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2774
    const-string/jumbo v4, "ownerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2776
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageSetting KEY_RESOURCE_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "resource"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageSetting KEY_USER_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "user_id"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getPackageSetting KEY_CALLER_UID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "callerUid"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .line 2782
    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_3

    .line 2783
    const-string v4, "UcmService"

    const-string/jumbo v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2785
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2786
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2788
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v14, v0, v1, v2, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getPackageSetting(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    .line 2789
    if-nez v12, :cond_4

    .line 2790
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2792
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string v4, "bundleresponse"

    const/4 v5, 0x0

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2793
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2794
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2796
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 2797
    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .line 2798
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public getStatus(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 16
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3521
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getStatus : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3523
    .local v2, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v13, 0x1

    const-string v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v13, v14, :cond_1

    .line 3524
    :cond_0
    const-string v13, "UcmService"

    const-string/jumbo v14, "csName is empty"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3525
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0x10

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3591
    .end local v2    # "agentResponse":Landroid/os/Bundle;
    .local v3, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 3529
    .end local v3    # "agentResponse":Ljava/lang/Object;
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    const/4 v12, -0x1

    .line 3530
    .local v12, "state":I
    const/4 v11, -0x1

    .line 3531
    .local v11, "remainCnt":I
    const/4 v6, -0x1

    .line 3532
    .local v6, "maxCnt":I
    const/4 v8, -0x1

    .line 3533
    .local v8, "pinMinLength":I
    const/4 v7, -0x1

    .line 3534
    .local v7, "pinMaxLength":I
    const/4 v5, 0x0

    .line 3535
    .local v5, "authMode":I
    const/4 v10, -0x1

    .line 3536
    .local v10, "pukMinLength":I
    const/4 v9, -0x1

    .line 3538
    .local v9, "pukMaxLength":I
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 3539
    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v13, 0x1

    const-string v14, "boot_test"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-ne v13, v14, :cond_2

    .line 3540
    const-string v13, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 3545
    :goto_1
    if-nez v1, :cond_3

    .line 3546
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no agent found for Source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3548
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3542
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    goto :goto_1

    .line 3550
    :cond_3
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-nez v13, :cond_4

    .line 3551
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "no agent info found for Source = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3553
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3555
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v4

    .line 3556
    .local v4, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v4, :cond_5

    .line 3557
    const-string v13, "UcmService"

    const-string/jumbo v14, "no agentService found"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3559
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0xe

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3560
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3563
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_5
    invoke-interface {v4}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object v2

    .line 3564
    if-nez v2, :cond_6

    .line 3565
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3566
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string v13, "UcmService"

    const-string v14, "ERROR: Null Response received from agentService"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    const-string/jumbo v13, "errorresponse"

    const/16 v14, 0xd

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3568
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3571
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_6
    const-string v13, "UcmService"

    const-string/jumbo v14, "getStatus success"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    const-string/jumbo v13, "state"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 3573
    const-string/jumbo v13, "remainCnt"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 3574
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v6, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 3575
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v8, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 3576
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v7, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 3577
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v5, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 3578
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v10, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 3579
    iget-object v13, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget v9, v13, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 3581
    const-string v13, "UcmService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "values get from agent : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    const-string/jumbo v13, "maxAuthCnt"

    invoke-virtual {v2, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3585
    const-string/jumbo v13, "maxPinLength"

    invoke-virtual {v2, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3586
    const-string/jumbo v13, "minPinLength"

    invoke-virtual {v2, v13, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3587
    const-string v13, "authMode"

    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3588
    const-string/jumbo v13, "minPukLength"

    invoke-virtual {v2, v13, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3589
    const-string/jumbo v13, "maxPukLength"

    invoke-virtual {v2, v13, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 3591
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public grantKeyChainAccess(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2592
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "grantKeyChainAccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkSystemCaller()V

    .line 2594
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2595
    const-string v0, "UcmService"

    const-string v1, "Not Keychain URI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    const/4 v0, 0x0

    .line 2598
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2115
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2116
    .local v6, "pluginResponse":Landroid/os/Bundle;
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService importKeyPair Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    return-object v6
.end method

.method public installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "certChain"    # [B
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2122
    const-string/jumbo v0, "installCertificate"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2124
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->importKeyPairInternal(Ljava/lang/String;[B[BLandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 2125
    .local v6, "agentResponse":Landroid/os/Bundle;
    if-nez v6, :cond_0

    .line 2126
    new-instance v6, Landroid/os/Bundle;

    .end local v6    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2127
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2128
    const-string/jumbo v0, "errorresponse"

    const/16 v1, 0xd

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v7, v6

    .line 2135
    .end local v6    # "agentResponse":Landroid/os/Bundle;
    .local v7, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 2131
    .end local v7    # "agentResponse":Ljava/lang/Object;
    .restart local v6    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const-string v0, "booleanresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 2132
    .local v9, "response":Z
    const-string/jumbo v0, "errorresponse"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 2133
    .local v8, "errorcode":I
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "installCertificate Response:  error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    const-string v0, "UcmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UCMERRORTESTING: @CredentialManagerService installCertificate Response from plugin with error code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 2135
    .restart local v7    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public isCredentialStorageLock(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1469
    const-string v0, "UcmService"

    const-string v1, "UCS ODE isCredentialStorageLock in UCS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    return v0
.end method

.method public isKeyChainGranted(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2603
    const/4 v0, 0x1

    return v0
.end method

.method public isUserCertificatesExistInUCS()Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1088
    const-string v17, "UcmService"

    const-string/jumbo v18, "isUserCertificatesExistInUCS called"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const-string/jumbo v17, "isUserCertificatesExistInUCS"

    invoke-static/range {v17 .. v17}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1091
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1092
    .local v7, "agentResponse":Landroid/os/Bundle;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1093
    .local v9, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v16

    .line 1095
    .local v16, "user_id":I
    const-string v17, "callerUid"

    const/16 v18, 0x3e8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1096
    const-string/jumbo v17, "user_id"

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1097
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1098
    .local v15, "newParamBundle":Landroid/os/Bundle;
    const-string/jumbo v17, "removable_user_certificates_list"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1099
    const-string/jumbo v17, "extraArgs"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1102
    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .line 1103
    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v17, "UcmService"

    const-string v18, "Iteration has started...."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1106
    :cond_1
    const-string v17, "UcmService"

    const-string v18, "agentService == null... continue"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1111
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1112
    .local v12, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v14

    .line 1113
    .local v14, "mdmAliases":[Ljava/lang/String;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    .local v4, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v17, "resource"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1118
    invoke-interface {v8, v9}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1119
    const-string/jumbo v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1122
    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1125
    :cond_3
    if-eqz v14, :cond_5

    .line 1126
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_5

    .line 1127
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1128
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1126
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1134
    .end local v10    # "i":I
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    .line 1135
    const/16 v17, 0x1

    .line 1159
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "id1":J
    .end local v14    # "mdmAliases":[Ljava/lang/String;
    :goto_2
    return v17

    .line 1139
    .restart local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .restart local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .restart local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "id1":J
    .restart local v14    # "mdmAliases":[Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    .local v5, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v17, "resource"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1141
    invoke-interface {v8, v9}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1142
    const-string/jumbo v17, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1143
    .local v6, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 1144
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1147
    :cond_7
    if-eqz v14, :cond_9

    .line 1148
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 1149
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1150
    aget-object v17, v14, v10

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1148
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1155
    .end local v10    # "i":I
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 1156
    const/16 v17, 0x1

    goto :goto_2

    .line 1159
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "id1":J
    .end local v14    # "mdmAliases":[Ljava/lang/String;
    :cond_a
    const/16 v17, 0x0

    goto :goto_2
.end method

.method public listAllProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2491
    const-string/jumbo v0, "listAllProviders"

    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2492
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public listPasswordSupportedProviders()[Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2566
    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v2

    .line 2567
    .local v2, "user_id":I
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2587
    :goto_0
    return-object v5

    .line 2570
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2571
    .local v6, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 2572
    .local v1, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2575
    .local v8, "id":J
    const/4 v10, 0x1

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v0

    if-ne v10, v0, :cond_3

    .line 2576
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2577
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-boolean v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    if-eqz v0, :cond_2

    .line 2578
    iget-object v0, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "password support provider : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :cond_2
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2583
    :cond_3
    const-string v0, "UcmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WARNING!!!! access NOT allowed for "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v10, v1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2587
    .end local v1    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v8    # "id":J
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    goto/16 :goto_0
.end method

.method public listProviders()[Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2487
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->listExposedProvidersInternal(Z)[Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 940
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "notifyChangeToPlugin event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const-string/jumbo v8, "notifyChangeToPlugin"

    invoke-static {v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 942
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 944
    .local v2, "agentResponse":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 945
    .local v4, "error":Z
    if-nez p1, :cond_5

    .line 946
    iget-object v8, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 947
    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 948
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v3, :cond_2

    .line 949
    const/4 v7, 0x0

    .line 950
    .local v7, "status":I
    invoke-direct {p0, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkIfNotify(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    .line 951
    .local v6, "notify":Z
    if-eqz v6, :cond_1

    .line 952
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v7

    .line 953
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " notify status - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :goto_1
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService status-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v8, 0x1

    if-eq v4, v8, :cond_0

    .line 960
    if-eqz v7, :cond_0

    .line 961
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0x12

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 962
    const/4 v4, 0x1

    goto :goto_0

    .line 955
    :cond_1
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agentService "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v10, v10, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not notified"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 965
    .end local v6    # "notify":Z
    .end local v7    # "status":I
    :cond_2
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 966
    const-string v8, "UcmService"

    const-string v9, "agentService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 970
    .end local v0    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    :cond_3
    if-nez v4, :cond_4

    .line 971
    const-string/jumbo v8, "errorresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 973
    :cond_4
    const-string v8, "booleanresponse"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 998
    .end local v5    # "i$":Ljava/util/Iterator;
    :goto_2
    return-object v2

    .line 976
    :cond_5
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v1

    .line 977
    .local v1, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v1, :cond_6

    .line 978
    const-string v8, "UcmService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "no agent found for Source = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v8, "booleanresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 980
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 983
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 984
    .restart local v3    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v3, :cond_8

    .line 985
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result v7

    .line 986
    .restart local v7    # "status":I
    if-nez v7, :cond_7

    .line 987
    const-string v8, "booleanresponse"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 988
    const-string/jumbo v8, "errorresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 991
    :cond_7
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0x12

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 997
    .end local v7    # "status":I
    :goto_3
    const-string v8, "booleanresponse"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 994
    :cond_8
    const-string/jumbo v8, "errorresponse"

    const/16 v9, 0xe

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 995
    const-string v8, "UcmService"

    const-string v9, "agentService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 1164
    const-string/jumbo v2, "notifyLicenseStatus"

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1165
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyLicenseStatus packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",status-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errorCode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1167
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1168
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    const-string/jumbo v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string/jumbo v2, "errorCode"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1171
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1172
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1173
    const/4 v2, 0x1

    return v2
.end method

.method public processCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "command"    # [B
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3732
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCommand "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3733
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3734
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3735
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3736
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3737
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3775
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3742
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3743
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3744
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 3745
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 3746
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3748
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3749
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3750
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! processCommand is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3752
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3753
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3755
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3758
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3759
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 3760
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3762
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3763
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3765
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v0, v1, v5}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v10

    .line 3766
    if-nez v10, :cond_4

    .line 3767
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3769
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3770
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3771
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3773
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3774
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processCommand Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3775
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public processMessage(I[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    .locals 8
    .param p1, "type"    # I
    .param p2, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1232
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processMessage type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1234
    .local v1, "uid":I
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPm:Landroid/content/pm/IPackageManager;

    const-string v6, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-interface {v5, v6, v1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1235
    const-string v5, "UcmService"

    const-string v6, "  Agent don\'t UCS PLUGIN permission. Returning..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :goto_0
    return-object v4

    .line 1239
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isValidMsgType(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1240
    const-string v5, "UcmService"

    const-string v6, "Invalid message Type..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_1
    if-nez p2, :cond_2

    .line 1245
    const-string v5, "UcmService"

    const-string/jumbo v6, "message byte is null.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1248
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1250
    .local v2, "id":J
    :try_start_0
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mTADriver:Lcom/samsung/ucm/ucmservice/scp/TADriver;

    invoke-virtual {v5, v1, p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->processMsg(II[B)Lcom/sec/enterprise/knox/ucm/core/ApduMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1254
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in processMessage -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1254
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public declared-synchronized publishService()V
    .locals 2

    .prologue
    .line 3865
    monitor-enter p0

    :try_start_0
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3866
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3867
    const-string v0, "UcmService"

    const-string/jumbo v1, "publishedService com.samsung.ucs.ucsservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3869
    :cond_0
    monitor-exit p0

    return-void

    .line 3865
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected refreshAgents()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    return-void
.end method

.method public resetNonMdmCertificates()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1008
    const-string v18, "UcmService"

    const-string/jumbo v19, "resetNonMdmCertificates called"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string/jumbo v18, "resetNonMdmCertificates"

    invoke-static/range {v18 .. v18}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1011
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1012
    .local v7, "agentResponse":Landroid/os/Bundle;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1013
    .local v10, "argBundle":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v17

    .line 1015
    .local v17, "user_id":I
    const-string v18, "callerUid"

    const/16 v19, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1016
    const-string/jumbo v18, "user_id"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1019
    .local v2, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v8

    .line 1020
    .local v8, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v18, "UcmService"

    const-string v19, "Iteration has started...."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1023
    :cond_1
    const-string v18, "UcmService"

    const-string v19, "agentService == null... continue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1027
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v4, "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v5, "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v18, "resource"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1032
    invoke-interface {v8, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1033
    const-string/jumbo v18, "stringarrayresponse"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "agentAliasesKeyChain":[Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1035
    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1039
    :cond_3
    const-string/jumbo v18, "resource"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1040
    invoke-interface {v8, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 1041
    const-string/jumbo v18, "stringarrayresponse"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1042
    .local v6, "agentAliasesWiFi":[Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 1043
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1046
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1047
    const-string v18, "UcmService"

    const-string v19, "agentAliasesListKeychain.isEmpty() && agentAliasesListWiFi.isEmpty() .... continue"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1052
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1053
    .local v14, "id1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUserId(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v16

    .line 1054
    .local v16, "mdmAliases":[Ljava/lang/String;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1057
    if-eqz v16, :cond_8

    .line 1058
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    .line 1059
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1060
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1058
    :cond_6
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1061
    :cond_7
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1062
    aget-object v18, v16, v11

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1068
    .end local v11    # "i":I
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1069
    .local v9, "alias":Ljava/lang/String;
    const-string v18, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "request to delete KEYCHAIN for alias: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const-string/jumbo v18, "resource"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1071
    invoke-interface {v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_3

    .line 1075
    .end local v9    # "alias":Ljava/lang/String;
    :cond_9
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1076
    .restart local v9    # "alias":Ljava/lang/String;
    const-string v18, "UcmService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "request to delete WIFI for alias: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const-string/jumbo v18, "resource"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    invoke-interface {v8, v9, v10}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_4

    .line 1081
    .end local v2    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v3    # "agentAliasesKeyChain":[Ljava/lang/String;
    .end local v4    # "agentAliasesListKeychain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "agentAliasesListWiFi":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "agentAliasesWiFi":[Ljava/lang/String;
    .end local v8    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v9    # "alias":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id1":J
    .end local v16    # "mdmAliases":[Ljava/lang/String;
    :cond_a
    return-void
.end method

.method public resetUid(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "rstuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3680
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3682
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3683
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3684
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3685
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3723
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3690
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3691
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3692
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 3693
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 3694
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3696
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3697
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3698
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! resetUid is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3700
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3701
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3703
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3706
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3707
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 3708
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3710
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3711
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3713
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUid(I)Landroid/os/Bundle;

    move-result-object v10

    .line 3714
    if-nez v10, :cond_4

    .line 3715
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3717
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3718
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3719
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3721
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3722
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUid Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3723
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public resetUser(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 17
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "user"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3628
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUser "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3630
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 3631
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 3632
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3633
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3671
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 3638
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 3639
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3640
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v16

    .line 3641
    .local v16, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move/from16 v5, v16

    .line 3642
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 3644
    .local v4, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3645
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 3646
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! resetUser is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3648
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3649
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3651
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3654
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 3655
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_3

    .line 3656
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3658
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3659
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3661
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->resetUser(I)Landroid/os/Bundle;

    move-result-object v10

    .line 3662
    if-nez v10, :cond_4

    .line 3663
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 3665
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3666
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 3667
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3669
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 3670
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetUser Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v10

    .line 3671
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 38
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1696
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/16 v19, 0x0

    .line 1698
    .local v19, "error":Z
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1701
    .local v10, "agentResponse":Landroid/os/Bundle;
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 1702
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1703
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v36

    .line 1704
    .local v36, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v36

    if-eq v0, v2, :cond_0

    move/from16 v5, v36

    .line 1705
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 1706
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v35

    .line 1707
    .local v35, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_1

    const/16 v35, 0x1

    .line 1709
    :cond_1
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 1711
    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1712
    const-string/jumbo v2, "user_id"

    invoke-virtual {v15, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1713
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v15, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1714
    const-string/jumbo v2, "resource"

    move/from16 v0, v35

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1715
    const-string/jumbo v2, "entryType"

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1717
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw KEY_RESOURCE_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "resource"

    const/16 v37, -0x2

    move/from16 v0, v37

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw KEY_USER_ID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "user_id"

    const/16 v37, -0x2

    move/from16 v0, v37

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw KEY_CALLER_UID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "callerUid"

    const/16 v37, -0x2

    move/from16 v0, v37

    invoke-virtual {v15, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v2

    const-string v6, "KNOX"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1724
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1725
    .local v22, "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->activeAgentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 1726
    .local v3, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 1727
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iteration has started.... uid-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 1731
    .local v26, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 1732
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1734
    const/16 v19, 0x1

    .line 1735
    goto :goto_0

    .line 1737
    :cond_3
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1740
    if-nez v12, :cond_4

    .line 1741
    const-string v2, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1743
    const/16 v19, 0x1

    .line 1744
    goto :goto_0

    .line 1747
    :cond_4
    invoke-interface {v12, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1748
    if-nez v10, :cond_5

    .line 1749
    const-string v2, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 1751
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1752
    const/16 v19, 0x1

    .line 1753
    goto/16 :goto_0

    .line 1756
    :cond_5
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1757
    .local v13, "agentaliases":[Ljava/lang/String;
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 1758
    .local v20, "errorcode":I
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iteration has started.... agentaliases-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    if-eqz v13, :cond_2

    .line 1764
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Agent alias size -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    move-object/from16 v16, v13

    .local v16, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    aget-object v14, v16, v25

    .line 1766
    .local v14, "alias":Ljava/lang/String;
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Agent alias-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 1769
    .end local v14    # "alias":Ljava/lang/String;
    :cond_6
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1770
    .local v21, "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1771
    .local v33, "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    .local v34, "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1776
    .local v28, "id1":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v32

    .line 1777
    .local v32, "mdmallowedaliases":[Ljava/lang/String;
    if-nez v32, :cond_a

    .line 1778
    const/16 v33, 0x0

    .line 1779
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v31

    .line 1787
    .local v31, "mdmaliases":[Ljava/lang/String;
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1790
    if-eqz v31, :cond_7

    move-object/from16 v0, v31

    array-length v2, v0

    if-nez v2, :cond_b

    .line 1791
    :cond_7
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = null "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    const/16 v34, 0x0

    .line 1808
    :cond_8
    :goto_3
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1809
    .restart local v21    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : Initial agent alias list for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    if-eqz v34, :cond_f

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_f

    .line 1811
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_f

    .line 1812
    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1813
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1814
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1815
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : Removing from agent alias list : alias name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 1781
    .end local v14    # "alias":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v31    # "mdmaliases":[Ljava/lang/String;
    :cond_a
    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    .line 1782
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmallowedaliasesList for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1793
    .restart local v31    # "mdmaliases":[Ljava/lang/String;
    :cond_b
    if-eqz v32, :cond_c

    move-object/from16 v0, v32

    array-length v2, v0

    if-nez v2, :cond_d

    .line 1794
    :cond_c
    invoke-static/range {v31 .. v31}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    .line 1795
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmunauthorizedaliasesList for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1797
    :cond_d
    move-object/from16 v16, v31

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    const/16 v25, 0x0

    :goto_5
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    aget-object v14, v16, v25

    .line 1798
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1799
    move-object/from16 v0, v34

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1800
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : new alias added to mdmunauthorizedaliasesList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :goto_6
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 1802
    :cond_e
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : mdmunauthorizedaliasesList unchanged, access allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1820
    .end local v14    # "alias":Ljava/lang/String;
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1821
    .restart local v14    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 1822
    .local v9, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v18

    .line 1823
    .local v18, "csUri":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1824
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw : Adding alias uri to finalaliasesList : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1829
    .end local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .end local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v12    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v13    # "agentaliases":[Ljava/lang/String;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v18    # "csUri":Ljava/lang/String;
    .end local v20    # "errorcode":I
    .end local v21    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "i$":Ljava/util/Iterator;
    .end local v26    # "id":J
    .end local v28    # "id1":J
    .end local v30    # "len$":I
    .end local v31    # "mdmaliases":[Ljava/lang/String;
    .end local v32    # "mdmallowedaliases":[Ljava/lang/String;
    .end local v33    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_10
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    .line 1830
    .local v17, "array":[Ljava/lang/String;
    const-string/jumbo v2, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1831
    if-nez v19, :cond_11

    const-string/jumbo v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    move-object v11, v10

    .line 1940
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .end local v17    # "array":[Ljava/lang/String;
    .end local v22    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_8
    return-object v11

    .line 1836
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    .line 1837
    .restart local v3    # "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v3, :cond_13

    .line 1838
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1839
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_8

    .line 1841
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_13
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 1842
    .restart local v12    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_14

    .line 1843
    const-string v2, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xe

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1845
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_8

    .line 1848
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_14
    invoke-interface {v12, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 1849
    if-nez v10, :cond_15

    .line 1850
    const-string v2, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1852
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_8

    .line 1854
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_15
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1855
    .restart local v13    # "agentaliases":[Ljava/lang/String;
    const-string/jumbo v2, "errorresponse"

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 1856
    .restart local v20    # "errorcode":I
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "saw Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UCMERRORTESTING: @CredentialManagerService saw Response from plugin: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const/4 v2, 0x2

    move/from16 v0, v35

    if-ne v0, v2, :cond_16

    .line 1861
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1862
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1863
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1866
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_16
    const/4 v2, 0x3

    move/from16 v0, v35

    if-eq v0, v2, :cond_17

    .line 1868
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1869
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1873
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1874
    const-string/jumbo v2, "stringarrayresponse"

    invoke-virtual {v10, v2, v13}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1875
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1876
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1880
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 1881
    .restart local v26    # "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    .line 1882
    const-string v2, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING!!!! saw access NOT allowed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v7, v7, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const-string/jumbo v2, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v10, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1884
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1887
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_19
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1888
    .restart local v21    # "finalagentaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1889
    .restart local v33    # "mdmallowedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1891
    .restart local v34    # "mdmunauthorizedaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v13, :cond_1a

    .line 1892
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1893
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8

    .line 1896
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforUid(ILcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v32

    .line 1897
    .restart local v32    # "mdmallowedaliases":[Ljava/lang/String;
    if-nez v32, :cond_1e

    .line 1898
    const/16 v33, 0x0

    .line 1904
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v2, v3}, Lcom/samsung/ucm/ucmservice/PolicyManager;->getallAliasesforCS(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)[Ljava/lang/String;

    move-result-object v31

    .line 1905
    .restart local v31    # "mdmaliases":[Ljava/lang/String;
    if-eqz v31, :cond_1b

    move-object/from16 v0, v31

    array-length v2, v0

    if-nez v2, :cond_1f

    .line 1906
    :cond_1b
    const/16 v34, 0x0

    .line 1917
    :cond_1c
    :goto_a
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1920
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    .line 1921
    if-eqz v34, :cond_23

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_23

    .line 1922
    const/16 v23, 0x0

    .restart local v23    # "i":I
    :goto_b
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_23

    .line 1923
    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1924
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1925
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1922
    :cond_1d
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 1900
    .end local v14    # "alias":Ljava/lang/String;
    .end local v23    # "i":I
    .end local v31    # "mdmaliases":[Ljava/lang/String;
    :cond_1e
    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v33

    goto :goto_9

    .line 1907
    .restart local v31    # "mdmaliases":[Ljava/lang/String;
    :cond_1f
    if-eqz v32, :cond_20

    move-object/from16 v0, v32

    array-length v2, v0

    if-nez v2, :cond_21

    .line 1908
    :cond_20
    invoke-static/range {v31 .. v31}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v34

    goto :goto_a

    .line 1910
    :cond_21
    move-object/from16 v16, v31

    .restart local v16    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30    # "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_1c

    aget-object v14, v16, v24

    .line 1911
    .restart local v14    # "alias":Ljava/lang/String;
    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1912
    move-object/from16 v0, v34

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1910
    :cond_22
    add-int/lit8 v24, v24, 0x1

    goto :goto_c

    .line 1930
    .end local v14    # "alias":Ljava/lang/String;
    .end local v16    # "arr$":[Ljava/lang/String;
    .end local v24    # "i$":I
    .end local v30    # "len$":I
    :cond_23
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1931
    .restart local v22    # "finalaliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1932
    .restart local v14    # "alias":Ljava/lang/String;
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 1933
    .restart local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v18

    .line 1935
    .restart local v18    # "csUri":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1937
    .end local v9    # "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .end local v14    # "alias":Ljava/lang/String;
    .end local v18    # "csUri":Ljava/lang/String;
    :cond_24
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    .line 1938
    .restart local v17    # "array":[Ljava/lang/String;
    const-string/jumbo v2, "stringarrayresponse"

    move-object/from16 v0, v17

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1939
    const-string/jumbo v2, "errorresponse"

    move/from16 v0, v20

    invoke-virtual {v10, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 1940
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_8
.end method

.method public sawInternal(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    .line 1948
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sawInternal() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; resourceType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1950
    .local v2, "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v6, "sawInternal"

    invoke-static {v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1952
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1953
    .local v0, "activeAgent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v0, :cond_0

    .line 1954
    const-string v6, "UcmService"

    const-string/jumbo v7, "sawInternal(): activeAgent == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    const-string/jumbo v6, "errorresponse"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 1983
    .end local v2    # "agentResponse":Landroid/os/Bundle;
    .local v3, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 1959
    .end local v3    # "agentResponse":Ljava/lang/Object;
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v4

    .line 1960
    .local v4, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-eqz v4, :cond_1

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v6, v0}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isCSobscure(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1961
    :cond_1
    const-string v6, "UcmService"

    const-string v7, "agentService == null || mPolicyManager.isCSobscure() ... continue"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    const-string/jumbo v6, "errorresponse"

    invoke-virtual {v2, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 1963
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1966
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1967
    .local v5, "argBundle":Landroid/os/Bundle;
    const-string v6, "callerUid"

    const/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1968
    const-string/jumbo v6, "user_id"

    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1969
    const-string/jumbo v6, "resource"

    invoke-virtual {v5, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1971
    invoke-interface {v4, v5}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->saw(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1972
    if-nez v2, :cond_3

    .line 1973
    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1975
    .restart local v2    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v3, v2

    .line 1976
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 1978
    .end local v3    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v6, "stringarrayresponse"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1979
    .local v1, "agentAliases":[Ljava/lang/String;
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sawInternal() agentAliases="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    if-eqz v1, :cond_4

    .line 1981
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sawInternal() agentAliases.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v3, v2

    .line 1983
    .restart local v3    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 22
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "profile"    # Landroid/os/Bundle;
    .param p5, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2819
    const-string/jumbo v4, "setAdminConfigureBundleForCs"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2821
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2822
    .local v12, "agentResponse":Landroid/os/Bundle;
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAdminConfigureBundleForCs "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    if-nez p4, :cond_0

    .line 2824
    const-string v4, "UcmService"

    const-string/jumbo v5, "setAdminConfigureBundleForCs : Bundle is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2826
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2889
    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .line 2830
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .line 2831
    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_1

    .line 2832
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no agent found for Source = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2834
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2835
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2839
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2840
    .local v18, "id":J
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2841
    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2842
    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .line 2843
    .local v20, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_2

    move/from16 v7, v20

    .line 2844
    :cond_2
    move/from16 v6, p2

    .line 2846
    .local v6, "user_id":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 2847
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! setConfigureBundleForCsInternal is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2849
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2850
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2852
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2855
    const-string v4, "applet_location"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2856
    .local v15, "appletLocation":Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 2857
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkPluginUsed(Ljava/lang/String;)Z

    move-result v21

    .line 2858
    .local v21, "usedPlugin":Z
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_4

    .line 2859
    const-string v4, "UcmService"

    const-string/jumbo v5, "the plugin already is used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2861
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x22

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2862
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2864
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->processAdminConfigRequest(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2865
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2866
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x19

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2867
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2871
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .end local v21    # "usedPlugin":Z
    :cond_5
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .line 2872
    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_6

    .line 2873
    const-string v4, "UcmService"

    const-string/jumbo v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2875
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2876
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2878
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_6
    move/from16 v0, p1

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v14, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object v12

    .line 2879
    if-nez v12, :cond_7

    .line 2880
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2882
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2883
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2884
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2886
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v4, "intresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 2887
    .local v17, "response":I
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 2888
    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .line 2889
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 21
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "certChain"    # [B
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2040
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2043
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2044
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2045
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2046
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2110
    .end local v10    # "agentResponse":Landroid/os/Bundle;
    .local v11, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 2051
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2052
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2053
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .line 2054
    .local v20, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    move/from16 v5, v20

    .line 2055
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2056
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v19

    .line 2057
    .local v19, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    const/16 v19, 0x1

    .line 2059
    :cond_2
    if-eqz p3, :cond_3

    const-string v2, "admin_id"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v15, 0x0

    .line 2062
    .local v15, "ismdmcaller":Z
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2063
    .local v16, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 2064
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! setCertificateChain is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2066
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2067
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2059
    .end local v11    # "agentResponse":Ljava/lang/Object;
    .end local v15    # "ismdmcaller":Z
    .end local v16    # "id":J
    :cond_4
    const/4 v15, 0x1

    goto :goto_1

    .line 2069
    .restart local v15    # "ismdmcaller":Z
    .restart local v16    # "id":J
    :cond_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2072
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 2073
    .local v13, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2074
    const-string/jumbo v2, "user_id"

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2075
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v13, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2076
    const-string/jumbo v2, "resource"

    move/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2077
    const-string/jumbo v2, "extraArgs"

    move-object/from16 v0, p3

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2079
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v12

    .line 2085
    .local v12, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v12, :cond_6

    .line 2086
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2088
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2089
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2092
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v12, v2, v0, v1}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2093
    if-nez v10, :cond_7

    .line 2094
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2096
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2097
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2098
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2100
    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string v2, "booleanresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 2101
    .local v18, "response":Z
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 2102
    .local v14, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCertificateChain Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    if-nez v18, :cond_8

    if-nez v14, :cond_8

    .line 2105
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for setCertificateChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    const-string v2, "booleanresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2107
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v11, v10

    .line 2108
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .end local v11    # "agentResponse":Ljava/lang/Object;
    :cond_8
    move-object v11, v10

    .line 2110
    .restart local v11    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setConfigureBundleForCs(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "profile"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 2804
    const-string v1, "UcmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setConfigureBundleForCs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2806
    .local v0, "agentResponse":Landroid/os/Bundle;
    if-nez p3, :cond_0

    .line 2807
    const-string v1, "UcmService"

    const-string/jumbo v2, "setConfigureBundleForCs : Bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    const-string/jumbo v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2809
    const-string/jumbo v1, "errorresponse"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2814
    :goto_0
    return-object v0

    .line 2812
    :cond_0
    const-string/jumbo v1, "intresponse"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2813
    const-string/jumbo v1, "errorresponse"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setPackageSetting(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 21
    .param p1, "adminUid"    # I
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "option"    # Landroid/os/Bundle;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2680
    const-string/jumbo v4, "setPackageSetting"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2682
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2683
    .local v12, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p2 .. p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v11

    .line 2684
    .local v11, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v11, :cond_0

    .line 2685
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2686
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2737
    .end local v12    # "agentResponse":Landroid/os/Bundle;
    .local v13, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v13

    .line 2691
    .end local v13    # "agentResponse":Ljava/lang/Object;
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    new-instance v10, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2692
    .local v10, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2693
    .local v7, "uid":I
    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v20

    .line 2694
    .local v20, "uriuid":I
    const/4 v4, -0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    move/from16 v7, v20

    .line 2695
    :cond_1
    move/from16 v6, p6

    .line 2698
    .local v6, "user_id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2699
    .local v18, "id":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 2700
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WARNING!!!! setPackageSetting is NOT allowed for URI = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2702
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xf

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2703
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 2705
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_2
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2708
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 2709
    .local v15, "argBundle":Landroid/os/Bundle;
    const-string v4, "callerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2710
    const-string/jumbo v4, "user_id"

    invoke-virtual {v15, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2711
    const-string/jumbo v4, "ownerUid"

    invoke-virtual {v15, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2712
    const-string/jumbo v4, "extraArgs"

    move-object/from16 v0, p5

    invoke-virtual {v15, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2714
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting KEY_RESOURCE_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "resource"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting KEY_USER_ID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "user_id"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting KEY_CALLER_UID= "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "callerUid"

    const/4 v9, -0x2

    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    invoke-virtual {v11}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v14

    .line 2720
    .local v14, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v14, :cond_3

    .line 2721
    const-string v4, "UcmService"

    const-string/jumbo v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2723
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xe

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2724
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2726
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v14, v0, v1, v2, v15}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setPackageSetting(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    .line 2727
    if-nez v12, :cond_4

    .line 2728
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    new-instance v12, Landroid/os/Bundle;

    .end local v12    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2730
    .restart local v12    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "intresponse"

    const/4 v5, -0x1

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2731
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v12, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v13, v12

    .line 2732
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2734
    .end local v13    # "agentResponse":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v4, "intresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 2735
    .local v17, "response":I
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 2736
    .local v16, "errorcode":I
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPackageSetting Response from plugin:  error code = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .line 2737
    .restart local v13    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public setState(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xe

    .line 3165
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    const-string/jumbo v4, "setState"

    invoke-static {v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3169
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 3170
    const-string v4, "UcmService"

    const-string/jumbo v5, "uri is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3203
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3175
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    .line 3176
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v4, 0x1

    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_1

    .line 3177
    const-string v4, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3182
    :goto_1
    if-nez v0, :cond_2

    .line 3183
    const-string v4, "UcmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no agent found for Source = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3185
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3179
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3188
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3189
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_3

    .line 3190
    const-string v4, "UcmService"

    const-string/jumbo v5, "no agentService found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    const-string/jumbo v4, "errorresponse"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3192
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3195
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    invoke-interface {v3, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object v1

    .line 3196
    if-nez v1, :cond_4

    .line 3197
    const-string v4, "UcmService"

    const-string v5, "ERROR: Null Response received from agentService"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3199
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v4, "errorresponse"

    const/16 v5, 0xd

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3200
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    move-object v2, v1

    .line 3203
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 20
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "algo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2405
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2407
    .local v10, "agentResponse":Landroid/os/Bundle;
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v9

    .line 2408
    .local v9, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    if-nez v9, :cond_0

    .line 2409
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign : NULL agent for uri "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2411
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2412
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 2481
    :goto_0
    return-object v2

    .line 2416
    :cond_0
    new-instance v8, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;-><init>(Ljava/lang/String;)V

    .line 2417
    .local v8, "UcmUri":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2418
    .local v5, "uid":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUid()I

    move-result v18

    .line 2419
    .local v18, "uriuid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_1

    move/from16 v5, v18

    .line 2420
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getuseridforuid(I)I

    move-result v4

    .line 2421
    .local v4, "user_id":I
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getResourceId()I

    move-result v17

    .line 2422
    .local v17, "uriresource":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    const/16 v17, 0x1

    .line 2425
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2426
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mPolicyManager:Lcom/samsung/ucm/ucmservice/PolicyManager;

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getSource()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getRawAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/ucm/ucmservice/PolicyManager;->isSEStorageAccessAllowed(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;IIZLjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 2427
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING!!!! sign is NOT allowed for URI = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2429
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xf

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2430
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto :goto_0

    .line 2432
    :cond_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2435
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->isCallFromSystem(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2436
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v19

    .line 2437
    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_5

    .line 2438
    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUri;->getUserId()I

    move-result v4

    .line 2439
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign new userid-"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    .end local v19    # "userId":I
    :cond_4
    :goto_1
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 2446
    .local v12, "argBundle":Landroid/os/Bundle;
    const-string v2, "callerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2447
    const-string/jumbo v2, "user_id"

    invoke-virtual {v12, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2448
    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2449
    const-string/jumbo v2, "resource"

    move/from16 v0, v17

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2451
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign KEY_RESOURCE_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "resource"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign KEY_USER_ID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "user_id"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign KEY_CALLER_UID= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "callerUid"

    const/4 v7, -0x2

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    invoke-virtual {v9}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v11

    .line 2457
    .local v11, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v11, :cond_6

    .line 2458
    const-string v2, "UcmService"

    const-string/jumbo v3, "no agentService found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2460
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2461
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2441
    .end local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .end local v12    # "argBundle":Landroid/os/Bundle;
    .restart local v19    # "userId":I
    :cond_5
    const-string v2, "UcmService"

    const-string/jumbo v3, "sign user id id not valid. Keeping same userid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2463
    .end local v19    # "userId":I
    .restart local v11    # "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .restart local v12    # "argBundle":Landroid/os/Bundle;
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v11, v2, v0, v1, v12}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->sign(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 2464
    if-nez v10, :cond_7

    .line 2465
    const-string v2, "UcmService"

    const-string v3, "ERROR: Null Response received from agentService"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    new-instance v10, Landroid/os/Bundle;

    .end local v10    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2467
    .restart local v10    # "agentResponse":Landroid/os/Bundle;
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2468
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xe

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2469
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2471
    :cond_7
    const-string v2, "bytearrayresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 2472
    .local v16, "response":[B
    const-string/jumbo v2, "errorresponse"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 2473
    .local v13, "errorcode":I
    const-string v2, "UcmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sign Response from plugin:  error code = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    if-nez v16, :cond_8

    .line 2476
    const-string v2, "UcmService"

    const-string v3, "ERROR: Empty data received for sign"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    const-string v2, "bytearrayresponse"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2478
    const-string/jumbo v2, "errorresponse"

    const/16 v3, 0xd

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2479
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0

    .line 2481
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public unwrapDek(Ljava/lang/String;[B)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedDek"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xe

    const/4 v8, 0x1

    .line 1418
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unwrapDek "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1423
    .local v1, "agentResponse":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v5, "unwrapDek"

    invoke-static {v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1430
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_1

    .line 1431
    :cond_0
    const-string v5, "UcmService"

    const-string/jumbo v6, "uri is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0x10

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1433
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 1464
    :goto_0
    return-object v5

    .line 1424
    :catch_0
    move-exception v3

    .line 1425
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1426
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xf

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1427
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1436
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    .line 1437
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const-string v5, "boot_test"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v8, v5, :cond_2

    .line 1438
    const-string v5, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 1443
    :goto_1
    if-nez v0, :cond_3

    .line 1444
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agent found for Source = com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1446
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1440
    :cond_2
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 1448
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v2

    .line 1449
    .local v2, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v2, :cond_4

    .line 1450
    const-string v5, "UcmService"

    const-string/jumbo v6, "no agentService found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1452
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1455
    :cond_4
    invoke-interface {v2, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object v1

    .line 1456
    if-nez v1, :cond_5

    .line 1457
    const-string v5, "UcmService"

    const-string v6, "ERROR: Null Response received from agentService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1459
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v5, "errorresponse"

    const/16 v6, 0xd

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1460
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto :goto_0

    .line 1462
    :cond_5
    const-string/jumbo v5, "errorresponse"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1463
    .local v4, "errorcode":I
    const-string v5, "UcmService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unwrapDek Response from plugin:  error code = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(Landroid/os/Bundle;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public verifyPin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2991
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verifyPin : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2994
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 2995
    :cond_0
    const-string v6, "UcmService"

    const-string/jumbo v7, "uri is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3046
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3000
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p2, :cond_2

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    .line 3001
    :cond_2
    const-string v6, "UcmService"

    const-string/jumbo v7, "pin is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3003
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3006
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .line 3007
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v6, 0x1

    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_4

    .line 3008
    const-string v6, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3013
    :goto_1
    if-nez v0, :cond_5

    .line 3014
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3016
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3010
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3018
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3019
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    .line 3020
    const-string v6, "UcmService"

    const-string/jumbo v7, "no agentService found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3022
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3025
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPin(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3026
    if-nez v1, :cond_7

    .line 3027
    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3029
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3030
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3033
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3034
    .local v5, "state":I
    const-string/jumbo v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3035
    .local v4, "remainCnt":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOCK_STATE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REMAIN_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    const/16 v6, 0x83

    if-ne v5, v6, :cond_8

    .line 3038
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->test_status_for_ode:Z

    .line 3041
    :cond_8
    const/16 v6, 0x85

    if-ne v5, v6, :cond_9

    .line 3042
    const-string v6, "UcmService"

    const-string/jumbo v7, "state changed to blocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    const/16 v6, 0x85

    invoke-direct {p0, v6, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->sendStateChangeBroadcast(ILjava/lang/String;)V

    :cond_9
    move-object v2, v1

    .line 3046
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3051
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verifyPuk : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3054
    .local v1, "agentResponse":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_1

    .line 3055
    :cond_0
    const-string v6, "UcmService"

    const-string/jumbo v7, "uri is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3056
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3099
    .end local v1    # "agentResponse":Landroid/os/Bundle;
    .local v2, "agentResponse":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3060
    .end local v2    # "agentResponse":Ljava/lang/Object;
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    :cond_1
    if-eqz p3, :cond_2

    const/4 v6, 0x1

    const-string v7, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_3

    .line 3061
    :cond_2
    const-string v6, "UcmService"

    const-string/jumbo v7, "pin is empty"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0x10

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3063
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3066
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_3
    const/4 v0, 0x0

    .line 3067
    .local v0, "agent":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    const/4 v6, 0x1

    const-string v7, "boot_test"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_4

    .line 3068
    const-string v6, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    .line 3073
    :goto_1
    if-nez v0, :cond_5

    .line 3074
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no agent found for Source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3076
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3070
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_4
    invoke-static {p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getActiveAgent(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    goto :goto_1

    .line 3079
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    move-result-object v3

    .line 3080
    .local v3, "agentService":Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    if-nez v3, :cond_6

    .line 3081
    const-string v6, "UcmService"

    const-string/jumbo v7, "no agentService found"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xe

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3083
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto :goto_0

    .line 3086
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_6
    invoke-interface {v3, p2, p3}, Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3087
    if-nez v1, :cond_7

    .line 3088
    const-string v6, "UcmService"

    const-string v7, "ERROR: Null Response received from agentService"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "agentResponse":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3090
    .restart local v1    # "agentResponse":Landroid/os/Bundle;
    const-string/jumbo v6, "errorresponse"

    const/16 v7, 0xd

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, v1

    .line 3091
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0

    .line 3094
    .end local v2    # "agentResponse":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 3095
    .local v5, "state":I
    const-string/jumbo v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3096
    .local v4, "remainCnt":I
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOCK_STATE : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    const-string v6, "UcmService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REMAIN_COUNT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    .line 3099
    .restart local v2    # "agentResponse":Ljava/lang/Object;
    goto/16 :goto_0
.end method
