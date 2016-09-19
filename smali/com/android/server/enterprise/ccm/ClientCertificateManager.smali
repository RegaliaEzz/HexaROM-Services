.class public Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.super Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;
.source "ClientCertificateManager.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;,
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CCM_PRIVATE_KEY:I = 0x3

.field private static final CCM_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.ccm.date"

.field private static final DBG:Z

.field public static final KEYSTORE_KEYCHAIN_CCM_MARKER:Ljava/lang/String; = "keystorekeychain"

.field private static final KNOX_CCM_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM"

.field private static TAG:Ljava/lang/String;

.field private static final defaultPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_SLOT_ID:J

.field private final TIMA_SERVICE:Ljava/lang/String;

.field private final TZ_CCM_APP_NAME:Ljava/lang/String;

.field private final TZ_CCM_SUCCESS:J

.field private mContext:Landroid/content/Context;

.field private mDefaultCertAlias:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Landroid/os/PersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

.field private mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotCount:I

.field private final mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 146
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    .line 149
    const-string v0, "ClientCertificateManager Service"

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.samsung.android.spayfw"

    aput-object v3, v0, v1

    const-string v1, "com.samsung.android.spay"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    return-void

    :cond_0
    move v0, v2

    .line 146
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 187
    invoke-direct {p0}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;-><init>()V

    .line 153
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 154
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 155
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 156
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    .line 157
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    .line 158
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    .line 159
    iput v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 160
    iput-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    .line 162
    const-string/jumbo v4, "tima"

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TIMA_SERVICE:Ljava/lang/String;

    .line 166
    iput-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    .line 171
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TZ_CCM_SUCCESS:J

    .line 179
    const-wide v4, 0xffffffffL

    iput-wide v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->INVALID_SLOT_ID:J

    .line 182
    const-string/jumbo v4, "tz_ccm"

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TZ_CCM_APP_NAME:Ljava/lang/String;

    .line 3500
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 189
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "ClientCertificateManager Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    .line 191
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 192
    const-string/jumbo v4, "tima"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    .line 194
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setupIntentFilters()V

    .line 196
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    iput-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    .line 198
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v4, :cond_1

    .line 199
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 201
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 202
    .local v3, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_1

    .line 203
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 204
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V

    goto :goto_0

    .line 208
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 211
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v4, :cond_3

    .line 213
    :try_start_0
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 214
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v5, "Called TIMA service getTimaVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_3
    :goto_1
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static native CCM_SetTokenTUIPasswd(II)I
.end method

.method static native CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 143
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->unregisterPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z

    move-result v0

    return v0
.end method

.method private addDefaultPackageToExemptList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1059
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addDefaultPackageToExemptList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1061
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1062
    .local v0, "defaultPackageName":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v2

    .line 1063
    .local v2, "uid":I
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "defaultPackageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_1
    const/4 v3, -0x1

    if-eq v3, v2, :cond_2

    .line 1065
    const/4 v3, 0x1

    const/16 v4, 0x3e8

    invoke-static {v3, v4, v6, v2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 1060
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    .end local v0    # "defaultPackageName":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_3
    return-void
.end method

.method private addExemptList()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 250
    .local v2, "c":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v3, "containerId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v1, "adminUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string v7, "/data/system/enterprise.db"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 254
    const-string v6, "SELECT * FROM MUMCONTAINER;"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 255
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 256
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 257
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v6

    .line 264
    if-eqz v2, :cond_0

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_0
    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 269
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 270
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "No container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_2
    :goto_2
    return-void

    .line 264
    :cond_3
    if-eqz v2, :cond_4

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_4
    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 264
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_5

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_5
    if-eqz v0, :cond_6

    .line 267
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v6

    .line 275
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    .line 276
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 277
    const/4 v4, -0x1

    .line 278
    .local v4, "emailUid":I
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.samsung.android.email.provider"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v4

    .line 279
    if-eq v4, v12, :cond_9

    .line 280
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v7, v6, v4, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 276
    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 282
    :cond_9
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.samsung.android.email.sync"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v4

    .line 283
    if-eq v4, v12, :cond_a

    .line 284
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v7, v6, v4, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_4

    .line 286
    :cond_a
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.android.exchange"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v4

    .line 287
    if-eq v4, v12, :cond_8

    .line 288
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v7, v6, v4, v10}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_4

    .line 294
    .end local v4    # "emailUid":I
    .end local v5    # "i":I
    :cond_b
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "No Admin for this container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method static native ccm_create_slot(IIILjava/lang/String;)J
.end method

.method static native ccm_delete_alias_list(I[Ljava/lang/String;)J
.end method

.method static native ccm_delete_certificate(IILjava/lang/String;)J
.end method

.method static native ccm_delete_csr_profile(IILjava/lang/String;)J
.end method

.method static native ccm_delete_slot(II)J
.end method

.method static native ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B
.end method

.method static native ccm_generate_csr(IILjava/lang/String;)[B
.end method

.method static native ccm_get_aliases_having_private_key(I)[Ljava/lang/String;
.end method

.method static native ccm_get_error_message(J)Ljava/lang/String;
.end method

.method static native ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J
.end method

.method static native ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J
.end method

.method static native ccm_manage_exempt_list(ZIIIZ)J
.end method

.method static native ccm_set_csr_profile(IILjava/lang/String;I[BI)J
.end method

.method static native ccm_update_lock_status(IIZ)J
.end method

.method private checkAliasExists(IILjava/lang/String;Z)Z
    .locals 9
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "isCsrRecord"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4111
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 4112
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in checkAliasExists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    :cond_0
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    .line 4115
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdminId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", UserId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Alias - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isCsrRecord - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_1
    if-eqz p4, :cond_3

    move v0, v4

    .line 4121
    .local v0, "csrRecordIntValue":I
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4122
    .local v1, "cvW":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4123
    const-string/jumbo v6, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4124
    const-string v6, "alias"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    const-string/jumbo v6, "csr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4127
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 4130
    .local v3, "rowCount":I
    if-lez v3, :cond_4

    .line 4131
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 4132
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, "Alias Exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4140
    .end local v1    # "cvW":Landroid/content/ContentValues;
    .end local v3    # "rowCount":I
    :cond_2
    :goto_1
    return v4

    .end local v0    # "csrRecordIntValue":I
    :cond_3
    move v0, v5

    .line 4118
    goto :goto_0

    .line 4135
    .restart local v0    # "csrRecordIntValue":I
    :catch_0
    move-exception v2

    .line 4136
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 4137
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAliasExists - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move v4, v5

    .line 4140
    goto :goto_1
.end method

.method private checkDefaultCCMProfile()Z
    .locals 7

    .prologue
    .line 949
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "checkDefaultCCMProfile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_0
    const/4 v4, 0x0

    .line 951
    .local v4, "prepared":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultPackageList()Ljava/util/List;

    move-result-object v3

    .line 952
    .local v3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 953
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 954
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 955
    .local v1, "defaultPackageName":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 956
    .local v0, "contains":Z
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 957
    const/4 v4, 0x1

    .line 953
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 959
    :cond_1
    const/4 v4, 0x0

    .line 964
    .end local v0    # "contains":Z
    .end local v1    # "defaultPackageName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    return v4
.end method

.method private checkMPforCCM()V
    .locals 12

    .prologue
    .line 3594
    const/4 v8, 0x0

    .line 3595
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 3596
    .local v7, "userManager":Landroid/os/UserManager;
    if-eqz v7, :cond_0

    .line 3597
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 3600
    :cond_0
    if-eqz v8, :cond_8

    .line 3601
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 3602
    .local v6, "user":Landroid/content/pm/UserInfo;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_2

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CCM? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v6, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    :cond_2
    iget-boolean v9, v6, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    if-nez v9, :cond_6

    .line 3604
    const/4 v4, 0x0

    .line 3606
    .local v4, "provision":Z
    const-string/jumbo v9, "device_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 3610
    .local v1, "dpms":Landroid/app/admin/IDevicePolicyManager;
    :try_start_0
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    if-nez v9, :cond_5

    .line 3611
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 3612
    const/4 v4, 0x1

    .line 3619
    :cond_3
    :goto_1
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", provision? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    :cond_4
    if-eqz v4, :cond_1

    .line 3621
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3623
    :catch_0
    move-exception v5

    .line 3624
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "DPMS"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3615
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_5
    :try_start_1
    iget v9, v6, Landroid/content/pm/UserInfo;->flags:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v9, v9, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_3

    .line 3616
    const/4 v4, 0x1

    goto :goto_1

    .line 3628
    .end local v1    # "dpms":Landroid/app/admin/IDevicePolicyManager;
    .end local v4    # "provision":Z
    :cond_6
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 3630
    .local v3, "mumContainerOwnerUid":I
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 3632
    .local v0, "adminId":I
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_7

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() mumContainerOwnerUid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :cond_7
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() adminId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3641
    .end local v0    # "adminId":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mumContainerOwnerUid":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_8
    return-void
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 3420
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3425
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 3421
    :catch_0
    move-exception v0

    .line 3422
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3423
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deleteCCMDefaultPolicyRecord(I)Z
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 4403
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4404
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in deleteCCMDefaultPolicyRecord"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    aput-object v6, v2, v5

    .line 4407
    .local v2, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4408
    .local v0, "contId":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 4409
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMDefaultPolicy"

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 4414
    .end local v0    # "contId":Ljava/lang/String;
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :goto_0
    return v4

    .line 4411
    :catch_0
    move-exception v1

    .line 4412
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteCCMDefaultPolicyRecord() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteCCMProfile(I)Z
    .locals 10
    .param p1, "containerId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2080
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_1

    .line 2081
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 2082
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_0
    :goto_0
    return v4

    .line 2088
    :cond_1
    const-wide/16 v6, 0x0

    invoke-static {v4, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 2089
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 2090
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteCCMProfile - native ccm_delete_slot failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2093
    :cond_2
    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 2095
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "uid"

    aput-object v6, v2, v4

    .line 2096
    .local v2, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2097
    .local v0, "contId":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 2098
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ClientCertificateManagerTable"

    invoke-virtual {v4, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2101
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "contId":Ljava/lang/String;
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_3
    :goto_1
    move v4, v5

    .line 2107
    goto :goto_0

    .line 2102
    :catch_0
    move-exception v1

    .line 2103
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    .line 2104
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteCCMProfile - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteCCMProfileUsingAdminId(IIZ)Z
    .locals 10
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I
    .param p3, "useAdminIdOnly"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2030
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_1

    .line 2031
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2032
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCCMProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_0
    :goto_0
    return v3

    .line 2038
    :cond_1
    const-wide/16 v6, 0x0

    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 2039
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2040
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCCMProfileUsingAdminId - native ccm_delete_slot failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2044
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 2048
    if-eqz p3, :cond_4

    .line 2049
    const/4 v3, 0x1

    :try_start_0
    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "adminUid"

    aput-object v5, v1, v3

    .line 2050
    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2051
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2062
    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :cond_3
    :goto_2
    move v3, v4

    .line 2070
    goto :goto_0

    .line 2054
    :cond_4
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "adminUid"

    aput-object v5, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "uid"

    aput-object v5, v1, v3

    .line 2056
    .restart local v1    # "sColumns":[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2058
    .restart local v2    # "sValues":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2063
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2064
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_3

    .line 2065
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCCMProfileUsingAdminId - Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private deleteCSRProfileUsingAdminId(II)Z
    .locals 12
    .param p1, "adminId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 4657
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 4658
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in deleteCSRProfileUsingAdminId"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v7, :cond_2

    .line 4661
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 4662
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteCSRProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    :cond_1
    const/4 v7, 0x0

    .line 4733
    :goto_0
    return v7

    .line 4667
    :cond_2
    const/4 v5, 0x0

    .line 4670
    .local v5, "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4671
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "csr"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4674
    const/4 v7, -0x1

    if-ne v7, p1, :cond_7

    .line 4675
    const-string/jumbo v7, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4681
    :goto_1
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_3

    .line 4682
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in deleteCSRProfileUsingAdminId: AdminId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    const-string v9, "alias"

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 4689
    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 4691
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4692
    .local v6, "templateName":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_5

    .line 4693
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in deleteCSRProfileUsingAdminId - templateName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    :cond_5
    const-wide/16 v8, 0x0

    invoke-static {p1, p2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    .line 4698
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_6

    .line 4699
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteCSRProfileUsingAdminId - native ccm_delete_csr_profile failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 4677
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "templateName":Ljava/lang/String;
    :cond_7
    const-string v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4678
    const-string/jumbo v7, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 4726
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 4727
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_8

    .line 4728
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteCSRProfileUsingAdminId - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 4706
    .restart local v0    # "cvWhere":Landroid/content/ContentValues;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    const/4 v7, -0x1

    if-ne v7, p1, :cond_a

    .line 4707
    const/4 v7, 0x2

    :try_start_1
    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "uid"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "csr"

    aput-object v8, v3, v7

    .line 4709
    .local v3, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 4712
    .local v4, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 4724
    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 4715
    .end local v3    # "sColumns":[Ljava/lang/String;
    .end local v4    # "sValues":[Ljava/lang/String;
    :cond_a
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "uid"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "csr"

    aput-object v8, v3, v7

    .line 4717
    .restart local v3    # "sColumns":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 4720
    .restart local v4    # "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private deleteCertificateProfile(I)Z
    .locals 11
    .param p1, "containerId"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2418
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_1

    .line 2419
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2420
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfile - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_0
    :goto_0
    return v3

    .line 2426
    :cond_1
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p1, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    .line 2427
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2428
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfile - native ccm_delete_certificate failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2433
    :cond_2
    new-array v1, v10, [Ljava/lang/String;

    const-string/jumbo v5, "uid"

    aput-object v5, v1, v3

    const-string/jumbo v5, "csr"

    aput-object v5, v1, v4

    .line 2434
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2436
    .local v2, "sValues":[Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 2438
    goto :goto_0

    .line 2439
    :catch_0
    move-exception v0

    .line 2440
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2441
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateProfile - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteCertificateProfileUsingAdminId(IIZ)Z
    .locals 8
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I
    .param p3, "useAdminIdOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2368
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2369
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in deleteCertificateProfileUsingAdminId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    .line 2372
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 2373
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :cond_1
    :goto_0
    return v1

    .line 2379
    :cond_2
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {p1, p2, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 2381
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 2382
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfileUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2387
    :cond_3
    const/4 v1, 0x1

    .line 2389
    .local v1, "ret":Z
    if-eqz p3, :cond_5

    .line 2390
    const/4 v4, 0x2

    :try_start_0
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "csr"

    aput-object v5, v2, v4

    .line 2392
    .local v2, "sColumns":[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2394
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2410
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_4
    :goto_1
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 2411
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "out deleteCertificateProfileUsingAdminId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2397
    :cond_5
    const/4 v4, 0x3

    :try_start_1
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "uid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "csr"

    aput-object v5, v2, v4

    .line 2399
    .restart local v2    # "sColumns":[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2401
    .restart local v3    # "sValues":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2404
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2405
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 2406
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 2407
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateProfileUsingAdminId - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteCertificateUsingAdminId(IILjava/lang/String;)Z
    .locals 18
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 2307
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_0

    .line 2308
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "in deleteCertificateUsingAdminId"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v13, :cond_2

    .line 2311
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_1

    .line 2312
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "deleteCertificateUsingAdminId - TIMA version does not include CCM"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_1
    const/4 v13, 0x0

    .line 2362
    :goto_0
    return v13

    .line 2318
    :cond_2
    const-wide/16 v14, 0x0

    :try_start_0
    invoke-static/range {p1 .. p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-eqz v13, :cond_4

    .line 2320
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_3

    .line 2321
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "deleteCertificateUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_3
    const/4 v13, 0x0

    goto :goto_0

    .line 2327
    :cond_4
    const/4 v3, 0x0

    .line 2328
    .local v3, "callerUid":I
    const/4 v13, 0x4

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "adminUid"

    aput-object v14, v9, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "uid"

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const-string v14, "alias"

    aput-object v14, v9, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "csr"

    aput-object v14, v9, v13

    .line 2331
    .local v9, "sIdColumns":[Ljava/lang/String;
    const/4 v13, 0x4

    new-array v11, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    aput-object p3, v11, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    .line 2333
    .local v11, "sIdValues":[Ljava/lang/String;
    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "installerId"

    aput-object v14, v10, v13

    .line 2335
    .local v10, "sIdReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "CCMCertTable"

    invoke-virtual {v13, v14, v9, v11, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2338
    .local v5, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 2339
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    const-string/jumbo v14, "installerId"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2344
    :cond_5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2345
    .local v2, "adminId":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2346
    .local v4, "contId":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2347
    .local v7, "installerId":Ljava/lang/String;
    const/4 v13, 0x5

    new-array v8, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "adminUid"

    aput-object v14, v8, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "uid"

    aput-object v14, v8, v13

    const/4 v13, 0x2

    const-string v14, "alias"

    aput-object v14, v8, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "installerId"

    aput-object v14, v8, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "csr"

    aput-object v14, v8, v13

    .line 2350
    .local v8, "sColumns":[Ljava/lang/String;
    const/4 v13, 0x5

    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object v7, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 2353
    .local v12, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "CCMCertTable"

    invoke-virtual {v13, v14, v8, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2356
    .end local v2    # "adminId":Ljava/lang/String;
    .end local v3    # "callerUid":I
    .end local v4    # "contId":Ljava/lang/String;
    .end local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "installerId":Ljava/lang/String;
    .end local v8    # "sColumns":[Ljava/lang/String;
    .end local v9    # "sIdColumns":[Ljava/lang/String;
    .end local v10    # "sIdReturnColumns":[Ljava/lang/String;
    .end local v11    # "sIdValues":[Ljava/lang/String;
    .end local v12    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2357
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v13, :cond_6

    .line 2358
    sget-object v13, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "deleteCertificateUsingAdminId - Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method private deleteDefaultCCMProfile(J)V
    .locals 11
    .param p1, "slotId"    # J

    .prologue
    .line 1143
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteDefaultCCMProfile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_0
    const-wide v8, 0xffffffffL

    cmp-long v7, p1, v8

    if-nez v7, :cond_2

    .line 1145
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v8, "INVALID_SLOT_ID"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_1
    return-void

    .line 1148
    :cond_2
    const-string v0, "1000"

    .line 1149
    .local v0, "adminUid":Ljava/lang/String;
    const-string v1, "0"

    .line 1151
    .local v1, "containerId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 1153
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1154
    .local v4, "packageName":Ljava/lang/String;
    const/4 v7, 0x4

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "uid"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "slotId"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "pkgName"

    aput-object v8, v5, v7

    .line 1156
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    .line 1159
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ClientCertificateManagerTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1151
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1161
    :catch_0
    move-exception v2

    .line 1162
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteDefaultCCMProfile - Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private doesCCMSupportKeyAlgorithm([B[B)Z
    .locals 7
    .param p1, "certBytes"    # [B
    .param p2, "pKeyBytes"    # [B

    .prologue
    const/4 v5, 0x1

    .line 1467
    if-eqz p1, :cond_1

    .line 1468
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 1469
    .local v1, "cert":Ljava/security/cert/Certificate;
    if-eqz v1, :cond_1

    .line 1470
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 1471
    .local v4, "pk":Ljava/security/PublicKey;
    if-eqz v4, :cond_1

    .line 1472
    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "alg":Ljava/lang/String;
    const-string v5, "RSA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1493
    .end local v0    # "alg":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "pk":Ljava/security/PublicKey;
    :cond_0
    :goto_0
    return v5

    .line 1481
    :cond_1
    if-eqz p2, :cond_0

    .line 1484
    :try_start_0
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 1485
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1486
    .local v4, "pk":Ljava/security/PrivateKey;
    goto :goto_0

    .line 1487
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v4    # "pk":Ljava/security/PrivateKey;
    :catch_0
    move-exception v2

    .line 1488
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 328
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    .line 330
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    .line 332
    .local v0, "profileOwnerUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_1

    .line 333
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 334
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v2, "ClientCertificateManager.enforceAdminPermission() call comes from the profile owner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 344
    .end local v0    # "profileOwnerUid":I
    :goto_0
    return-object v1

    .line 340
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :cond_2
    move-object v1, p1

    .line 344
    goto :goto_0
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)V
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    if-gtz v0, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_0
.end method

.method private existDefaultProfile(J)Z
    .locals 13
    .param p1, "slotId"    # J

    .prologue
    .line 1115
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "existDefaultProfile : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    const/4 v3, 0x0

    .line 1117
    .local v3, "exist":Z
    const-string v1, "1000"

    .line 1118
    .local v1, "defaultAdminUid":Ljava/lang/String;
    const-string v2, "0"

    .line 1119
    .local v2, "defaultContainerId":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "pkgName"

    aput-object v11, v7, v10

    .line 1121
    .local v7, "sIdColumns_default":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "slotId"

    aput-object v11, v8, v10

    .line 1122
    .local v8, "sReturnColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 1123
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1124
    .local v6, "packageName":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    .line 1127
    .local v9, "sValues":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v7, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1131
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1132
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "slotId"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1133
    .local v4, "existSlotId":I
    int-to-long v10, v4

    cmp-long v10, v10, p1

    if-nez v10, :cond_2

    .line 1134
    const/4 v3, 0x1

    .line 1139
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "existSlotId":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "sValues":[Ljava/lang/String;
    :cond_1
    return v3

    .line 1122
    .restart local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v9    # "sValues":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3974
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 3975
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 3976
    .local v0, "newCInfo":Landroid/app/enterprise/ContextInfo;
    move-object p1, v0

    .line 3977
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3978
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fixContextInfoForMP() returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    .end local v0    # "newCInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    return-object p1
.end method

.method private getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3866
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, -0x1

    .line 3867
    .local v5, "adminId":I
    const/4 v7, 0x0

    .line 3869
    .local v7, "caller":Ljava/lang/String;
    const/16 v21, 0x2

    :try_start_0
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    aput-object v22, v17, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "pkgName"

    aput-object v22, v17, v21

    .line 3871
    .local v17, "sColumns":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    const-string v22, "adminUid"

    aput-object v22, v18, v21

    .line 3872
    .local v18, "sReturnColumns":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 3873
    .local v20, "userIdString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3875
    .local v13, "pkgNames":[Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 3876
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 3882
    :goto_0
    if-eqz v13, :cond_1

    .line 3883
    move-object v6, v13

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_1

    aget-object v12, v6, v10

    .line 3884
    .local v12, "pkgName":Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const/16 v21, 0x1

    aput-object v12, v19, v21

    .line 3886
    .local v19, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "ClientCertificateManagerTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3889
    .local v8, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_5

    .line 3890
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string v22, "adminUid"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3899
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    :cond_1
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_3

    .line 3900
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v14, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    aput-object v22, v14, v21

    const/16 v21, 0x1

    const-string v22, "allowAllPkgs"

    aput-object v22, v14, v21

    .line 3902
    .local v14, "sAllColumns":[Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v16, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v16, v21

    .line 3905
    .local v16, "sAllValues":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "adminUid"

    aput-object v22, v15, v21

    .line 3906
    .local v15, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3908
    .restart local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "ClientCertificateManagerTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3912
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_2

    .line 3913
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string v22, "adminUid"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3917
    :cond_2
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_3

    .line 3918
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getAdminIdForCaller - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v14    # "sAllColumns":[Ljava/lang/String;
    .end local v15    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v16    # "sAllValues":[Ljava/lang/String;
    .end local v17    # "sColumns":[Ljava/lang/String;
    .end local v18    # "sReturnColumns":[Ljava/lang/String;
    .end local v20    # "userIdString":Ljava/lang/String;
    :cond_3
    :goto_2
    return v5

    .line 3879
    .restart local v13    # "pkgNames":[Ljava/lang/String;
    .restart local v17    # "sColumns":[Ljava/lang/String;
    .restart local v18    # "sReturnColumns":[Ljava/lang/String;
    .restart local v20    # "userIdString":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "pkgNames":[Ljava/lang/String;
    check-cast v13, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v13    # "pkgNames":[Ljava/lang/String;
    goto/16 :goto_0

    .line 3883
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v19    # "sValues":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 3922
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v17    # "sColumns":[Ljava/lang/String;
    .end local v18    # "sReturnColumns":[Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    .end local v20    # "userIdString":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 3923
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_3

    .line 3924
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getAdminIdForCaller - Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I
    .locals 3
    .param p1, "cInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 531
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 532
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientCertificateManager.getCallingOrCurrentUserId() cInfo.mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 535
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 537
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    goto :goto_0
.end method

.method private getCertificateFromBytes([B)Ljava/security/cert/Certificate;
    .locals 6
    .param p1, "certBytes"    # [B

    .prologue
    .line 1392
    const/4 v0, 0x0

    .line 1394
    .local v0, "cert":Ljava/security/cert/Certificate;
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1395
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1399
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_0
    return-object v0

    .line 1396
    :catch_0
    move-exception v2

    .line 1397
    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCertificateFromBytes(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultPackageList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "getDefaultPackageList"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v5, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e8

    .line 921
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 923
    .local v1, "containerId":I
    const/4 v10, 0x2

    :try_start_0
    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v7, v10

    .line 925
    .local v7, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 928
    .local v9, "sValues":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "pkgName"

    aput-object v11, v8, v10

    .line 930
    .local v8, "sReturnColumns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v7, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 933
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 934
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cvList size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 936
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 937
    .local v6, "packageName":Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName in DB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_1
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 941
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "sColumns":[Ljava/lang/String;
    .end local v8    # "sReturnColumns":[Ljava/lang/String;
    .end local v9    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 942
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v5
.end method

.method private getDeleteSlotList(II)J
    .locals 12
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1071
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDeleteSlotList, adminUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", containerId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_0
    const-wide v4, 0xffffffffL

    .line 1074
    .local v4, "slotId":J
    new-array v1, v11, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v9

    const-string/jumbo v6, "uid"

    aput-object v6, v1, v10

    .line 1076
    .local v1, "sIdColumns":[Ljava/lang/String;
    new-array v3, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    .line 1079
    .local v3, "sIdValues":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v6, "slotId"

    aput-object v6, v2, v9

    .line 1080
    .local v2, "sIdReturnColumns":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ClientCertificateManagerTable"

    invoke-virtual {v6, v7, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1084
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1085
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cvList size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "slotId"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v4, v6

    .line 1087
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDeleteSlotList slotId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_1
    return-wide v4
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getErrorMessage(J)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # J

    .prologue
    .line 3860
    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_get_error_message(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFormattedPrivateKey(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 22
    .param p1, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .param p2, "rsaPublicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 1405
    const-wide/16 v6, 0x122

    .line 1406
    .local v6, "CKA_PUBLIC_EXPONENT":J
    const-wide/16 v4, 0x123

    .line 1407
    .local v4, "CKA_PRIVATE_EXPONENT":J
    const-wide/16 v2, 0x120

    .line 1409
    .local v2, "CKA_MODULUS":J
    const/4 v8, 0x3

    .line 1410
    .local v8, "NO_OF_TYPES":I
    const/4 v9, 0x4

    .line 1411
    .local v9, "TYPE_SIZE_IN_BYTES":I
    const/4 v10, 0x4

    .line 1412
    .local v10, "VALUE_LEN_SIZE_IN_BYTES":I
    const/4 v13, 0x0

    .line 1414
    .local v13, "output":[B
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v14, v13

    .line 1446
    .end local v13    # "output":[B
    .local v14, "output":[B
    :goto_0
    return-object v14

    .line 1419
    .end local v14    # "output":[B
    .restart local v13    # "output":[B
    :cond_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->trimByteArray([B)[B

    move-result-object v12

    .line 1420
    .local v12, "mod":[B
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->trimByteArray([B)[B

    move-result-object v17

    .line 1421
    .local v17, "pExp":[B
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->trimByteArray([B)[B

    move-result-object v18

    .line 1423
    .local v18, "pubExp":[B
    array-length v0, v12

    move/from16 v19, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v16, v19, 0x18

    .line 1424
    .local v16, "outputLength":I
    sget-boolean v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v19, :cond_2

    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Output Length = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_2
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 1427
    .local v15, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v19, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1429
    const/16 v19, 0x120

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1430
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1431
    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1433
    const/16 v19, 0x122

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1434
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1435
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1437
    const/16 v19, 0x123

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1438
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1439
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1441
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .end local v12    # "mod":[B
    .end local v15    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v16    # "outputLength":I
    .end local v17    # "pExp":[B
    .end local v18    # "pubExp":[B
    :goto_1
    move-object v14, v13

    .line 1446
    .end local v13    # "output":[B
    .restart local v14    # "output":[B
    goto/16 :goto_0

    .line 1442
    .end local v14    # "output":[B
    .restart local v13    # "output":[B
    :catch_0
    move-exception v11

    .line 1443
    .local v11, "e":Ljava/lang/Exception;
    sget-object v19, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v20, "Unable to format private key for ccm"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1444
    const/4 v13, 0x0

    goto :goto_1
.end method

.method private getMUMContainerOwnerUid(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 522
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 523
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v0

    .line 525
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    goto :goto_0
.end method

.method private getPackageUid(ILjava/lang/String;)I
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 3350
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 3351
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getPackageUid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    :cond_0
    const/4 v4, -0x1

    .line 3354
    .local v4, "uid":I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3356
    if-nez p2, :cond_2

    .line 3357
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    .line 3358
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getPackageUid - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    :cond_1
    :goto_0
    return v5

    .line 3362
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v6, :cond_3

    .line 3363
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getPackageUid -  Invalid Context "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3367
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3370
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3375
    .local v0, "appId":I
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 3377
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_4

    .line 3378
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPackageUid - User Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3389
    :cond_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "appId":I
    :goto_1
    move v5, v4

    .line 3392
    goto :goto_0

    .line 3382
    :catch_0
    move-exception v1

    .line 3383
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_5

    .line 3384
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPackageUid - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    :cond_5
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3386
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 3387
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "pKeyBytes"    # [B

    .prologue
    .line 1378
    const/4 v2, 0x0

    .line 1380
    .local v2, "pKey":Ljava/security/PrivateKey;
    :try_start_0
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 1381
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1387
    return-object v2

    .line 1382
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1384
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private getProfileOwnerUid(I)I
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 1172
    const/4 v0, -0x1

    .line 1174
    .local v0, "adminId":I
    :try_start_0
    const-string/jumbo v6, "device_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v4

    .line 1177
    .local v4, "dpmService":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v4, :cond_0

    .line 1178
    if-eqz p1, :cond_2

    .line 1180
    const/4 v2, 0x0

    .line 1181
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-interface {v4, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1182
    if-eqz v2, :cond_1

    .line 1184
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v1

    .line 1185
    .local v1, "compId":I
    move v0, v1

    .line 1186
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getProfileOwnerUid() componentName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    .end local v1    # "compId":I
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_0
    :goto_0
    return v0

    .line 1190
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_1
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getProfileOwnerUid() componentName is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1202
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :catch_0
    move-exception v5

    .line 1203
    .local v5, "er":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getProfileOwnerUid"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1194
    .end local v5    # "er":Landroid/os/RemoteException;
    .restart local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v3

    .line 1195
    .local v3, "deviceOwnerPackage":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1196
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1197
    .restart local v1    # "compId":I
    move v0, v1

    goto :goto_0
.end method

.method private getSlotCount()I
    .locals 5

    .prologue
    .line 3776
    const/4 v1, 0x0

    .line 3780
    .local v1, "slotCount":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ClientCertificateManagerTable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3786
    :goto_0
    return v1

    .line 3782
    :catch_0
    move-exception v0

    .line 3783
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getValidString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3409
    if-nez p1, :cond_1

    .line 3414
    :cond_0
    :goto_0
    return-object v1

    .line 3409
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p1

    goto :goto_0

    .line 3411
    :catch_0
    move-exception v0

    .line 3412
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getWrappedPin([B)[B
    .locals 5
    .param p1, "hashedPin"    # [B

    .prologue
    .line 3458
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 3459
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getWrappedPin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    :cond_0
    const/4 v1, 0x0

    .line 3463
    .local v1, "wrappedPin":[B
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->loadTui()I

    move-result v3

    if-gez v3, :cond_1

    move-object v2, v1

    .line 3472
    .end local v1    # "wrappedPin":[B
    .local v2, "wrappedPin":[B
    :goto_0
    return-object v2

    .line 3466
    .end local v2    # "wrappedPin":[B
    .restart local v1    # "wrappedPin":[B
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    const-string/jumbo v4, "tz_ccm"

    invoke-interface {v3, v4, p1}, Landroid/service/tima/ITimaService;->tuiDecryptPinHash(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 3472
    .end local v1    # "wrappedPin":[B
    .restart local v2    # "wrappedPin":[B
    goto :goto_0

    .line 3468
    .end local v2    # "wrappedPin":[B
    .restart local v1    # "wrappedPin":[B
    :catch_0
    move-exception v0

    .line 3469
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "getWrappedPin - tuiDecryptPinHash failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_default_cert_alias()Ljava/lang/String;
.end method

.method private handleCCMBuildUpdate()V
    .locals 5

    .prologue
    .line 229
    :try_start_0
    const-string/jumbo v3, "ro.build.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.ccm.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "oldBuild":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 236
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 237
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleCCMBuildUpdate - updated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    const-string/jumbo v3, "persist.sys.ccm.date"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->addExemptList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "currentBuild":Ljava/lang/String;
    .end local v2    # "oldBuild":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initParams()V
    .locals 3

    .prologue
    .line 4195
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 4196
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "TIMA3: in initParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 4199
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 4200
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initParams - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    :cond_1
    :goto_0
    return-void

    .line 4204
    :cond_2
    const/16 v0, 0x3f2

    const/16 v1, 0x3e8

    const v2, 0x186a0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->init_params(III)J

    goto :goto_0
.end method

.method static native init_params(III)J
.end method

.method private insertOrUpdateCCMProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;
    .param p3, "slotId"    # J

    .prologue
    .line 1918
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_0

    .line 1919
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "in insertOrUpdateCCMProfileInternal"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_0
    if-nez p1, :cond_3

    .line 1921
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "cxtInfo is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_1
    const/4 v8, 0x0

    .line 2020
    :cond_2
    :goto_0
    return v8

    .line 1925
    :cond_3
    const/4 v8, 0x1

    .line 1926
    .local v8, "ret":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1928
    .local v11, "userId":I
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_4

    .line 1929
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AdminId - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ContainerId -  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " UserId - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " whiteListAllPackages - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_4
    const/4 v12, 0x2

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v9, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "uid"

    aput-object v13, v9, v12

    .line 1935
    .local v9, "sColumns":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1936
    .local v1, "adminId":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1937
    .local v2, "contId":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v10, v12

    const/4 v12, 0x1

    aput-object v2, v10, v12

    .line 1939
    .local v10, "sValues":[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1944
    :try_start_0
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    if-eqz v12, :cond_7

    .line 1946
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1947
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1948
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1949
    const-string v12, "accessType"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    sget-object v12, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v12, v13, :cond_6

    .line 1952
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    if-eqz v12, :cond_5

    .line 1953
    const-string/jumbo v12, "loginRetry"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1955
    const-string/jumbo v12, "loginExpiration"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1963
    :cond_5
    :goto_1
    const-string/jumbo v12, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1964
    const-string v12, "allowAllPkgs"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1966
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1967
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1968
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1970
    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v8

    .line 1972
    const/4 v12, 0x1

    if-eq v12, v8, :cond_2

    .line 1973
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_2

    .line 1974
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "insertOrUpdateCCMProfileInternal whiteListAllPackages - DB operation failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2014
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 2015
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_2

    .line 2016
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "insertOrUpdateCCMProfileInternal - Exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1959
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cv":Landroid/content/ContentValues;
    :cond_6
    :try_start_1
    const-string/jumbo v12, "loginRetry"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1960
    const-string/jumbo v12, "loginExpiration"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1979
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_7
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1980
    .local v7, "pkg":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1981
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1982
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1983
    const-string v12, "accessType"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    sget-object v12, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v12, v13, :cond_b

    .line 1986
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    if-eqz v12, :cond_9

    .line 1987
    const-string/jumbo v12, "loginRetry"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1989
    const-string/jumbo v12, "loginExpiration"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1996
    :cond_9
    :goto_2
    const-string/jumbo v12, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1997
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v3, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2000
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2001
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2002
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v4, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "ClientCertificateManagerTable"

    invoke-virtual {v13, v14, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v13

    if-eq v12, v13, :cond_8

    .line 2006
    sget-boolean v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v12, :cond_a

    .line 2007
    sget-object v12, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "insertOrUpdateCCMProfileInternal packages - DB operation failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_a
    const/4 v8, 0x0

    .line 2010
    goto/16 :goto_0

    .line 1993
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_b
    const-string/jumbo v12, "loginRetry"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1994
    const-string/jumbo v12, "loginExpiration"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "adminId"    # I
    .param p4, "userId"    # I
    .param p5, "isCSRRecord"    # Z

    .prologue
    .line 2168
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_0

    .line 2169
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "in insertOrUpdateCertificateProfileInternal"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :cond_0
    const/4 v13, 0x1

    .line 2172
    .local v13, "ret":Z
    const/4 v8, 0x0

    .line 2174
    .local v8, "keyStoreKeyChainInstall":Z
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 2175
    :cond_1
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_2

    .line 2176
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertOrUpdateCertificateProfileInternal - Invalid Arguments"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :cond_2
    const/16 v16, 0x0

    .line 2301
    :goto_0
    return v16

    .line 2181
    :cond_3
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "InstallerId - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ContainerId - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " allowAllPackages - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " AdminId - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " isCSRRecord - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    if-eqz p5, :cond_9

    const/4 v3, 0x1

    .line 2188
    .local v3, "csrIntValue":I
    :goto_1
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "adminUid"

    aput-object v17, v14, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "uid"

    aput-object v17, v14, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "installerId"

    aput-object v17, v14, v16

    const/16 v16, 0x3

    const-string v17, "alias"

    aput-object v17, v14, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "csr"

    aput-object v17, v14, v16

    .line 2191
    .local v14, "sColumns":[Ljava/lang/String;
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 2196
    .local v15, "sValues":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    const-string v17, "CCMCertTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    :cond_4
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v17, v0

    const-string/jumbo v18, "keystorekeychain"

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 2209
    const/4 v8, 0x1

    .line 2213
    :cond_5
    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    const/16 v16, 0x1

    move/from16 v0, v16

    move/from16 v1, p5

    if-ne v0, v1, :cond_a

    .line 2214
    :cond_6
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2215
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2216
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2217
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    const-string v16, "allowAllPkgs"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2219
    const-string v16, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2220
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2221
    const-string/jumbo v16, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2222
    const-string v16, "allowRawSigning"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2223
    if-eqz v8, :cond_7

    .line 2224
    const-string/jumbo v16, "pkgName"

    const-string/jumbo v17, "keystorekeychain"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    :cond_7
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2229
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2230
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2231
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2233
    const-string/jumbo v16, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2235
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    const-string v17, "CCMCertTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    :cond_8
    :goto_3
    move/from16 v16, v13

    .line 2301
    goto/16 :goto_0

    .line 2187
    .end local v3    # "csrIntValue":I
    .end local v14    # "sColumns":[Ljava/lang/String;
    .end local v15    # "sValues":[Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2198
    .restart local v3    # "csrIntValue":I
    .restart local v14    # "sColumns":[Ljava/lang/String;
    .restart local v15    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2199
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_4

    .line 2200
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "insertOrUpdateCertificateProfileInternal - Exception delete"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2237
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    :catch_1
    move-exception v6

    .line 2238
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 2239
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_8

    .line 2240
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "insertOrUpdateCertificateProfileInternal - Exception allowAllPackages"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2246
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    .line 2247
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_b

    .line 2248
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertOrUpdateCertificateProfileInternal - Invalid Package list"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_b
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 2254
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 2257
    .local v12, "pkgNames":[Ljava/lang/String;
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v9, :cond_d

    aget-object v11, v2, v7

    .line 2258
    .local v11, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2257
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2260
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v12    # "pkgNames":[Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 2261
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2264
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2265
    .local v10, "pkg":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2266
    .restart local v4    # "cv":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2267
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2268
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    const-string/jumbo v16, "pkgName"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-string v16, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2271
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2272
    const-string v16, "allowRawSigning"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2274
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2275
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2276
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2277
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const-string/jumbo v16, "pkgName"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2281
    const-string/jumbo v16, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2283
    const/16 v16, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "CCMCertTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    .line 2285
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_f

    .line 2286
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertOrUpdateCertificateProfileInternal - DB operation failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2288
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 2291
    :catch_3
    move-exception v6

    .line 2292
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 2293
    sget-boolean v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v16, :cond_e

    .line 2294
    sget-object v16, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "insertOrUpdateCertificateProfileInternal - Exception"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private isCCMDefaultCertStore(I)Z
    .locals 11
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4343
    const/4 v5, 0x0

    .line 4344
    .local v5, "ret":Z
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 4345
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "in isCCMDefaultCertStore useId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    :cond_0
    const/4 v8, 0x1

    :try_start_0
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "enabled"

    aput-object v9, v0, v8

    .line 4353
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4354
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4356
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "CCMDefaultPolicy"

    invoke-virtual {v8, v9, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 4359
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4360
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 4361
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_1

    .line 4362
    const-string/jumbo v8, "enabled"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v8, v6, :cond_3

    move v5, v6

    .line 4372
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_0
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 4373
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore returning - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    :cond_2
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3
    move v5, v7

    .line 4362
    goto :goto_0

    .line 4366
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v3

    .line 4367
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private markUserAsCCMProvisioned(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3576
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3577
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    .line 3578
    .local v1, "mUms":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserCCMProvisioned(I)V

    .line 3579
    return-void
.end method

.method private provisionUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3562
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3563
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3564
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v1, "Error making CCM default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    :cond_0
    :goto_0
    return-void

    .line 3567
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    .line 3568
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 3569
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCCMDefaultCertStore says: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->markUserAsCCMProvisioned(I)V

    goto :goto_0
.end method

.method private registerPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3708
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3709
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3710
    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/content/Context;II)V

    .line 3711
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3714
    .end local v0    # "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    :cond_0
    return-void
.end method

.method private resetDefaultCCMProfile(II)V
    .locals 7
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 1094
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "resetDefaultCCMProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDeleteSlotList(II)J

    move-result-wide v2

    .line 1096
    .local v2, "slotId":J
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 1097
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "reset : INVALID_SLOT_ID"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_1
    :goto_0
    return-void

    .line 1101
    :cond_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->existDefaultProfile(J)Z

    move-result v0

    .line 1102
    .local v0, "exist":Z
    if-nez v0, :cond_3

    .line 1103
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not related with default profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1106
    :cond_3
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is related with default profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteDefaultCCMProfile(J)V

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setDefaultCCMProfile()Z

    move-result v1

    .line 1111
    .local v1, "set":Z
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDefaultCCMProfile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCCMAsDefaultCertStore(IZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4384
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 4385
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in setCCMAsDefaultCertStore userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4388
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 4389
    const-string/jumbo v3, "enabled"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4393
    :goto_0
    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4394
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMDefaultPolicy"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 4399
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_1
    return v2

    .line 4391
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    const-string/jumbo v3, "enabled"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4396
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 4397
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCCMAsDefaultCertStore() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setCCMProfileDefaultForContainer(I)Z
    .locals 14
    .param p1, "containerId"    # I

    .prologue
    .line 1212
    const/4 v8, 0x1

    .line 1213
    .local v8, "ret":Z
    const-wide/16 v10, 0x0

    .line 1214
    .local v10, "slotId":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1215
    .local v1, "callerUID":I
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 1216
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "in setCCMProfileDefaultForContainer containerId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v9, :cond_2

    .line 1219
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 1220
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setCCMProfileDefaultForContainer - TIMA version does not include CCM"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_1
    const/4 v8, 0x0

    .line 1304
    .end local v8    # "ret":Z
    :goto_0
    return v8

    .line 1226
    .restart local v8    # "ret":Z
    :cond_2
    new-instance v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 1227
    .local v4, "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-object v9, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iput-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 1228
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    .line 1231
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v7

    .line 1233
    .local v7, "mumContainerOwnerUid":I
    invoke-static {p1, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1235
    .local v0, "adminId":I
    iget-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v9

    const/4 v12, 0x0

    invoke-static {v1, p1, v9, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v10

    .line 1238
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_3

    .line 1239
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setCCMProfileDefaultForContainer - slot Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Owner Admin Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_3
    const-wide v12, 0xffffffffL

    cmp-long v9, v12, v10

    if-nez v9, :cond_5

    .line 1243
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_4

    .line 1244
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setCCMProfileDefaultForContainer - native create_slot failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 1251
    :cond_5
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1252
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1253
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1254
    const-string v9, "accessType"

    iget-object v12, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string/jumbo v9, "slotId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1257
    const-string v9, "allowAllPkgs"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1260
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1261
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1263
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ClientCertificateManagerTable"

    invoke-virtual {v9, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1265
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_6

    .line 1266
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setCCMProfileDefaultForContainer - DB operation failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_6
    invoke-static {v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1269
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1273
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 1274
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1275
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 1276
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1278
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    :cond_7
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v9, v1, p1, v12, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 1282
    const/4 v6, -0x1

    .line 1284
    .local v6, "emailUid":I
    const-string v9, "com.samsung.android.email.provider"

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v6

    .line 1285
    const/4 v9, -0x1

    if-eq v6, v9, :cond_9

    .line 1286
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v1, p1, v6, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 1298
    :cond_8
    :goto_1
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v9

    iput v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 1300
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 1302
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, p1, v9, v12, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    goto/16 :goto_0

    .line 1288
    :cond_9
    const-string v9, "com.samsung.android.email.sync"

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v6

    .line 1289
    const/4 v9, -0x1

    if-eq v6, v9, :cond_a

    .line 1290
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v1, p1, v6, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_1

    .line 1292
    :cond_a
    const-string v9, "com.android.exchange"

    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v6

    .line 1293
    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    .line 1294
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v1, p1, v6, v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_1
.end method

.method private setupIntentFilters()V
    .locals 3

    .prologue
    .line 3396
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3397
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "in setupIntentFilters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3399
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3400
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3401
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3402
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3403
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3404
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3405
    return-void
.end method

.method private trimByteArray([B)[B
    .locals 4
    .param p1, "inBytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1449
    if-nez p1, :cond_0

    .line 1450
    const/4 v0, 0x0

    .line 1458
    :goto_0
    return-object v0

    .line 1453
    :cond_0
    aget-byte v1, p1, v3

    if-nez v1, :cond_1

    .line 1454
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [B

    .line 1455
    .local v0, "outBytes":[B
    const/4 v1, 0x1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .end local v0    # "outBytes":[B
    :cond_1
    move-object v0, p1

    .line 1458
    goto :goto_0
.end method

.method private unloadTui()Z
    .locals 3

    .prologue
    .line 3430
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3431
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unloadTUI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->unloadTui()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3439
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 3436
    :catch_0
    move-exception v0

    .line 3437
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterPersonaObserver(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 3717
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    .line 3719
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    if-eqz v0, :cond_0

    .line 3720
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->unregisterPersonaObserver()V

    .line 3721
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    :cond_0
    return-void
.end method

.method private updateLockStatus(IZZZ)Z
    .locals 11
    .param p1, "userId"    # I
    .param p2, "isContainerClbk"    # Z
    .param p3, "lock"    # Z
    .param p4, "regForDefCert"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3794
    const/4 v2, 0x0

    .line 3795
    .local v2, "isLocked":Z
    const/4 v4, 0x0

    .line 3797
    .local v4, "rowCount":I
    iget-boolean v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v9, :cond_1

    .line 3798
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 3799
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateLockStatus - TIMA version does not include CCM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    :cond_0
    :goto_0
    return v8

    .line 3807
    :cond_1
    if-nez p4, :cond_2

    .line 3808
    :try_start_0
    iget v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-lez v9, :cond_0

    .line 3814
    :cond_2
    if-eqz p2, :cond_4

    .line 3819
    const/4 v8, 0x0

    invoke-static {v8, p1, p3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J

    .line 3855
    :cond_3
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 3822
    :cond_4
    const/4 v7, 0x0

    .line 3823
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 3824
    .local v6, "userManager":Landroid/os/UserManager;
    if-eqz v6, :cond_5

    .line 3825
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 3829
    :cond_5
    iget-object v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 3831
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 3838
    if-eqz v7, :cond_6

    .line 3840
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3841
    .local v5, "user":Landroid/content/pm/UserInfo;
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateLockStatus, user.id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    const/4 v8, 0x0

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3852
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "km":Landroid/app/KeyguardManager;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userManager":Landroid/os/UserManager;
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 3853
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3847
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "km":Landroid/app/KeyguardManager;
    .restart local v6    # "userManager":Landroid/os/UserManager;
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6
    :try_start_1
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "updateLockStatus, users null, so falling back to just userId"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    const/4 v8, 0x0

    invoke-static {v8, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_update_lock_status(IIZ)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private validateCallerContainer(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 4149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4150
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4152
    .local v0, "appId":I
    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_1

    .line 4153
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4155
    .local v2, "currentUserId":I
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4156
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCallerContainer - UserId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentUserId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callingUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    :cond_0
    if-eq v2, p2, :cond_1

    .line 4162
    const/16 v5, 0x64

    if-ge v2, v5, :cond_2

    if-le v2, v8, :cond_2

    .line 4163
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getProfileOwnerUid(I)I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 4164
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 4165
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v6, "ClientCertificateManager.validateCallerContainer() callingUid is owner of the profile"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    .end local v2    # "currentUserId":I
    :cond_1
    return v8

    .line 4170
    .restart local v2    # "currentUserId":I
    :cond_2
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 4171
    .local v3, "mumContainerOwnerUid":I
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v4

    .line 4173
    .local v4, "ownerUid":I
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 4174
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCallerContainer - mumContainerOwnerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ownerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", containerId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    :cond_3
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v3, v5, :cond_1

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v4, v5, :cond_1

    if-eq v3, v1, :cond_1

    .line 4186
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Caller does not belong to the container"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private validatePackageExemption(IILjava/lang/String;)Z
    .locals 12
    .param p1, "userId"    # I
    .param p2, "callerUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 4213
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 4214
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in validatePackageExemption"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4217
    :cond_0
    const/4 v6, 0x0

    .line 4218
    .local v6, "rowCount":I
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 4221
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4222
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 4223
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdminId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4226
    .local v2, "cvW":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4227
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4228
    const-string v9, "allowAllPkgs"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4230
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    invoke-virtual {v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9

    add-int/2addr v6, v9

    .line 4232
    goto :goto_0

    .line 4234
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v2    # "cvW":Landroid/content/ContentValues;
    :cond_2
    if-lez v6, :cond_4

    .line 4235
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_3

    .line 4236
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "All packages are allowed access to CCM token"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return v8

    .line 4241
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4242
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4243
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4244
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v9, v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 4251
    .local v7, "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    invoke-interface {v7, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eq v8, v9, :cond_3

    .line 4262
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    .line 4256
    :catch_0
    move-exception v4

    .line 4257
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_5

    .line 4258
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validatePackageExemption - Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private validatePackageList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    .prologue
    .line 1814
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 1815
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in validatePackageList"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1820
    .local v8, "userId":I
    const/4 v6, 0x0

    .line 1823
    .local v6, "rowCount":I
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1826
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1827
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 1828
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdminId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1831
    .local v2, "cvW":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1832
    const-string/jumbo v9, "uid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1833
    const-string v9, "allowAllPkgs"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1835
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    invoke-virtual {v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    add-int/2addr v6, v9

    .line 1837
    goto :goto_0

    .line 1838
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "cvW":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 1839
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_2

    .line 1840
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validatePackageList adminId - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    if-lez v6, :cond_4

    .line 1846
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_3

    .line 1847
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "All packages are allowed access to CCM token"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_3
    const/4 v9, 0x1

    .line 1889
    :goto_1
    return v9

    .line 1852
    :cond_4
    iget-boolean v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    if-eqz v9, :cond_6

    .line 1853
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_5

    .line 1854
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "CCM profile does not allow all packages"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 1859
    :cond_6
    iget-object v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v9, :cond_7

    iget-object v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1860
    :cond_7
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_8

    .line 1861
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v10, "Invalid package list"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 1867
    :cond_9
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1868
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1869
    const-string/jumbo v9, "uid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1870
    iget-object v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v9, v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 1878
    .local v7, "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_a

    iget-object v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-eqz v9, :cond_a

    .line 1880
    const/4 v9, 0x1

    goto :goto_1

    .line 1882
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v4

    .line 1883
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_a

    .line 1884
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validatePackageList tokenPkgList - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private verifyCertChain([B)[B
    .locals 4
    .param p1, "hashedPin"    # [B

    .prologue
    .line 3443
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3444
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyCertChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_0
    const/4 v1, 0x0

    .line 3449
    .local v1, "pin":[B
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v2, p1}, Landroid/service/tima/ITimaService;->verifyCertChain([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3454
    :goto_0
    return-object v1

    .line 3450
    :catch_0
    move-exception v0

    .line 3451
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyCertChain - failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private verifyCertificateInstaller(IIILjava/lang/String;Z)Z
    .locals 10
    .param p1, "callerUid"    # I
    .param p2, "adminId"    # I
    .param p3, "userId"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "isCsrRecord"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4068
    :try_start_0
    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4070
    .local v4, "uid":I
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 4071
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdminId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", UserId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CallerUid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Alias - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCsrRecord - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    :cond_0
    if-ne v4, p2, :cond_2

    .line 4105
    .end local v4    # "uid":I
    :cond_1
    :goto_0
    return v5

    .line 4080
    .restart local v4    # "uid":I
    :cond_2
    if-eqz p5, :cond_4

    move v0, v5

    .line 4082
    .local v0, "csrRecordIntValue":I
    :goto_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4083
    .local v1, "cvW":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4084
    const-string/jumbo v7, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4085
    const-string/jumbo v7, "installerId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4086
    const-string v7, "alias"

    invoke-virtual {v1, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    const-string/jumbo v7, "csr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4089
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 4092
    .local v3, "rowCount":I
    if-lez v3, :cond_3

    .line 4093
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 4094
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "verifyCertificateInstaller - Caller is certificate installer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4098
    .end local v0    # "csrRecordIntValue":I
    .end local v1    # "cvW":Landroid/content/ContentValues;
    .end local v3    # "rowCount":I
    .end local v4    # "uid":I
    :catch_0
    move-exception v2

    .line 4099
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_3

    .line 4100
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verifyCertificateInstaller - Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move v5, v6

    .line 4105
    goto :goto_0

    .restart local v4    # "uid":I
    :cond_4
    move v0, v6

    .line 4080
    goto :goto_1
.end method


# virtual methods
.method public SetTokenTUIPasswd(II)I
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "minTUIPinLen"    # I

    .prologue
    .line 3489
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3490
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetTokenTUIPasswd - slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "minTUIPinLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->CCM_SetTokenTUIPasswd(II)I

    move-result v0

    .line 3496
    .local v0, "ret":I
    return v0
.end method

.method public addPackageToExemptList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3208
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3210
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 3211
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in addPackageToExemptList for cxtInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3215
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 3216
    :cond_1
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3217
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - Invalid input"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :cond_2
    :goto_0
    return v2

    .line 3221
    :cond_3
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 3222
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackageToExemptList packageName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3226
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_5

    .line 3227
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3228
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3233
    :cond_5
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3234
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3235
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - CCM is not enabled by admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3240
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3242
    .local v1, "userId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v4, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validatePackageExemption(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3244
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3245
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPackageToExemptList - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3250
    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 3252
    .local v0, "uid":I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_2

    .line 3253
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3, v4, v1, v0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    move v2, v3

    .line 3258
    goto/16 :goto_0
.end method

.method public deleteCCMProfile(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 849
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 850
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in deleteCCMProfile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 854
    if-nez p1, :cond_2

    .line 855
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 856
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCCMProfile - null cxtInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_1
    :goto_0
    return v1

    .line 860
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 862
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_3

    .line 863
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 864
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 869
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 871
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 872
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_4

    .line 873
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCCMProfile - CCM is set default for userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_4
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    .line 876
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z

    .line 877
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z

    .line 878
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z

    move v1, v2

    .line 879
    goto :goto_0

    .line 882
    :cond_5
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 883
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 884
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCCMProfile - CCM is not enabled by admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    :cond_6
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    move-result v3

    if-eq v2, v3, :cond_7

    .line 889
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_7

    .line 890
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in deleteCCMProfile - deleteCSRProfileUsingAdminId failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_7
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfileUsingAdminId(IIZ)Z

    move-result v3

    if-eq v2, v3, :cond_8

    .line 896
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 897
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in deleteCCMProfile - failed to delete certificates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 902
    :cond_8
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfileUsingAdminId(IIZ)Z

    move-result v3

    if-eq v2, v3, :cond_9

    .line 904
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 905
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in deleteCCMProfile - failed to delete profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 909
    :cond_9
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v1

    iput v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    move v1, v2

    .line 911
    goto/16 :goto_0
.end method

.method public deleteCSRProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;

    .prologue
    .line 3001
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3002
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCSRProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3006
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 3007
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 3008
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    :cond_1
    const/4 v0, 0x0

    .line 3065
    :goto_0
    return v0

    .line 3013
    :cond_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 3015
    :cond_3
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 3016
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 3020
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3021
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 3022
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 3026
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 3028
    .local v3, "userId":I
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 3029
    .local v2, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v2, :cond_9

    .line 3030
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_8

    .line 3031
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_8
    const/4 v0, 0x0

    goto :goto_0

    .line 3035
    :cond_9
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 3037
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_a

    .line 3038
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    .line 3043
    :cond_b
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    .line 3045
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_c

    .line 3046
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - native ccm_delete_csr_profile failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :cond_c
    const/4 v0, 0x0

    goto :goto_0

    .line 3052
    :cond_d
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "uid"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "alias"

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "installerId"

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "csr"

    aput-object v1, v7, v0

    .line 3055
    .local v7, "sColumns":[Ljava/lang/String;
    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object p2, v8, v0

    const/4 v0, 0x3

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 3059
    .local v8, "sValues":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "CCMCertTable"

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3065
    :cond_e
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3061
    :catch_0
    move-exception v6

    .line 3062
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_e

    .line 3063
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCSRProfile - Exception"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1653
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 1654
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCertificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1658
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1660
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1661
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1662
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_2
    :goto_0
    return v5

    .line 1666
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_4

    .line 1667
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1668
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1673
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1675
    .local v3, "userId":I
    const/16 v2, 0x3e8

    .line 1678
    .local v2, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1679
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 1680
    const/4 v0, -0x1

    if-ne v0, v2, :cond_5

    .line 1681
    const/16 v2, 0x3e8

    .line 1682
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_5

    .line 1683
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_5
    invoke-direct {p0, v2, v3, p2, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1688
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1689
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificate - alias doesn\'t exist: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1693
    :cond_6
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1695
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1696
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - verifyCertificateInstaller failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1701
    :cond_7
    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateUsingAdminId(IILjava/lang/String;)Z

    move-result v0

    if-eq v6, v0, :cond_8

    .line 1702
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1703
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - failed to delete certificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v5, v6

    .line 1707
    goto/16 :goto_0
.end method

.method public generateCSR(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "isTrustedBootRequired"    # Z

    .prologue
    const/4 v2, 0x0

    .line 353
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 354
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in generateCSR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 358
    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 361
    :cond_1
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 362
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateCSR - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2
    :goto_0
    return-object v2

    .line 366
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 368
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_4

    .line 369
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 370
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateCSR - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 376
    .local v1, "userId":I
    const/16 v0, 0x3e8

    .line 379
    .local v0, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 380
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 381
    const/4 v2, -0x1

    if-ne v2, v0, :cond_5

    .line 382
    const/16 v0, 0x3e8

    .line 383
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_5

    .line 384
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in generateCSR - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_5
    invoke-static {v0, v1, p5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_generate_csr(IILjava/lang/String;)[B

    move-result-object v2

    goto :goto_0
.end method

.method public generateCSRUsingTemplate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "challengePassword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 3071
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 3072
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "in generateCSRUsingTemplate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3077
    iget-boolean v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v8, :cond_2

    .line 3078
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3079
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - TIMA version does not include CCM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_1
    :goto_0
    return-object v7

    .line 3084
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x40

    if-le v8, v9, :cond_4

    .line 3090
    :cond_3
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3091
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - Invalid Arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3095
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3096
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3097
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - CCM is not enabled for caller"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3102
    :cond_5
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_6

    .line 3103
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generateCSRUsingTemplate - challengePassword is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_6
    const/4 v3, 0x0

    .line 3107
    .local v3, "challPwdBytes":[B
    const/4 v2, 0x0

    .line 3109
    .local v2, "buf":[B
    if-eqz p4, :cond_7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 3111
    :try_start_0
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3112
    .local v6, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v8, p4}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 3114
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v9, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v8, v9}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 3117
    .local v1, "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getEncoded()[B

    move-result-object v3

    .line 3119
    array-length v8, v3

    const/16 v9, 0x7f

    if-le v8, v9, :cond_8

    .line 3121
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3122
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - challenge password too long"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3139
    .end local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .end local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_0
    move-exception v4

    .line 3140
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_7

    .line 3141
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generateCSRUsingTemplate - Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3148
    .local v5, "userId":I
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 3149
    .local v0, "adminId":I
    const/4 v8, -0x1

    if-ne v8, v0, :cond_a

    .line 3150
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3151
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - failed to get admin Id"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3125
    .end local v0    # "adminId":I
    .end local v5    # "userId":I
    .restart local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .restart local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8
    :try_start_1
    array-length v8, v3

    if-gtz v8, :cond_9

    .line 3126
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 3127
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - challenge password length equal or less than 0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3131
    :cond_9
    array-length v8, v3

    add-int/lit8 v8, v8, 0x2

    new-array v2, v8, [B

    .line 3132
    const/4 v8, 0x0

    const/4 v9, 0x2

    array-length v10, v3

    invoke-static {v3, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3136
    const/4 v8, 0x0

    const/16 v9, -0x60

    aput-byte v9, v2, v8

    .line 3137
    const/4 v8, 0x1

    array-length v9, v3

    int-to-byte v9, v9

    aput-byte v9, v2, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3155
    .end local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .end local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v0    # "adminId":I
    .restart local v5    # "userId":I
    :cond_a
    invoke-static {v0, v5, p2, p3, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getAliasesForCaller(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3934
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 3935
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getAliasesForCaller"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3939
    if-nez p1, :cond_2

    .line 3940
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 3941
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAliasesForCaller - null cxtInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    :cond_1
    :goto_0
    return-object v0

    .line 3945
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v4, :cond_3

    .line 3946
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 3947
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAliasesForCaller - Invalid Context"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3951
    :cond_3
    const/4 v0, 0x0

    .line 3955
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 3956
    .local v3, "userId":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3957
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "uid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3958
    const-string/jumbo v4, "installerId"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3959
    const-string/jumbo v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3960
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    const-string v6, "alias"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3963
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "userId":I
    :catch_0
    move-exception v2

    .line 3964
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 3965
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAliasesForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3987
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 3988
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getAliasesForPackage"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3992
    if-eqz p2, :cond_1

    if-nez p1, :cond_3

    .line 3993
    :cond_1
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 3994
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAliasesForPackage - Invalid input parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    :cond_2
    :goto_0
    return-object v4

    .line 3998
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_4

    .line 3999
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 4000
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAliasesForPackage - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4005
    :cond_4
    const/4 v0, 0x0

    .line 4006
    .local v0, "aliasesList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 4007
    .local v1, "aliasesList2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4009
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4010
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 4011
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v7, " getAliasesForPackage - token access is not permitted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4016
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4018
    .local v5, "userId":I
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_6

    .line 4019
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " UserId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Package - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    :cond_6
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4024
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4025
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v2, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4027
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    const-string v8, "alias"

    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4039
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_7
    :goto_1
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4040
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4041
    const-string v6, "allowAllPkgs"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4042
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4043
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    const-string v8, "alias"

    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 4053
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_8
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4054
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_9

    .line 4055
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4057
    :cond_9
    if-eqz v1, :cond_2

    .line 4058
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 4030
    .end local v4    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 4031
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_7

    .line 4032
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4046
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 4047
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_8

    .line 4048
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAliasesForPackage - aliasesList2 Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getAliasesForWiFi()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4301
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_0

    .line 4302
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "in getAliasesForWiFi"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v5, :cond_3

    .line 4305
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_1

    .line 4306
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getAliasesForWiFi - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v4

    .line 4334
    :cond_2
    :goto_0
    return-object v0

    .line 4311
    :cond_3
    const/4 v0, 0x0

    .line 4315
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4316
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v5, "allowWiFi"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4317
    const-string v5, "allowRawSigning"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4318
    const-string/jumbo v5, "csr"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4319
    iget-object v5, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    const-string v7, "alias"

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4322
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 4323
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4324
    .local v3, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4325
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4326
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4328
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 4329
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v5, :cond_4

    .line 4330
    sget-object v5, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAliasesForWiFi - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v4

    .line 4331
    goto :goto_0
.end method

.method public getCCMProfile(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/ccm/CCMProfile;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x0

    .line 764
    new-instance v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v5}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 765
    .local v5, "profile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_0

    .line 766
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "in getCCMProfile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 770
    if-nez p1, :cond_2

    .line 771
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_1

    .line 772
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "getCCMProfile - null cxtInfo"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_1
    :goto_0
    return-object v10

    .line 776
    :cond_2
    iget-boolean v11, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v11, :cond_3

    .line 777
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_1

    .line 778
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "getCCMProfile - TIMA version does not include CCM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 783
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 784
    .local v9, "userId":I
    const/4 v11, 0x0

    invoke-direct {p0, p1, v9, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v1

    .line 786
    .local v1, "adminId":I
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_4

    .line 787
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AdminId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " UserId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_4
    const/4 v11, -0x1

    if-ne v11, v1, :cond_6

    .line 790
    sget-boolean v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v11, :cond_1

    .line 791
    sget-object v11, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "getCCMProfile - admin not found"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    .end local v1    # "adminId":I
    .end local v9    # "userId":I
    :catch_0
    move-exception v4

    .line 840
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 841
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_5

    .line 842
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCCMProfile - Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_1
    move-object v10, v5

    .line 844
    goto :goto_0

    .line 795
    .restart local v1    # "adminId":I
    .restart local v9    # "userId":I
    :cond_6
    const/4 v10, 0x2

    :try_start_1
    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v6, v10

    .line 797
    .local v6, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    .line 800
    .local v8, "sValues":[Ljava/lang/String;
    const/4 v10, 0x4

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "accessType"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "allowAllPkgs"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "loginRetry"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "loginExpiration"

    aput-object v11, v7, v10

    .line 805
    .local v7, "sReturnColumns":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v6, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 808
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 809
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "accessType"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "accessCntrlMethd":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-result-object v10

    iput-object v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 813
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "allowAllPkgs"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    .line 816
    sget-object v10, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iget-object v11, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v10, v11, :cond_7

    .line 817
    new-instance v10, Lcom/sec/enterprise/knox/ccm/TUIProperty;

    invoke-direct {v10}, Lcom/sec/enterprise/knox/ccm/TUIProperty;-><init>()V

    iput-object v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    .line 818
    iget-object v11, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v12, "loginRetry"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v11, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    .line 821
    iget-object v11, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v12, "loginExpiration"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v11, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    .line 826
    :cond_7
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 827
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    const-string/jumbo v12, "pkgName"

    invoke-virtual {v10, v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 833
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_5

    .line 834
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PackageList - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getCCMVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3320
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3321
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getCCMVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 3324
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 3325
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCCMVersion - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_1
    const/4 v0, 0x0

    .line 3329
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_ccm_version()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCertificateAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4549
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 4550
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getCertificateAliases"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4554
    if-nez p1, :cond_3

    .line 4555
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1

    .line 4556
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getCertificateAliases - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v5

    .line 4590
    :cond_2
    :goto_0
    return-object v0

    .line 4560
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_5

    .line 4561
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_4

    .line 4562
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getCertificateAliases - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v5

    .line 4564
    goto :goto_0

    .line 4567
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 4568
    .local v4, "userId":I
    const/4 v0, 0x0

    .line 4572
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4573
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4574
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4575
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    const-string v8, "alias"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4578
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 4579
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4580
    .local v3, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4581
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4582
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4584
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 4585
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_6

    .line 4586
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCertificateAliases - Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v0, v5

    .line 4587
    goto :goto_0
.end method

.method public getCertificateAliasesHavingPrivateKey(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4600
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 4601
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in getCertificateAliasesHavingPrivateKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4605
    if-nez p1, :cond_3

    .line 4606
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 4607
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v6

    .line 4650
    :cond_2
    :goto_0
    return-object v1

    .line 4612
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v7, :cond_5

    .line 4613
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_4

    .line 4614
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - TIMA version does not include CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v1, v6

    .line 4616
    goto :goto_0

    .line 4619
    :cond_5
    const/4 v0, 0x0

    .line 4620
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4621
    .local v5, "userId":I
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_6

    .line 4622
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCertificateAliasesHavingPrivateKey - userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    :cond_6
    :try_start_0
    invoke-static {v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_get_aliases_having_private_key(I)[Ljava/lang/String;

    move-result-object v3

    .line 4628
    .local v3, "tzAliases":[Ljava/lang/String;
    if-eqz v3, :cond_7

    array-length v7, v3

    if-nez v7, :cond_9

    .line 4629
    :cond_7
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_8

    .line 4630
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - native ccm_get_aliases_having_private_key returnd null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v1, v6

    .line 4632
    goto :goto_0

    .line 4635
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4636
    .end local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 4637
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 4638
    .local v4, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4639
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4640
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4642
    .end local v4    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 4643
    .end local v1    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "tzAliases":[Ljava/lang/String;
    .restart local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_a

    .line 4644
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCertificateAliasesHavingPrivateKey - Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v6

    .line 4647
    goto/16 :goto_0

    .line 4642
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getDefaultCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3334
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3335
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getDefaultCertificateAlias"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 3338
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 3339
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDefaultCertificateAlias - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_1
    const/4 v0, 0x0

    .line 3346
    :goto_0
    return-object v0

    .line 3344
    :cond_2
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->get_default_cert_alias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    .line 3346
    iget-object v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4502
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 4503
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getKeyChainMarkedAliases"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4505
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4507
    if-nez p1, :cond_2

    .line 4508
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 4509
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    :cond_1
    :goto_0
    return-object v0

    .line 4513
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_3

    .line 4514
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 4515
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4520
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 4521
    .local v3, "userId":I
    const/4 v0, 0x0

    .line 4524
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4525
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "uid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4526
    const-string/jumbo v4, "pkgName"

    const-string/jumbo v5, "keystorekeychain"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4528
    const-string/jumbo v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4529
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    const-string v6, "alias"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4532
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 4533
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - Alias list empty or null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4539
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_4
    :goto_1
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyChainMarkedAliases - Alias list :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4535
    :catch_0
    move-exception v2

    .line 4536
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 4537
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyChainMarkedAliases - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSlotIdForCaller(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 2630
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_0

    .line 2631
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "in getSlotIdForCaller"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    move/from16 v21, v0

    if-gtz v21, :cond_3

    .line 2637
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_1

    .line 2638
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "getSlotIdForCaller - CCM profile is not set"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_1
    const-wide/16 v18, -0x1

    .line 2743
    :cond_2
    :goto_0
    return-wide v18

    .line 2642
    :cond_3
    if-nez p1, :cond_5

    .line 2643
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_4

    .line 2644
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "getSlotIdForCaller - null cxtInfo"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :cond_4
    const-wide/16 v18, -0x1

    goto :goto_0

    .line 2648
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    .line 2649
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "getSlotIdForCaller - Invalid Context "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    const-wide/16 v18, -0x1

    goto :goto_0

    .line 2653
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2655
    const-wide/16 v18, -0x1

    .line 2661
    .local v18, "slotId":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 2663
    .local v5, "callingUid":I
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_7

    .line 2664
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller callingUid - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_7
    const/16 v21, 0x3e8

    move/from16 v0, v21

    if-ne v5, v0, :cond_10

    .line 2667
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 2668
    .local v20, "userId":I
    const/4 v14, 0x0

    .line 2670
    .local v14, "rowCount":I
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_8

    .line 2671
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller UserId - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", alias - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_8
    const/4 v10, 0x0

    .line 2678
    .local v10, "isDefaultCertificateAlias":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    .line 2679
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    .line 2682
    :cond_9
    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "Digital Signature"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 2685
    :cond_a
    const/4 v10, 0x1

    .line 2688
    :cond_b
    if-nez v10, :cond_d

    .line 2690
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2691
    .local v7, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v21, "uid"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2692
    const-string/jumbo v21, "csr"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2695
    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_c

    .line 2696
    const-string v21, "alias"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    :cond_c
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "CCMCertTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    add-int v14, v14, v21

    .line 2709
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    :cond_d
    :goto_1
    if-nez v10, :cond_e

    if-gtz v14, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_2

    .line 2711
    :cond_e
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    aput-object v22, v15, v21

    .line 2712
    .local v15, "sColumns":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v17, v21

    .line 2714
    .local v17, "sValues":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "slotId"

    aput-object v22, v16, v21

    .line 2715
    .local v16, "sReturnColumns":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2717
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "ClientCertificateManagerTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 2726
    :cond_f
    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_2

    .line 2727
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string/jumbo v22, "slotId"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto/16 :goto_0

    .line 2701
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "sColumns":[Ljava/lang/String;
    .end local v16    # "sReturnColumns":[Ljava/lang/String;
    .end local v17    # "sValues":[Ljava/lang/String;
    .restart local v7    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 2702
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_d

    .line 2703
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller - slotId Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2720
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15    # "sColumns":[Ljava/lang/String;
    .restart local v16    # "sReturnColumns":[Ljava/lang/String;
    .restart local v17    # "sValues":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 2721
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-boolean v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v21, :cond_f

    .line 2722
    sget-object v21, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller - retrieving slot Id Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2735
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "isDefaultCertificateAlias":Z
    .end local v14    # "rowCount":I
    .end local v15    # "sColumns":[Ljava/lang/String;
    .end local v16    # "sReturnColumns":[Ljava/lang/String;
    .end local v17    # "sValues":[Ljava/lang/String;
    .end local v20    # "userId":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 2737
    .local v13, "pkgNames":[Ljava/lang/String;
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v11, :cond_2

    aget-object v12, v4, v9

    .line 2738
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    .line 2739
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-gez v21, :cond_2

    .line 2737
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J
    .locals 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 2749
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_0

    .line 2750
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "in getSlotIdForPackage"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2754
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v14, :cond_3

    .line 2756
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_1

    .line 2757
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "getSlotIdForPackage - CCM profile is not set"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    :cond_1
    const-wide/16 v12, -0x1

    .line 2895
    :cond_2
    :goto_0
    return-wide v12

    .line 2761
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v14, :cond_5

    .line 2762
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_4

    .line 2763
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "getSlotIdForPackage - TIMA version does not include CCM"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_4
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 2768
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2770
    if-eqz p2, :cond_6

    if-nez p1, :cond_7

    .line 2771
    :cond_6
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "getSlotIdForPackage failed - Invalid arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 2775
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 2777
    .local v11, "userId":I
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 2778
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_8

    .line 2779
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v15, " getSlotIdForPackage - token access is not permitted"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :cond_8
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 2785
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    if-nez v14, :cond_a

    .line 2786
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getDefaultCertificateAlias()Ljava/lang/String;

    .line 2790
    :cond_a
    const/4 v6, 0x0

    .line 2791
    .local v6, "isDefaultCertificateAlias":Z
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    const-string v14, "Digital Signature"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 2795
    :cond_b
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v14

    if-nez v14, :cond_c

    .line 2796
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 2798
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const-string/jumbo v17, "knox_ccm_policy"

    const-string/jumbo v18, "getSlotIdForPackage"

    invoke-static/range {v14 .. v18}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_d

    .line 2801
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Security Exception Occurred while pid["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] with uid["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] trying to access methodName ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "getSlotIdForPackage"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] in ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "knox_ccm_policy"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] service"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2808
    .local v5, "e":Ljava/lang/SecurityException;
    throw v5

    .line 2813
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_d
    const/4 v6, 0x1

    .line 2816
    :cond_e
    const/4 v7, 0x0

    .line 2817
    .local v7, "rowCount":I
    const-wide/16 v12, -0x1

    .line 2819
    .local v12, "slotId":J
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_f

    .line 2820
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UserId - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " packageName - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " alias - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    :cond_f
    if-nez v6, :cond_14

    .line 2825
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2826
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v14, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2827
    const-string/jumbo v14, "pkgName"

    move-object/from16 v0, p2

    invoke-virtual {v4, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    const-string/jumbo v14, "csr"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2831
    if-eqz p3, :cond_10

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_10

    .line 2832
    const-string v14, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    :cond_10
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "CCMCertTable"

    invoke-virtual {v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    add-int/2addr v7, v14

    .line 2845
    :cond_11
    :goto_1
    if-nez v7, :cond_14

    .line 2846
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2847
    .local v3, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v14, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2848
    const-string v14, "allowAllPkgs"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2849
    const-string/jumbo v14, "csr"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2852
    if-eqz p3, :cond_12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_12

    .line 2853
    const-string v14, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v3, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    :cond_12
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "CCMCertTable"

    invoke-virtual {v14, v15, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    add-int/2addr v7, v14

    .line 2864
    :cond_13
    :goto_2
    if-lez v7, :cond_14

    .line 2865
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_14

    .line 2866
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "in getSlotIdForPackage - all packages are allowed access"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    .end local v3    # "cvW":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_14
    if-nez v6, :cond_15

    if-gtz v7, :cond_15

    if-eqz p3, :cond_15

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_2

    .line 2875
    :cond_15
    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "uid"

    aput-object v15, v8, v14

    .line 2876
    .local v8, "sColumns":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 2878
    .local v10, "sValues":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "slotId"

    aput-object v15, v9, v14

    .line 2879
    .local v9, "sReturnColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2881
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ClientCertificateManagerTable"

    invoke-virtual {v14, v15, v8, v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 2890
    :cond_16
    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_2

    .line 2891
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "slotId"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto/16 :goto_0

    .line 2837
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "sColumns":[Ljava/lang/String;
    .end local v9    # "sReturnColumns":[Ljava/lang/String;
    .end local v10    # "sValues":[Ljava/lang/String;
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 2838
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_11

    .line 2839
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getSlotIdForPackage - slotId Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2858
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cvW":Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    .line 2859
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_13

    .line 2860
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getSlotIdForPackage - allPackages Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2884
    .end local v3    # "cvW":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "sColumns":[Ljava/lang/String;
    .restart local v9    # "sReturnColumns":[Ljava/lang/String;
    .restart local v10    # "sValues":[Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 2885
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v14, :cond_16

    .line 2886
    sget-object v14, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getSlotIdForPackage - retrieving slot Id Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public insertOrUpdateCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;

    .prologue
    .line 1895
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 1896
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in insertOrUpdateCCMProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForCaller(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    .line 1901
    .local v0, "slotId":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v2, v0

    if-nez v2, :cond_2

    .line 1902
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 1903
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "insertOrUpdateCCMProfile - getSlotIdForCaller failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_1
    const/4 v2, 0x0

    .line 1911
    :goto_0
    return v2

    .line 1907
    :cond_2
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_3

    .line 1908
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertOrUpdateCCMProfile - slot Id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCCMProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z

    move-result v2

    goto :goto_0
.end method

.method public insertOrUpdateCertificateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    .prologue
    const/4 v5, 0x0

    .line 2113
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 2114
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCertificateProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2118
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 2120
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2121
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    :cond_2
    :goto_0
    return v5

    .line 2125
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_4

    .line 2126
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2127
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2131
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2132
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2133
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2138
    :cond_5
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2140
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2141
    .local v7, "pkg":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 2142
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2143
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - Invalid packageList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2149
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2151
    .local v4, "userId":I
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {p0, p1, v4, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v3

    .line 2152
    .local v3, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v3, :cond_8

    .line 2153
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 2154
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCertificateProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2158
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v5

    goto :goto_0
.end method

.method public installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "certBytes"    # [B
    .param p4, "privateKeyPassword"    # Ljava/lang/String;

    .prologue
    .line 1501
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 1502
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in installCertificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1506
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 1508
    :cond_1
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_2

    .line 1509
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_2
    const/4 v2, 0x0

    .line 1647
    :goto_0
    return v2

    .line 1513
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v2, :cond_5

    .line 1514
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_4

    .line 1515
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1520
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1521
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_6

    .line 1522
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - CCM is not enabled for caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 1527
    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v2, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1529
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1530
    .local v17, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 1531
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_9

    .line 1532
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - Invalid packageList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_9
    const/4 v2, 0x0

    goto :goto_0

    .line 1538
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1541
    .local v5, "userId":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v4

    .line 1543
    .local v4, "adminId":I
    const/4 v2, -0x1

    if-ne v2, v4, :cond_c

    .line 1544
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_b

    .line 1545
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in installCertificate - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1550
    :cond_c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1551
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1553
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_d

    .line 1554
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - verifyCertificateInstaller returned false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1579
    :cond_e
    :try_start_0
    new-instance v12, Lcom/android/server/enterprise/ccm/CertificateHandler;

    invoke-direct {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;-><init>()V

    .line 1580
    .local v12, "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v12, v0, v1}, Lcom/android/server/enterprise/ccm/CertificateHandler;->extractPkcs12([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1581
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_f

    .line 1582
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - pkcs12 certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_f
    invoke-virtual {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;->isPrivateKeyExists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1586
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_10

    .line 1587
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - certificate does not contain private key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1594
    :cond_11
    invoke-virtual {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getKeyAlgorithm()Ljava/lang/String;

    move-result-object v15

    .line 1595
    .local v15, "keyAlg":Ljava/lang/String;
    if-eqz v15, :cond_12

    const-string v2, "RSA"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1596
    :cond_12
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_13

    .line 1597
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installCertificate - certificate does not support key algorithm: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1603
    :cond_14
    invoke-virtual {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getPemCertificateChain()[B

    move-result-object v16

    .line 1604
    .local v16, "pemBytes":[B
    if-nez v16, :cond_16

    .line 1605
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_15

    .line 1606
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - failed to get certificate chain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1612
    :cond_16
    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getFormattedPrivateKey()[B

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    invoke-static/range {v4 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_18

    .line 1616
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_17

    .line 1617
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - native ccm_install_object failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1622
    :cond_18
    move-object/from16 p3, v16

    .line 1623
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1624
    const/16 p4, 0x0

    .line 1633
    .end local v15    # "keyAlg":Ljava/lang/String;
    .end local v16    # "pemBytes":[B
    :cond_19
    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    move-object/from16 v0, p2

    iget-boolean v7, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v4 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1c

    .line 1636
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1a

    .line 1637
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - native ccm_install_certificate failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1626
    .end local v12    # "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    :catch_0
    move-exception v13

    .line 1627
    .local v13, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1b

    .line 1628
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installCertificate - Exception"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1643
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v12    # "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    :cond_1c
    const/4 v2, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v3

    if-eq v2, v3, :cond_1d

    .line 1645
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1647
    :cond_1d
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public installKeyPair(Landroid/app/enterprise/ContextInfo;[B[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "privateKey"    # [B
    .param p3, "certBytes"    # [B
    .param p4, "pKeyAlias"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1310
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 1311
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installKeyPair() for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->doesCCMSupportKeyAlgorithm([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1315
    const/4 v3, 0x0

    .line 1374
    :goto_0
    return v3

    .line 1318
    :cond_1
    move-object/from16 v15, p2

    .line 1319
    .local v15, "pKeyBytes":[B
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "installKeyPair()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    .line 1326
    :try_start_0
    const-string v3, "USRPKEY_"

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1327
    .local v9, "alias":Ljava/lang/String;
    new-instance v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v5}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 1328
    .local v5, "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 1329
    iput-object v9, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 1330
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v12, "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "keystorekeychain"

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    if-eqz p5, :cond_2

    .line 1333
    move-object/from16 v0, p5

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    :cond_2
    iput-object v12, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 1336
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 1338
    if-eqz v15, :cond_5

    .line 1339
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;

    move-result-object v14

    .line 1340
    .local v14, "pKey":Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v10

    .line 1341
    .local v10, "cert":Ljava/security/cert/Certificate;
    if-nez v10, :cond_3

    .line 1342
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "cert is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v3, 0x0

    goto :goto_0

    .line 1345
    :cond_3
    const/16 v16, 0x0

    .line 1346
    .local v16, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_4

    .line 1347
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    .restart local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    :cond_4
    const/4 v6, 0x3

    check-cast v14, Ljava/security/interfaces/RSAPrivateKey;

    .end local v14    # "pKey":Ljava/security/PrivateKey;
    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getFormattedPrivateKey(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installObjectWithProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1357
    const/4 v3, 0x0

    goto :goto_0

    .line 1361
    .end local v10    # "cert":Ljava/security/cert/Certificate;
    .end local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1362
    .local v13, "outputStream":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1364
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 1365
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_6

    .line 1367
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1369
    .end local v5    # "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .end local v9    # "alias":Ljava/lang/String;
    .end local v12    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v11

    .line 1370
    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1371
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1374
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public installObject(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "objectType"    # I
    .param p7, "objectData"    # [B
    .param p8, "objectPassword"    # Ljava/lang/String;
    .param p9, "isTrustedBootRequired"    # Z

    .prologue
    .line 398
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 399
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObject"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 403
    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    if-nez p7, :cond_3

    .line 404
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 405
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - invalid input parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_2
    const/4 v0, -0x1

    .line 464
    :goto_0
    return v0

    .line 409
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 411
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_5

    .line 412
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 413
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    .line 417
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 420
    .local v3, "userId":I
    const/16 v2, 0x3e8

    .line 423
    .local v2, "adminId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 425
    const/4 v0, -0x1

    if-ne v0, v2, :cond_6

    .line 426
    const/16 v2, 0x3e8

    .line 427
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 428
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, p5, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 434
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 436
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_7

    .line 437
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_7
    const/4 v0, -0x1

    goto :goto_0

    .line 443
    :cond_8
    const-wide/16 v0, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    .line 445
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 446
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - native ccm_install_object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_9
    const/4 v0, -0x1

    goto :goto_0

    .line 451
    :cond_a
    new-instance v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v6}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 452
    .local v6, "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    iput-object p5, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    .line 457
    const/4 v0, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v1

    if-eq v0, v1, :cond_c

    .line 459
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    .line 460
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - failed to add DB entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_b
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0, v3, p5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    .line 462
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 464
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public installObjectWithProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;I[BLjava/lang/String;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "objectType"    # I
    .param p4, "objectData"    # [B
    .param p5, "objectPassword"    # Ljava/lang/String;

    .prologue
    .line 1725
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 1726
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1730
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1732
    :cond_1
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 1733
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_2
    const/4 v0, 0x0

    .line 1805
    :goto_0
    return v0

    .line 1737
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v0, :cond_5

    .line 1738
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_4

    .line 1739
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1744
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1745
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_6

    .line 1746
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 1752
    :cond_7
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1754
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1755
    .local v11, "pkg":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1756
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_9

    .line 1757
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - Invalid packageList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_9
    const/4 v0, 0x0

    goto :goto_0

    .line 1764
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1766
    .local v3, "userId":I
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 1768
    .local v2, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v2, :cond_c

    .line 1769
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_b

    .line 1770
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_b
    const/4 v0, 0x0

    goto :goto_0

    .line 1776
    :cond_c
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1777
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget-object v4, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1779
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_d

    .line 1780
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1786
    :cond_e
    const-wide/16 v0, 0x0

    iget-object v4, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    iget-boolean v8, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    iget-boolean v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_10

    .line 1789
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_f

    .line 1790
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - native ccm_install_object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1796
    :cond_10
    const/4 v0, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v2

    move v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v1

    if-eq v0, v1, :cond_12

    .line 1798
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_11

    .line 1799
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - failed to add DB entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_11
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget-object v1, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-static {v0, v3, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_certificate(IILjava/lang/String;)J

    .line 1802
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1805
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public installObjectWithType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "objectAlias"    # Ljava/lang/String;
    .param p3, "objectType"    # I
    .param p4, "objectData"    # [B
    .param p5, "objectPassword"    # Ljava/lang/String;

    .prologue
    .line 1713
    const/4 v0, 0x0

    return v0
.end method

.method public isAccessControlMethodPassword(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 4272
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 4273
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "in isAccessControlMethodPassword"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    :cond_0
    if-nez p1, :cond_2

    .line 4276
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 4277
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isAccessControlMethodPassword - null cxtInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    :cond_1
    :goto_0
    return v1

    .line 4282
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCCMProfile(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/ccm/CCMProfile;

    move-result-object v0

    .line 4284
    .local v0, "profile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    if-eqz v0, :cond_1

    .line 4285
    sget-object v2, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v2, v3, :cond_1

    .line 4286
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_3

    .line 4287
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAccessControlMethodPassword return - true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCCMEmptyForKeyChain(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4491
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 4492
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCCMPolicyEnabledByAdmin(I)Z
    .locals 7
    .param p1, "adminId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3164
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 3165
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in isCCMPolicyEnabledByAdmin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_2

    .line 3168
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_1

    .line 3169
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "isCCMPolicyEnabledByAdmin - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_1
    :goto_0
    return v3

    .line 3174
    :cond_2
    const/4 v2, 0x0

    .line 3176
    .local v2, "rowCount":I
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_3

    .line 3177
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCCMPolicyEnabledByAdmin - AdminId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3180
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3183
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 3192
    :cond_4
    :goto_1
    if-lez v2, :cond_1

    .line 3193
    const/4 v3, 0x1

    goto :goto_0

    .line 3185
    :catch_0
    move-exception v1

    .line 3186
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 3187
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCCMPolicyEnabledByAdmin - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 2449
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_0

    .line 2450
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "in isCCMPolicyEnabledForCaller"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2454
    iget v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v7, :cond_2

    .line 2456
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 2457
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForCaller - CCM profile is not set"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    :cond_1
    :goto_0
    return v6

    .line 2462
    :cond_2
    if-nez p1, :cond_3

    .line 2463
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 2464
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForCaller - null cxtInfo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2468
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    if-nez v7, :cond_4

    .line 2469
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForCaller - Invalid Context "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2473
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2475
    .local v1, "callingUid":I
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_5

    .line 2476
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCCMPolicyEnabledForCaller callingUid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_5
    const/16 v7, 0x3e8

    if-ne v1, v7, :cond_6

    .line 2479
    const/4 v6, 0x1

    goto :goto_0

    .line 2482
    :cond_6
    const/4 v6, 0x0

    .line 2483
    .local v6, "ret":Z
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 2485
    .local v5, "pkgNames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 2486
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    .line 2487
    if-eqz v6, :cond_8

    .line 2492
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_7
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_1

    .line 2493
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCCMPolicyEnabledForCaller returned - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2485
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2501
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_0

    .line 2502
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "in isCCMPolicyEnabledForPackage. packageName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_0
    if-nez p1, :cond_1

    .line 2505
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const/4 v10, 0x0

    .line 2625
    :goto_0
    return v10

    .line 2510
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2512
    const-string v10, "SecurityPolicy"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2513
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_2

    .line 2514
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "security policy must not be allowed to access CCM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 2520
    :cond_3
    if-eqz p2, :cond_5

    const-string v10, "com.android.exchange"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.android.email"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "com.samsung.android.email"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2523
    :cond_4
    new-instance v6, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, p1, v10}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;-><init>(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)V

    .line 2525
    .local v6, "emailPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->isAuthenticationEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2526
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v11, "SmartCardEmailPolicy is enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    const/4 v10, 0x0

    goto :goto_0

    .line 2530
    .end local v6    # "emailPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
    :cond_5
    if-eqz p2, :cond_7

    const-string v10, "com.android.browser"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.sec.android.app.sbrowser"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.chrome.deviceextras.samsung"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.sec.android.providers.downloads"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "com.android.providers.downloads"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2538
    :cond_6
    new-instance v2, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p1, v10}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;-><init>(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)V

    .line 2540
    .local v2, "browserPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->isAuthenticationEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2542
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v11, "SmartCardBrowserPolicy is enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2547
    .end local v2    # "browserPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
    :cond_7
    iget v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    if-gtz v10, :cond_9

    .line 2549
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_8

    .line 2550
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - CCM profile is not set"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2554
    :cond_9
    iget-boolean v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v10, :cond_b

    .line 2555
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_a

    .line 2556
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - TIMA version does not include CCM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2561
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 2563
    .local v9, "userId":I
    invoke-direct {p0, p1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validateCallerContainer(Landroid/app/enterprise/ContextInfo;I)Z

    .line 2565
    const/4 v8, 0x0

    .line 2566
    .local v8, "rowCount":I
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2570
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2571
    .local v0, "adminId":Ljava/lang/Long;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2572
    .local v3, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2573
    const-string v10, "adminUid"

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2574
    const-string v10, "allowAllPkgs"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2577
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    add-int/2addr v8, v10

    .line 2585
    :cond_d
    :goto_2
    if-lez v8, :cond_c

    .line 2586
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_c

    .line 2587
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - all packages are allowed access"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2579
    :catch_0
    move-exception v5

    .line 2580
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_d

    .line 2581
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCCMPolicyEnabledForPackage - allPackages Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2592
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v3    # "cvW":Landroid/content/ContentValues;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_e
    if-nez v8, :cond_12

    .line 2593
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2594
    if-nez p2, :cond_f

    .line 2595
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2600
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2601
    .restart local v0    # "adminId":Ljava/lang/Long;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_11

    .line 2602
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AdminId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UserId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " packageName - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    :cond_11
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2606
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2607
    const-string v10, "adminUid"

    invoke-virtual {v4, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2608
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v4, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    add-int/2addr v8, v10

    goto :goto_3

    .line 2613
    :catch_1
    move-exception v5

    .line 2614
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v10, :cond_10

    .line 2615
    sget-object v10, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCCMPolicyEnabledForPackage - adminId Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2621
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_12
    if-lez v8, :cond_13

    .line 2622
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 2625
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public keychainMarkedReset(Landroid/app/enterprise/ContextInfo;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 4424
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 4425
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "in keychainMarkedReset"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_3

    .line 4430
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_1

    .line 4431
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - Cannot clear credentials, not a system app"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v3, v7

    .line 4480
    :cond_2
    :goto_0
    return v3

    .line 4435
    :cond_3
    if-nez p1, :cond_5

    .line 4436
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_4

    .line 4437
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - Invalid Arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v3, v7

    .line 4438
    goto :goto_0

    .line 4441
    :cond_5
    iget-boolean v8, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v8, :cond_7

    .line 4442
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_6

    .line 4443
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - TIMA version does not include CCM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v3, v7

    .line 4445
    goto :goto_0

    .line 4448
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 4449
    .local v6, "userId":I
    const/4 v3, 0x1

    .line 4450
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 4454
    .local v1, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 4455
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 4456
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4459
    .local v0, "aliases":[Ljava/lang/String;
    const-wide/16 v8, 0x0

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_alias_list(I[Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    .line 4460
    sget-boolean v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v8, :cond_8

    .line 4461
    sget-object v8, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - native ccm_delete_alias_list failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v3, v7

    .line 4463
    goto :goto_0

    .line 4467
    :cond_9
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "uid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "pkgName"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "csr"

    aput-object v8, v4, v7

    .line 4469
    .local v4, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "keystorekeychain"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 4471
    .local v5, "sValues":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4474
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v4    # "sColumns":[Ljava/lang/String;
    .end local v5    # "sValues":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 4475
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v7, :cond_a

    .line 4476
    sget-object v7, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "keychainMarkedReset - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 3645
    sget-boolean v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 3646
    sget-object v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminAdded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    :cond_0
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 3661
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_0

    .line 3662
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3665
    .local v1, "userId":I
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfileUsingAdminId(IIZ)Z

    .line 3666
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfileUsingAdminId(IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3671
    :cond_1
    :goto_0
    return-void

    .line 3667
    :catch_0
    move-exception v0

    .line 3668
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v2, :cond_1

    .line 3669
    sget-object v2, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 4
    .param p1, "adminId"    # I

    .prologue
    .line 3652
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3653
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreAdminRemoval - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3656
    .local v0, "userId":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z

    .line 3657
    return-void
.end method

.method public registerForDefaultCertificate(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "registrationPassword"    # Ljava/lang/String;
    .param p4, "oldPassword"    # Ljava/lang/String;
    .param p5, "isTrustedBootRequired"    # Z

    .prologue
    const/4 v3, -0x1

    .line 473
    const/4 v2, -0x1

    .line 474
    .local v2, "ret":I
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 475
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in registerForDefaultCertificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 479
    if-eqz p1, :cond_1

    if-nez p3, :cond_3

    .line 480
    :cond_1
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 481
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerForDefaultCertificate - invalid input parameters"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2
    :goto_0
    return v3

    .line 486
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 488
    iget-boolean v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_4

    .line 489
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 490
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerForDefaultCertificate - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    :cond_4
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_5

    .line 496
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in registerForDefaultCertificate - calling UID is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_5
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 501
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_7

    .line 503
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_6

    .line 504
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string v4, "Called TIMA service registerForDefaultCertificate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_6
    iget-object v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/service/tima/ITimaService;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 511
    .local v0, "currentUserId":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "currentUserId":I
    :cond_7
    :goto_1
    move v3, v2

    .line 517
    goto :goto_0

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public removePackageFromExemptList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3263
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_0

    .line 3264
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "in removePackageFromExemptList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3268
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3270
    if-eqz p1, :cond_1

    if-nez p2, :cond_3

    .line 3271
    :cond_1
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3272
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromExemptList - Invalid input"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_2
    :goto_0
    return v2

    .line 3276
    :cond_3
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_4

    .line 3277
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageFromExemptList packageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3282
    iget-boolean v3, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v3, :cond_5

    .line 3283
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3284
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromExemptList - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3289
    :cond_5
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledByAdmin(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3290
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3291
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromExemptList - CCM is not enabled by admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3296
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3298
    .local v1, "userId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->validatePackageExemption(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3300
    sget-boolean v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v3, :cond_2

    .line 3301
    sget-object v3, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageFromExemptList - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3306
    :cond_7
    invoke-direct {p0, v1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 3308
    .local v0, "uid":I
    const/4 v3, -0x1

    if-eq v3, v0, :cond_2

    .line 3309
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2, v3, v1, v0, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 3315
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public setCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z
    .locals 33
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;

    .prologue
    .line 542
    const/16 v24, 0x1

    .line 543
    .local v24, "ret":Z
    const-wide/16 v26, 0x0

    .line 544
    .local v26, "slotId":J
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_0

    .line 545
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "in setCCMProfile cxtInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 549
    if-eqz p1, :cond_1

    if-nez p2, :cond_4

    .line 550
    :cond_1
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_2

    .line 551
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_2
    const/16 v24, 0x0

    .line 759
    .end local v24    # "ret":Z
    :cond_3
    :goto_0
    return v24

    .line 555
    .restart local v24    # "ret":Z
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 557
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v6, :cond_6

    .line 558
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_5

    .line 559
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_5
    const/16 v24, 0x0

    goto :goto_0

    .line 563
    :cond_6
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 564
    .local v12, "accessControlMethod":Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;
    const/16 v19, 0x0

    .line 566
    .local v19, "password":Ljava/lang/String;
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_8

    .line 567
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 568
    if-nez v19, :cond_8

    .line 569
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_7

    .line 570
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid Password Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_7
    const/16 v24, 0x0

    goto :goto_0

    .line 576
    :cond_8
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_10

    .line 578
    const/16 v30, 0x0

    .line 579
    .local v30, "tuiVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v6, :cond_9

    .line 581
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->getTuiVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v30

    .line 587
    :cond_9
    :goto_1
    if-nez v30, :cond_b

    .line 588
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_a

    .line 589
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - TUI is not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "TUI is not supported"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 582
    :catch_0
    move-exception v14

    .line 583
    .local v14, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 594
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_b
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    if-nez v6, :cond_d

    .line 595
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_c

    .line 596
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 601
    :cond_d
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    if-ltz v6, :cond_e

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    if-nez v6, :cond_10

    .line 603
    :cond_e
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_f

    .line 604
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_f
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 612
    .end local v30    # "tuiVersion":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    if-eqz v6, :cond_13

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 614
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 615
    .local v21, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    .line 616
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_12

    .line 617
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid packageList"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 623
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v21    # "pkg":Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    if-nez v6, :cond_16

    .line 628
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    if-nez v6, :cond_15

    .line 629
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_14

    .line 630
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - null packageList"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_14
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 635
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v23

    .line 638
    .local v23, "pkgNames":[Ljava/lang/String;
    move-object/from16 v13, v23

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_16

    aget-object v22, v13, v15

    .line 639
    .local v22, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 638
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 641
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v22    # "pkgName":Ljava/lang/String;
    .end local v23    # "pkgNames":[Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 642
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_16
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v31

    .line 648
    .local v31, "userId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v7

    move/from16 v0, v31

    move-object/from16 v1, v19

    invoke-static {v6, v0, v7, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v26

    .line 651
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_17

    .line 652
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCCMProfile - slot Id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_17
    const-wide v6, 0xffffffffL

    cmp-long v6, v6, v26

    if-nez v6, :cond_19

    .line 655
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_18

    .line 656
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - native create_slot failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_18
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 660
    :cond_19
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_20

    .line 662
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->verifyCertChain([B)[B

    move-result-object v11

    .line 663
    .local v11, "wrappedPin":[B
    if-nez v11, :cond_1b

    .line 664
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1a

    .line 665
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1a
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 669
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 670
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 672
    :cond_1b
    const/4 v10, 0x0

    .line 674
    .local v10, "imageId":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    if-eqz v6, :cond_1e

    .line 676
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mTimaService:Landroid/service/tima/ITimaService;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v7, v7, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v6, v7, v8, v9, v0}, Landroid/service/tima/ITimaService;->tuiInitSecret([BIILjava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1d

    .line 679
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1c

    .line 680
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_1c
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 684
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 685
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 687
    :cond_1d
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 688
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "tuiInitSecret success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 699
    :cond_1e
    :goto_3
    move-wide/from16 v0, v26

    long-to-int v7, v0

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v8, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v9, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setTokenTUIProperty(IIILjava/lang/String;[B)I

    move-result v25

    .line 702
    .local v25, "tuiRet":I
    if-eqz v25, :cond_20

    .line 703
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_1f

    .line 704
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - setTokenTUIProperty() returns an error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_1f
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 708
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 709
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 690
    .end local v25    # "tuiRet":I
    :catch_2
    move-exception v14

    .line 691
    .local v14, "e":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "exception - tuiInitSecret failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 713
    .end local v10    # "imageId":Ljava/lang/String;
    .end local v11    # "wrappedPin":[B
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_20
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCCMProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z

    move-result v7

    if-eq v6, v7, :cond_21

    .line 714
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 715
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 716
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 719
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 721
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 724
    const/16 v17, 0x0

    .line 725
    .local v17, "isPersona":Z
    const/16 v16, 0x1

    .line 726
    .local v16, "isLocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 728
    .local v28, "token":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 729
    const/16 v17, 0x1

    .line 730
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v20

    .line 731
    .local v20, "persInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_22

    .line 733
    const/16 v16, 0x0

    .line 741
    .end local v20    # "persInfo":Landroid/content/pm/PersonaInfo;
    :cond_22
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    :goto_4
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_23

    .line 745
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCCMProfile - isPersona: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isLocked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_23
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    .line 752
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v0, v31

    invoke-static {v6, v7, v0, v8, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_manage_exempt_list(ZIIIZ)J

    .line 754
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z

    .line 755
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_3

    .line 756
    sget-object v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore says: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 736
    :catch_3
    move-exception v14

    .line 737
    .local v14, "e":Ljava/lang/Exception;
    :try_start_4
    sget-boolean v6, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v6, :cond_24

    .line 738
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 741
    :cond_24
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setCSRProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CSRProfile;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CSRProfile;

    .prologue
    .line 2900
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_0

    .line 2901
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2905
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 2908
    :cond_1
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_2

    .line 2909
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :cond_2
    const/4 v4, 0x0

    .line 2996
    :goto_0
    return v4

    .line 2913
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v4, :cond_5

    .line 2914
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_4

    .line 2915
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 2919
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2920
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_6

    .line 2921
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - CCM is not enabled for caller"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_6
    const/4 v4, 0x0

    goto :goto_0

    .line 2925
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2926
    .local v3, "userId":I
    const/4 v6, 0x0

    .line 2928
    .local v6, "subj":[B
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2929
    .local v16, "str":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 2930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2932
    :cond_8
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 2933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DC="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    :cond_9
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 2936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    :cond_a
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 2939
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    :cond_b
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 2942
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    :cond_c
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 2945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    :cond_d
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 2948
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "emailAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 2952
    .local v14, "length":I
    const/4 v4, 0x2

    if-le v14, v4, :cond_f

    .line 2953
    add-int/lit8 v4, v14, -0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2957
    :try_start_0
    new-instance v15, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    .line 2958
    .local v15, "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2967
    .end local v15    # "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    :cond_f
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 2968
    .local v2, "adminId":I
    const/4 v4, -0x1

    if-ne v4, v2, :cond_11

    .line 2969
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_10

    .line 2970
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile - failed to get admin Id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2960
    .end local v2    # "adminId":I
    :catch_0
    move-exception v13

    .line 2961
    .local v13, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_f

    .line 2962
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in setCSRProfile - Exception "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2974
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "adminId":I
    :cond_11
    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyLength:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->ordinal()I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_set_csr_profile(IILjava/lang/String;I[BI)J

    move-result-wide v4

    cmp-long v4, v10, v4

    if-eqz v4, :cond_13

    .line 2977
    sget-boolean v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v4, :cond_12

    .line 2978
    sget-object v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile - native ccm_set_csr_profile failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2984
    :cond_13
    new-instance v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v9}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 2985
    .local v9, "certProf":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    iput-object v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 2986
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 2987
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 2988
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    .line 2991
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v10, v2

    move v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v5

    if-eq v4, v5, :cond_14

    .line 2993
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2996
    :cond_14
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public setDefaultCCMProfile()Z
    .locals 15

    .prologue
    .line 973
    const-wide v10, 0xffffffffL

    .line 974
    .local v10, "slotId":J
    const/16 v1, 0x3e8

    .line 975
    .local v1, "callerUID":I
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_0

    .line 976
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "in setDefaultCCMProfile"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mIsTimaVersion30:Z

    if-nez v9, :cond_2

    .line 979
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_1

    .line 980
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setDefaultCCMProfile - TIMA version does not include CCM"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_1
    const/4 v9, 0x0

    .line 1055
    :goto_0
    return v9

    .line 986
    :cond_2
    new-instance v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 987
    .local v4, "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-object v9, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iput-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 988
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 989
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 990
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->defaultPackageList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 991
    .local v0, "addPackageName":Ljava/lang/String;
    iget-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 995
    .end local v0    # "addPackageName":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    iget-object v12, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v1, v9, v12, v13}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v10

    .line 998
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_4

    .line 999
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDefaultCCMProfile - slot Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", caller Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_4
    const-wide v12, 0xffffffffL

    cmp-long v9, v12, v10

    if-nez v9, :cond_6

    .line 1003
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_5

    .line 1004
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setDefaultCCMProfile - native create_slot failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    .line 1011
    :cond_6
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1012
    .local v2, "cv":Landroid/content/ContentValues;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1014
    .local v3, "cvWhere":Landroid/content/ContentValues;
    iget-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1015
    .local v8, "pkg":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "cv":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1016
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    const-string/jumbo v9, "uid"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    const-string v9, "accessType"

    iget-object v12, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string/jumbo v9, "loginRetry"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1021
    const-string/jumbo v9, "loginExpiration"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    const-string/jumbo v9, "slotId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1023
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    new-instance v3, Landroid/content/ContentValues;

    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1026
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    const-string/jumbo v9, "uid"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v3, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/4 v9, 0x1

    iget-object v12, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v12

    if-eq v9, v12, :cond_7

    .line 1032
    sget-boolean v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v9, :cond_8

    .line 1033
    sget-object v9, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "setDefaultCCMProfile packages - DB operation failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_8
    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1036
    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->addDefaultPackageToExemptList()V

    .line 1049
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotCount()I

    move-result v9

    iput v9, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mSlotCount:I

    .line 1051
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->initParams()V

    .line 1053
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {p0, v9, v12, v13, v14}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z

    .line 1055
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1041
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 1042
    .local v5, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->ccm_delete_slot(II)J

    .line 1043
    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->resetDefaultCCMProfile(II)V

    .line 1044
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public setTokenTUIProperty(IIILjava/lang/String;[B)I
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "loginExpirationTime"    # I
    .param p3, "loginRetry"    # I
    .param p4, "secretImageId"    # Ljava/lang/String;
    .param p5, "wrappedPin"    # [B

    .prologue
    .line 3477
    sget-boolean v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 3478
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTokenTUIProperty - slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "loginExpirationTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    sget-object v1, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTokenTUIProperty - loginRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :cond_0
    invoke-static {p1, p4, p5, p3, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I

    move-result v0

    .line 3485
    .local v0, "ret":I
    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 3586
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->handleCCMBuildUpdate()V

    .line 3588
    invoke-direct {p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->checkMPforCCM()V

    .line 3590
    return-void
.end method
