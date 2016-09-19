.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Landroid/app/enterprise/license/IEnterpriseLicense$Stub;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DEACTIVATE_LICENSE_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field private static final MY_PID:I

.field private static final TAG:Ljava/lang/String; = "EnterpriseLicenseService"

.field private static final UMCpackageName:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field private allowedCaller:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mELMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyDeactivateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKLMKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/app/enterprise/license/IEnterpriseLicense$Stub;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.knox.kccagent"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.klat.agent"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    .line 102
    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 103
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    .line 107
    return-void
.end method

.method private checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callerPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 139
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 140
    :cond_0
    const-string v7, "EnterpriseLicenseService"

    const-string v8, "caller is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_1
    :goto_0
    return v6

    .line 142
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "checkCallerPkgName":Z
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->allowedCaller:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v1, v0, v4

    .line 147
    .local v1, "caller":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 148
    const-string v8, "EnterpriseLicenseService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "caller is approved : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, 0x1

    .line 154
    .end local v1    # "caller":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_5

    .line 155
    const-string v6, "EnterpriseLicenseService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "caller is not approved (caller:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 156
    goto :goto_0

    .line 146
    .restart local v1    # "caller":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    .end local v1    # "caller":Ljava/lang/String;
    :cond_5
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android"

    invoke-virtual {v8, v9, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 163
    const-string v6, "EnterpriseLicenseService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "signature mismatched! caller : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v7

    .line 164
    goto/16 :goto_0

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    .line 170
    goto/16 :goto_0
.end method

.method private deleteELMInfo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1557
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    aput-object v2, v0, v3

    .line 1560
    .local v0, "sColumns":[Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    .line 1563
    .local v1, "sValues":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_LICENSE_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1543
    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
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
    .line 1239
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1240
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_0

    .line 1241
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller is not SYSTEM_SERVICE OR SYSTEM APP"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1244
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1245
    :cond_1
    const/4 v4, 0x0

    .line 1264
    :cond_2
    :goto_0
    return-object v4

    .line 1247
    :cond_3
    const/4 v5, 0x0

    .line 1248
    .local v5, "ro":Landroid/app/enterprise/license/RightsObject;
    const/4 v4, 0x0

    .line 1250
    .local v4, "perm":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const-string/jumbo v8, "pkgName"

    const-string/jumbo v9, "rightsObject"

    invoke-virtual {v6, v7, v8, p0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 1254
    .local v1, "blob":[B
    if-eqz v1, :cond_2

    .line 1255
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v5, v0

    .line 1256
    if-eqz v5, :cond_2

    .line 1257
    invoke-virtual {v5}, Landroid/app/enterprise/license/RightsObject;->getPermissions()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1260
    .end local v1    # "blob":[B
    :catch_0
    move-exception v3

    .line 1261
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetELMInfo(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1548
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1549
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 1550
    .local v0, "blob":[B
    const-string/jumbo v3, "rightsObject"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1551
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1552
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public static updateAdminPermissions()V
    .locals 9

    .prologue
    .line 1493
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    sget v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-eq v6, v7, :cond_0

    .line 1494
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1498
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    .line 1499
    .local v0, "columns":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "pkgName"

    aput-object v7, v0, v6

    .line 1501
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 1504
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1505
    const/4 v1, 0x0

    .line 1506
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 1507
    .local v4, "pkgName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1509
    .local v3, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1510
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1511
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1513
    if-eqz v4, :cond_1

    .line 1514
    const-string v6, "EnterpriseLicenseService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateAdminPermissions() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1520
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_0
    move-exception v2

    .line 1521
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "updateAdminPermissions() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1524
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized activateKnoxLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 924
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 926
    new-instance v21, Ljava/lang/SecurityException;

    const-string v22, "Operation not supported on profile"

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 931
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 932
    .local v17, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 934
    .local v20, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v18

    .line 939
    .local v18, "token":J
    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 940
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 941
    move-object/from16 v6, p3

    .line 998
    :cond_2
    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_c

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1000
    const-string v21, "EnterpriseLicenseService"

    const-string v22, "KLM activation is already in process."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1027
    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1068
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 944
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 945
    .local v14, "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 948
    .local v4, "approved":Z
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 949
    const/4 v4, 0x1

    .line 950
    move-object/from16 v6, p3

    .line 954
    :cond_5
    if-nez v4, :cond_6

    .line 955
    move-object v5, v14

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v13, v5, v9

    .line 956
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 957
    const/4 v4, 0x1

    .line 963
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_2

    .line 965
    :try_start_5
    const-string/jumbo v21, "package"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 966
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 968
    .local v10, "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_8

    .line 970
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0xcc

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x320

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 976
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1027
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 955
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 980
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 981
    .local v8, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 984
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    move-object v5, v14

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_2
    if-ge v9, v12, :cond_9

    aget-object v13, v5, v9

    .line 985
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 987
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0xcc

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 989
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x320

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 984
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1027
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 1004
    .end local v4    # "approved":Z
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "pkgs":[Ljava/lang/String;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.registration.internal"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.data.pkgname"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string/jumbo v21, "edm.intent.extra.knox_license.data.request_pkgname"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    const-string/jumbo v21, "persona"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v16

    .line 1013
    .local v16, "pms":Landroid/os/IPersonaManager;
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1014
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1018
    .local v7, "dest":Landroid/os/UserHandle;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "android.permission.sec.MDM_LICENSE_INTERNAL"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1027
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 1016
    .end local v7    # "dest":Landroid/os/UserHandle;
    :cond_b
    :try_start_b
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v7    # "dest":Landroid/os/UserHandle;
    goto :goto_3

    .line 1021
    .end local v7    # "dest":Landroid/os/UserHandle;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "pms":Landroid/os/IPersonaManager;
    :cond_c
    const-string v21, "EnterpriseLicenseService"

    const-string/jumbo v22, "package name is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1027
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1031
    :goto_4
    if-nez p3, :cond_d

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 1033
    .restart local v14    # "pkgs":[Ljava/lang/String;
    if-eqz v14, :cond_3

    array-length v0, v14

    move/from16 v21, v0

    if-lez v21, :cond_3

    .line 1034
    move-object v5, v14

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_5
    if-ge v9, v12, :cond_3

    aget-object v13, v5, v9

    .line 1035
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1039
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x320

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1041
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1045
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1034
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1023
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "pkgs":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 1024
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v21, "EnterpriseLicenseService"

    const-string v22, "activateKnoxLicense() failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1027
    :try_start_e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v21

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21

    .line 1049
    :cond_d
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1050
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x320

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 1057
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1060
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    :cond_e
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1066
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized activateKnoxLicenseForUMC(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1076
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateKnoxLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    monitor-exit p0

    return-void

    .line 1076
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized activateLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgVer"    # Ljava/lang/String;

    .prologue
    .line 752
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 754
    new-instance v22, Ljava/lang/SecurityException;

    const-string v23, "Operation not supported on profile"

    invoke-direct/range {v22 .. v23}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 758
    :cond_0
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 759
    .local v20, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v21

    .line 761
    .local v21, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 763
    .local v6, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v18

    .line 765
    .local v18, "token":J
    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 766
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 767
    move-object/from16 v6, p3

    .line 824
    :cond_2
    if-eqz p3, :cond_e

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_e

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 826
    const-string v22, "EnterpriseLicenseService"

    const-string v23, "ELM activation is already in process."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 865
    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 905
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 770
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 771
    .local v15, "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 774
    .local v4, "approved":Z
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 775
    const/4 v4, 0x1

    .line 776
    move-object/from16 v6, p3

    .line 780
    :cond_5
    if-nez v4, :cond_6

    .line 781
    move-object v5, v15

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v13, v5, v9

    .line 782
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 783
    const/4 v4, 0x1

    .line 789
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_2

    .line 791
    :try_start_5
    const-string/jumbo v22, "package"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 792
    .local v16, "pm":Landroid/content/pm/IPackageManager;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 794
    .local v10, "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_8

    .line 796
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.status"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 797
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.status"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 798
    const-string/jumbo v22, "edm.intent.extra.license.errorcode"

    const/16 v23, 0xcc

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    const-string/jumbo v22, "edm.intent.extra.license.result_type"

    const/16 v23, 0x320

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 802
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 865
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 781
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 806
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 807
    .local v8, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 810
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    move-object v5, v15

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_2
    if-ge v9, v12, :cond_9

    aget-object v13, v5, v9

    .line 811
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.status"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.status"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    const-string/jumbo v22, "edm.intent.extra.license.errorcode"

    const/16 v23, 0xcc

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 815
    const-string/jumbo v22, "edm.intent.extra.license.result_type"

    const/16 v23, 0x320

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 810
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 865
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 830
    .end local v4    # "approved":Z
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v15    # "pkgs":[Ljava/lang/String;
    :cond_a
    const/4 v14, 0x0

    .line 831
    .local v14, "pkgVersion":Ljava/lang/String;
    if-eqz p4, :cond_c

    .line 832
    move-object/from16 v14, p4

    .line 841
    :cond_b
    :goto_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.registration.internal"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const-string/jumbo v22, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    const-string/jumbo v22, "edm.intent.extra.license.data.request_pkgname"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 849
    const-string/jumbo v22, "persona"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v17

    .line 851
    .local v17, "pms":Landroid/os/IPersonaManager;
    if-eqz v17, :cond_d

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 852
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 856
    .local v7, "dest":Landroid/os/UserHandle;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "android.permission.sec.MDM_LICENSE_INTERNAL"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 865
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 835
    .end local v7    # "dest":Landroid/os/UserHandle;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v17    # "pms":Landroid/os/IPersonaManager;
    :cond_c
    :try_start_b
    const-string/jumbo v22, "package"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v16

    .line 836
    .restart local v16    # "pm":Landroid/content/pm/IPackageManager;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v22

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 837
    .restart local v10    # "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_b

    .line 838
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_3

    .line 854
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v16    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v17    # "pms":Landroid/os/IPersonaManager;
    :cond_d
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v7    # "dest":Landroid/os/UserHandle;
    goto :goto_4

    .line 859
    .end local v7    # "dest":Landroid/os/UserHandle;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "pkgVersion":Ljava/lang/String;
    .end local v17    # "pms":Landroid/os/IPersonaManager;
    :cond_e
    const-string v22, "EnterpriseLicenseService"

    const-string/jumbo v23, "package name is null"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 865
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 869
    :goto_5
    if-nez p3, :cond_f

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 871
    .restart local v15    # "pkgs":[Ljava/lang/String;
    if-eqz v15, :cond_3

    array-length v0, v15

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 872
    move-object v5, v15

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_6
    if-ge v9, v12, :cond_3

    aget-object v13, v5, v9

    .line 873
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.status"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.status"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const-string/jumbo v22, "edm.intent.extra.license.errorcode"

    const/16 v23, 0x12d

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    const-string/jumbo v22, "edm.intent.extra.license.result_type"

    const/16 v23, 0x320

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 879
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 882
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 872
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 861
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v15    # "pkgs":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 862
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v22, "EnterpriseLicenseService"

    const-string v23, "activateLicense() failed."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 865
    :try_start_e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v22

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v22

    .line 886
    :cond_f
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v22, "edm.intent.action.license.status"

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v22, "edm.intent.extra.license.status"

    const-string/jumbo v23, "fail"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    const-string/jumbo v22, "edm.intent.extra.license.errorcode"

    const/16 v23, 0x12d

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 890
    const-string/jumbo v22, "edm.intent.extra.license.result_type"

    const/16 v23, 0x320

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 893
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 894
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 897
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    :cond_10
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget-object v23, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 903
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized activateLicenseForUMC(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "licenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pkgVersion"    # Ljava/lang/String;

    .prologue
    .line 913
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->activateLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    monitor-exit p0

    return-void

    .line 913
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deActivateKnoxLicense(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "knoxLicenseKey"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1087
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1089
    new-instance v21, Ljava/lang/SecurityException;

    const-string v22, "Operation not supported on profile"

    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    :catchall_0
    move-exception v21

    monitor-exit p0

    throw v21

    .line 1094
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v17

    .line 1097
    .local v17, "uid":I
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 1099
    .local v20, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 1101
    .local v6, "callerPackage":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v18

    .line 1104
    .local v18, "token":J
    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1105
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p3

    .line 1106
    move-object/from16 v6, p3

    .line 1161
    :cond_2
    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_c

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1163
    const-string v21, "EnterpriseLicenseService"

    const-string v22, "KLM de-activation is already in process."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1190
    :try_start_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1231
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 1108
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 1109
    .local v14, "pkgs":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1112
    .local v4, "approved":Z
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1113
    const/4 v4, 0x1

    .line 1114
    move-object/from16 v6, p3

    .line 1118
    :cond_5
    if-nez v4, :cond_6

    .line 1119
    move-object v5, v14

    .local v5, "arr$":[Ljava/lang/String;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v13, v5, v9

    .line 1120
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1121
    const/4 v4, 0x1

    .line 1127
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_6
    if-nez v4, :cond_2

    .line 1129
    :try_start_5
    const-string/jumbo v21, "package"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v15

    .line 1130
    .local v15, "pm":Landroid/content/pm/IPackageManager;
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v15, v0, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 1131
    .local v10, "info":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_8

    .line 1133
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0xcc

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1137
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x322

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1139
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1190
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 1119
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v15    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1143
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1144
    .local v8, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1147
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    move-object v5, v14

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_2
    if-ge v9, v12, :cond_9

    aget-object v13, v5, v9

    .line 1148
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1149
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0xcc

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1152
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x322

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1154
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1147
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1190
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "pkg":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 1167
    .end local v4    # "approved":Z
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "pkgs":[Ljava/lang/String;
    :cond_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.deactivation.internal"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.data.pkgname"

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string/jumbo v21, "edm.intent.extra.knox_license.data.request_pkgname"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    const-string/jumbo v21, "persona"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v16

    .line 1176
    .local v16, "pms":Landroid/os/IPersonaManager;
    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/os/IPersonaManager;->exists(I)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1177
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 1181
    .local v7, "dest":Landroid/os/UserHandle;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "android.permission.sec.MDM_LICENSE_INTERNAL"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1190
    :try_start_a
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 1179
    .end local v7    # "dest":Landroid/os/UserHandle;
    :cond_b
    :try_start_b
    new-instance v7, Landroid/os/UserHandle;

    move/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    .restart local v7    # "dest":Landroid/os/UserHandle;
    goto :goto_3

    .line 1184
    .end local v7    # "dest":Landroid/os/UserHandle;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v16    # "pms":Landroid/os/IPersonaManager;
    :cond_c
    const-string v21, "EnterpriseLicenseService"

    const-string/jumbo v22, "package name is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1190
    :try_start_c
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1194
    :goto_4
    if-nez p3, :cond_d

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 1196
    .restart local v14    # "pkgs":[Ljava/lang/String;
    if-eqz v14, :cond_3

    array-length v0, v14

    move/from16 v21, v0

    if-lez v21, :cond_3

    .line 1197
    move-object v5, v14

    .restart local v5    # "arr$":[Ljava/lang/String;
    array-length v12, v5

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_5
    if-ge v9, v12, :cond_3

    aget-object v13, v5, v9

    .line 1198
    .restart local v13    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1199
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1200
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1202
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x322

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1204
    invoke-virtual {v11, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1208
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1197
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1186
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "len$":I
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "pkgs":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 1187
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_d
    const-string v21, "EnterpriseLicenseService"

    const-string/jumbo v22, "deActivateKnoxLicense() failed."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1190
    :try_start_e
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v21

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21

    .line 1212
    :cond_d
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.knox_license.status"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    .restart local v11    # "intent":Landroid/content/Intent;
    const-string/jumbo v21, "edm.intent.extra.knox_license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1214
    const-string/jumbo v21, "edm.intent.extra.knox_license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1216
    const-string/jumbo v21, "edm.intent.extra.knox_license.result_type"

    const/16 v22, 0x322

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1219
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 1220
    invoke-virtual {v11, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1221
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1223
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1226
    :cond_e
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1229
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0
.end method

.method public deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;)Z
    .locals 8
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "error"    # Landroid/app/enterprise/license/Error;

    .prologue
    const/4 v5, 0x0

    .line 584
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 586
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v5

    .line 591
    :cond_1
    const/4 v3, 0x0

    .line 593
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 594
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "instanceId"

    invoke-virtual {v1, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string/jumbo v0, "pkgName"

    .line 597
    .local v0, "column":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 600
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 601
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "deleteApiCallData(): result is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 615
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "deleteApiCallData() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 605
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 607
    if-nez v3, :cond_3

    .line 608
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "deleteApiCallData(): Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :cond_3
    invoke-static {v3}, Lcom/android/server/enterprise/license/LicenseLog;->deleteLog(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    goto :goto_0
.end method

.method public deleteLicense(Ljava/lang/String;)Z
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1359
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1360
    const/4 v5, 0x0

    .line 1361
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1363
    .local v6, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 1395
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1397
    :goto_0
    return v8

    .line 1366
    :cond_1
    const/4 v3, 0x0

    .line 1368
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1369
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v9, "instanceId"

    invoke-virtual {v1, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string/jumbo v0, "pkgName"

    .line 1372
    .local v0, "column":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1374
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 1375
    const-string v9, "EnterpriseLicenseService"

    const-string/jumbo v10, "deleteLicense(): result is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1395
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1379
    :cond_2
    :try_start_2
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1381
    if-nez v3, :cond_3

    .line 1382
    const-string v9, "EnterpriseLicenseService"

    const-string/jumbo v10, "deleteLicense(): pkgName is null, Record does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1395
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1386
    :cond_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v5

    .line 1387
    if-eqz v5, :cond_4

    .line 1389
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1395
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :goto_1
    move v8, v5

    .line 1397
    goto :goto_0

    .line 1391
    :catch_0
    move-exception v2

    .line 1392
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "deleteLicense() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1395
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public deleteLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1406
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1407
    const/4 v1, 0x0

    .line 1408
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1410
    .local v2, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1411
    :cond_0
    const/4 v4, 0x0

    .line 1421
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1423
    :goto_0
    return v4

    .line 1413
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->deleteELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 1414
    if-eqz v1, :cond_2

    .line 1416
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1421
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move v4, v1

    .line 1423
    goto :goto_0

    .line 1418
    :catch_0
    move-exception v0

    .line 1419
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "deleteLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1421
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getAllLicenseInfo()[Landroid/app/enterprise/license/LicenseInfo;
    .locals 15

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 707
    const/4 v7, 0x0

    .line 708
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    const/4 v5, 0x0

    .line 711
    .local v5, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    const/4 v12, 0x3

    :try_start_0
    new-array v0, v12, [Ljava/lang/String;

    .line 712
    .local v0, "columns":[Ljava/lang/String;
    const/4 v12, 0x0

    const-string/jumbo v13, "pkgName"

    aput-object v13, v0, v12

    .line 713
    const/4 v12, 0x1

    const-string/jumbo v13, "instanceId"

    aput-object v13, v0, v12

    .line 714
    const/4 v12, 0x2

    const-string/jumbo v13, "pkgVersion"

    aput-object v13, v0, v12

    .line 716
    sget-object v12, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v11

    .line 719
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 722
    .local v9, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 723
    .local v3, "instanceId":Ljava/lang/String;
    const/4 v10, 0x0

    .line 724
    .local v10, "packageVersion":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    move-object v6, v5

    .line 727
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .local v6, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :goto_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 728
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 729
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 730
    const-string/jumbo v12, "instanceId"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 731
    const-string/jumbo v12, "pkgVersion"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 732
    new-instance v5, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v5, v9, v3, v10}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 733
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :try_start_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v5

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_0

    .line 735
    :cond_0
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_2

    .line 736
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Landroid/app/enterprise/license/LicenseInfo;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;

    check-cast v12, [Landroid/app/enterprise/license/LicenseInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .line 742
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instanceId":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "packageVersion":Ljava/lang/String;
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :goto_1
    return-object v12

    .line 738
    :catch_0
    move-exception v2

    .line 739
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v12, "EnterpriseLicenseService"

    const-string/jumbo v13, "getLicenseInfo() failed"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    const/4 v12, 0x0

    goto :goto_1

    .line 738
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "instanceId":Ljava/lang/String;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "packageVersion":Ljava/lang/String;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_2

    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_2

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    :cond_2
    move-object v5, v6

    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v7, v8

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/license/LicenseInfo;>;"
    goto :goto_3
.end method

.method public getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 536
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 538
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-object v5

    .line 543
    :cond_1
    const/4 v3, 0x0

    .line 544
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 545
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "instanceId"

    invoke-virtual {v1, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string/jumbo v0, "pkgName"

    .line 548
    .local v0, "column":Ljava/lang/String;
    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "LICENSE"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 550
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 551
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getApiCallData(): result is null, Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 564
    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "result":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getApiCallData() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 555
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "column":Ljava/lang/String;
    .restart local v1    # "cvWhere":Landroid/content/ContentValues;
    .restart local v4    # "result":Landroid/content/ContentValues;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 557
    if-nez v3, :cond_3

    .line 558
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "getApiCallData(): pkgName is null, Record does not exist"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    :cond_3
    invoke-static {v3}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0
.end method

.method public getApiCallDataByAdmin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 632
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Operation not supported on profile"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.sec.MDM_LICENSE_LOG"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    :cond_1
    :goto_0
    return-object v1

    .line 644
    :cond_2
    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "getApiCallDataByAdmin() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getELMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1434
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1435
    :cond_0
    const/4 v2, 0x0

    .line 1445
    :goto_0
    return-object v2

    .line 1437
    :cond_1
    const/4 v2, 0x0

    .line 1439
    .local v2, "elmKey":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1440
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mELMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1441
    :catch_0
    move-exception v1

    .line 1442
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getELMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    .line 1269
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1272
    :goto_0
    return-object v1

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v2, "getELMPermissions() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKLMLicenseKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1454
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1456
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1457
    :cond_0
    const/4 v2, 0x0

    .line 1467
    :goto_0
    return-object v2

    .line 1459
    :cond_1
    const/4 v2, 0x0

    .line 1461
    .local v2, "klmKey":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1462
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1463
    :catch_0
    move-exception v1

    .line 1464
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getKLMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getKLMLicenseKeyForDeactivation(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1476
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1478
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1479
    :cond_0
    const/4 v2, 0x0

    .line 1489
    :goto_0
    return-object v2

    .line 1481
    :cond_1
    const/4 v2, 0x0

    .line 1483
    .local v2, "klmKey":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 1484
    iget-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKLMKeyDeactivateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1485
    :catch_0
    move-exception v1

    .line 1486
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "getKLMLicenseKey() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLicenseInfo(Ljava/lang/String;)Landroid/app/enterprise/license/LicenseInfo;
    .locals 13
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 659
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 660
    const/4 v5, 0x0

    .line 662
    .local v5, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    move-object v6, v5

    .line 697
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .local v6, "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :goto_0
    return-object v6

    .line 666
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_1
    const/4 v10, 0x3

    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    .line 667
    .local v0, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string/jumbo v11, "pkgName"

    aput-object v11, v0, v10

    .line 668
    const/4 v10, 0x1

    const-string/jumbo v11, "instanceId"

    aput-object v11, v0, v10

    .line 669
    const/4 v10, 0x2

    const-string/jumbo v11, "pkgVersion"

    aput-object v11, v0, v10

    .line 671
    sget-object v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "LICENSE"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .line 674
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 675
    const/4 v1, 0x0

    .line 676
    .local v1, "cv":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 677
    .local v3, "instId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 678
    .local v7, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 679
    .local v8, "packageVersion":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 681
    .local v4, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 682
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 683
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "instanceId"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 685
    if-eqz v3, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 686
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 687
    const-string/jumbo v10, "pkgVersion"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 688
    new-instance v6, Landroid/app/enterprise/license/LicenseInfo;

    invoke-direct {v6, v7, v3, v8}, Landroid/app/enterprise/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    move-object v5, v6

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "instId":Ljava/lang/String;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "packageVersion":Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :cond_3
    :goto_1
    move-object v6, v5

    .line 697
    .end local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    goto :goto_0

    .line 693
    .end local v6    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    .restart local v5    # "lInfo":Landroid/app/enterprise/license/LicenseInfo;
    :catch_0
    move-exception v2

    .line 694
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "EnterpriseLicenseService"

    const-string/jumbo v11, "getLicenseInfo() failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getRightsObject(Ljava/lang/String;)Landroid/app/enterprise/license/RightsObject;
    .locals 9
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 390
    const/4 v3, 0x0

    .line 391
    .local v3, "ro":Landroid/app/enterprise/license/RightsObject;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v4, v3

    .line 405
    .end local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    .local v4, "ro":Landroid/app/enterprise/license/RightsObject;
    :goto_0
    return-object v4

    .line 395
    .end local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    :cond_1
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LICENSE"

    const-string/jumbo v7, "instanceId"

    const-string/jumbo v8, "rightsObject"

    invoke-virtual {v5, v6, v7, p1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 399
    .local v1, "blob":[B
    if-eqz v1, :cond_2

    .line 400
    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/license/RightsObject;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "blob":[B
    :cond_2
    :goto_1
    move-object v4, v3

    .line 405
    .end local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    goto :goto_0

    .line 401
    .end local v4    # "ro":Landroid/app/enterprise/license/RightsObject;
    .restart local v3    # "ro":Landroid/app/enterprise/license/RightsObject;
    :catch_0
    move-exception v2

    .line 402
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "EnterpriseLicenseService"

    const-string/jumbo v6, "getRightsObject() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public log(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "contextInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "apiName"    # Ljava/lang/String;

    .prologue
    .line 1277
    invoke-static {p1, p2}, Lcom/android/server/enterprise/license/LicenseLog;->log(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1532
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1536
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1540
    return-void
.end method

.method public processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/Error;IILjava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "error"    # Landroid/app/enterprise/license/Error;
    .param p4, "initiator"    # I
    .param p5, "result_type"    # I
    .param p6, "callerPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 334
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 336
    invoke-direct {p0, p1, p6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 377
    :goto_0
    return v3

    .line 339
    :cond_0
    const/4 v0, 0x0

    .line 340
    .local v0, "differentCaller":Z
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 341
    :cond_1
    const/4 v0, 0x0

    .line 347
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 350
    .local v4, "token":J
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "edm.intent.action.knox_license.status"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "edm.intent.extra.knox_license.status"

    invoke-virtual {v2, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string/jumbo v7, "edm.intent.extra.knox_license.errorcode"

    invoke-virtual {p3}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    const-string/jumbo v7, "edm.intent.extra.knox_license.activaton_initiator"

    invoke-virtual {v2, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string/jumbo v7, "edm.intent.extra.knox_license.result_type"

    invoke-virtual {v2, v7, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    if-ne v0, v6, :cond_2

    .line 357
    invoke-virtual {v2, p6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    iget-object v7, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 361
    :cond_2
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    iget-object v7, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 365
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 366
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v7

    invoke-virtual {p3}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v8

    invoke-interface {v7, p1, p2, v8}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v6

    .line 377
    goto :goto_0

    .line 342
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_4
    invoke-virtual {p6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 343
    const/4 v0, 0x0

    goto :goto_1

    .line 345
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 370
    .restart local v4    # "token":J
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "EnterpriseLicenseService"

    const-string/jumbo v7, "processKnoxLicenseResponse() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageVersion"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "RO"    # Landroid/app/enterprise/license/RightsObject;
    .param p6, "error"    # Landroid/app/enterprise/license/Error;
    .param p7, "permGroup"    # Ljava/lang/String;
    .param p8, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->checkPackage(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-nez v15, :cond_0

    .line 195
    const/4 v14, 0x0

    .line 315
    :goto_0
    monitor-exit p0

    return v14

    .line 197
    :cond_0
    const/4 v9, 0x0

    .line 198
    .local v9, "differentCaller":Z
    if-eqz p8, :cond_1

    :try_start_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 199
    :cond_1
    const/4 v9, 0x0

    .line 205
    :goto_1
    const/4 v14, 0x0

    .line 206
    .local v14, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 209
    .local v16, "token":J
    if-nez p5, :cond_8

    .line 210
    const/4 v14, 0x1

    .line 266
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v14, :cond_7

    .line 268
    const/4 v15, 0x1

    if-ne v9, v15, :cond_3

    .line 270
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 272
    .local v13, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_2

    .line 273
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v11, "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v11, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v12, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :goto_2
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x320

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const/4 v15, 0x1

    if-ne v9, v15, :cond_4

    .line 292
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 296
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 299
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 192
    .end local v9    # "differentCaller":Z
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ret":Z
    .end local v16    # "token":J
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 200
    .restart local v9    # "differentCaller":Z
    :cond_5
    :try_start_2
    move-object/from16 v0, p8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 201
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 203
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 285
    .restart local v12    # "intent":Landroid/content/Intent;
    .restart local v14    # "ret":Z
    .restart local v16    # "token":J
    :cond_7
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 215
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_8
    :try_start_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 216
    .local v8, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v15, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v8, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 220
    .local v5, "blob":[B
    const-string/jumbo v15, "rightsObject"

    invoke-virtual {v7, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 221
    const-string/jumbo v15, "instanceId"

    move-object/from16 v0, p4

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    .line 225
    .local v6, "cnt":I
    if-lez v6, :cond_10

    .line 227
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v14

    .line 240
    :cond_9
    :goto_3
    const-string v15, "EnterpriseLicenseService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "processLicenseActivationResponse(): ret = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-eqz v14, :cond_a

    .line 244
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 247
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->checkServices()V

    .line 252
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 253
    if-eqz v14, :cond_11

    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v15

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-interface {v15, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 266
    :cond_b
    :goto_4
    :try_start_4
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_15

    .line 268
    const/4 v15, 0x1

    if-ne v9, v15, :cond_d

    .line 270
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 272
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_c

    .line 273
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 274
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v11, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v12, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_c
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :goto_5
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x320

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const/4 v15, 0x1

    if-ne v9, v15, :cond_e

    .line 292
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 296
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 299
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 302
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    :goto_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v16

    .line 304
    :try_start_5
    const-string v15, "application_policy"

    invoke-static {v15}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 306
    .local v4, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_f

    .line 307
    invoke-virtual {v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->grantRuntimePermissionsForEnterpriseAdmin()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 312
    :cond_f
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 230
    .end local v4    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    :cond_10
    :try_start_7
    const-string/jumbo v15, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v15, "pkgVersion"

    move-object/from16 v0, p2

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v14

    .line 233
    if-nez v14, :cond_9

    .line 235
    const-string v15, "EnterpriseLicenseService"

    const-string v18, "check key field"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string/jumbo v15, "licenseKey"

    const-string/jumbo v18, "na"

    move-object/from16 v0, v18

    invoke-virtual {v7, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v18, "LICENSE"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v14

    goto/16 :goto_3

    .line 256
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v15

    const-string/jumbo v18, "fail"

    const/16 v19, 0x12d

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v15, v0, v1, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_4

    .line 261
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 262
    .local v10, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v15, "EnterpriseLicenseService"

    const-string/jumbo v18, "processLicenseActivationResponse() failed"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 266
    :try_start_9
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v15, "edm.intent.action.license.status"

    invoke-direct {v12, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_16

    .line 268
    const/4 v15, 0x1

    if-ne v9, v15, :cond_13

    .line 270
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 272
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_12

    .line 273
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 274
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v15, "Permissions"

    invoke-virtual {v11, v15, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    const-string/jumbo v15, "edm.intent.extra.license.data.license_permissions"

    invoke-virtual {v12, v15, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_12
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, p1

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v15, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, p2

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    const-string/jumbo v15, "edm.intent.extra.license.status"

    move-object/from16 v0, p3

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string/jumbo v15, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, p7

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :goto_7
    const-string/jumbo v15, "edm.intent.extra.license.result_type"

    const/16 v18, 0x320

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const/4 v15, 0x1

    if-ne v9, v15, :cond_14

    .line 292
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 296
    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v15, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 299
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_6

    .line 285
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "blob":[B
    .restart local v6    # "cnt":I
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    :cond_15
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 285
    .end local v5    # "blob":[B
    .end local v6    # "cnt":I
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v10    # "e":Ljava/lang/Exception;
    :cond_16
    const-string/jumbo v15, "edm.intent.extra.license.status"

    const-string/jumbo v18, "fail"

    move-object/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v15, "edm.intent.extra.license.errorcode"

    const/16 v18, 0x12d

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    .line 266
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v15

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v18, "edm.intent.action.license.status"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v14, :cond_1a

    .line 268
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_18

    .line 270
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 272
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_17

    .line 273
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 274
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v18, "Permissions"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 275
    const-string/jumbo v18, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_17
    const-string/jumbo v18, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string/jumbo v18, "edm.intent.extra.license.data.pkgversion"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_18
    const-string/jumbo v18, "edm.intent.extra.license.status"

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p6 .. p6}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const-string/jumbo v18, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v18

    move-object/from16 v1, p7

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :goto_8
    const-string/jumbo v18, "edm.intent.extra.license.result_type"

    const/16 v19, 0x320

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_19

    .line 292
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 296
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 299
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 300
    throw v15

    .line 285
    :cond_1a
    const-string/jumbo v18, "edm.intent.extra.license.status"

    const-string/jumbo v19, "fail"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string/jumbo v18, "edm.intent.extra.license.errorcode"

    const/16 v19, 0x12d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 309
    :catch_1
    move-exception v10

    .line 310
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_a
    const-string v15, "EnterpriseLicenseService"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 312
    :try_start_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v15

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
.end method

.method public processLicenseValidationResult(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/license/RightsObject;Landroid/app/enterprise/license/Error;Ljava/lang/String;)Z
    .locals 23
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/String;
    .param p3, "RO"    # Landroid/app/enterprise/license/RightsObject;
    .param p4, "error"    # Landroid/app/enterprise/license/Error;
    .param p5, "permGroup"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 424
    const/16 v16, 0x0

    .line 425
    .local v16, "ret":Z
    const/4 v14, 0x0

    .line 426
    .local v14, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 429
    .local v18, "token":J
    if-nez p3, :cond_4

    .line 430
    const/16 v16, 0x1

    .line 483
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v16, :cond_2

    .line 485
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    :goto_0
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 498
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 499
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v4, "UMCintent":Landroid/content/Intent;
    if-eqz v16, :cond_3

    .line 501
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :goto_1
    const-string/jumbo v20, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-static {v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 511
    .local v13, "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_0

    .line 512
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 513
    .local v11, "extra":Landroid/os/Bundle;
    const-string v20, "Permissions"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 514
    const-string/jumbo v20, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 516
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v20, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 521
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v17, v16

    .line 524
    .end local v16    # "ret":Z
    .local v17, "ret":I
    :goto_2
    return v17

    .line 489
    .end local v17    # "ret":I
    .restart local v16    # "ret":Z
    :cond_2
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 505
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_3
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 435
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_0
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 436
    .local v9, "cvWhereforPkg":Landroid/content/ContentValues;
    const-string/jumbo v20, "instanceId"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string/jumbo v6, "pkgName"

    .line 439
    .local v6, "column":Ljava/lang/String;
    sget-object v20, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v21, "LICENSE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v15

    .line 442
    .local v15, "result":Landroid/content/ContentValues;
    if-nez v15, :cond_9

    .line 443
    const-string v20, "EnterpriseLicenseService"

    const-string/jumbo v21, "processLicenseValidationResult(): result is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v16, :cond_7

    .line 485
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    :goto_3
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 498
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 499
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v16, :cond_8

    .line 501
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :goto_4
    const-string/jumbo v20, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-static {v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 511
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_5

    .line 512
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 513
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v20, "Permissions"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 514
    const-string/jumbo v20, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 516
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v20, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 521
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v17, v16

    .line 522
    .restart local v17    # "ret":I
    goto/16 :goto_2

    .line 489
    .end local v17    # "ret":I
    :cond_7
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3

    .line 505
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_8
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_4

    .line 447
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_9
    :try_start_1
    const-string/jumbo v20, "pkgName"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 449
    if-nez v14, :cond_e

    .line 450
    const-string v20, "EnterpriseLicenseService"

    const-string/jumbo v21, "processLicenseValidationResult(): pkgName is null, Record does not exist"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v16, :cond_c

    .line 485
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    :goto_5
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 498
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 499
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v16, :cond_d

    .line 501
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :goto_6
    const-string/jumbo v20, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-static {v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 511
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_a

    .line 512
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 513
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v20, "Permissions"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 514
    const-string/jumbo v20, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 516
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_a
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v20, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 521
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v17, v16

    .line 522
    .restart local v17    # "ret":I
    goto/16 :goto_2

    .line 489
    .end local v17    # "ret":I
    :cond_c
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_5

    .line 505
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_d
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_6

    .line 455
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_e
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v7, "cv":Landroid/content/ContentValues;
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    .line 457
    .local v5, "blob":[B
    const-string/jumbo v20, "rightsObject"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 458
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 459
    .local v8, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v20, "instanceId"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v20, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v21, "LICENSE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v16

    .line 462
    const-string v20, "EnterpriseLicenseService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "processLicenseValidationResult(): ret = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-eqz v16, :cond_f

    .line 465
    sget-object v20, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I

    .line 469
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v20

    if-eqz v20, :cond_10

    .line 470
    if-eqz v16, :cond_13

    .line 471
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-interface {v0, v14, v1, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 483
    :cond_10
    :goto_7
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v16, :cond_16

    .line 485
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    :goto_8
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 498
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_12

    .line 499
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v16, :cond_17

    .line 501
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :goto_9
    const-string/jumbo v20, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-static {v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 511
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_11

    .line 512
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 513
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v20, "Permissions"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 514
    const-string/jumbo v20, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 516
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_11
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v20, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 521
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v5    # "blob":[B
    .end local v6    # "column":Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v9    # "cvWhereforPkg":Landroid/content/ContentValues;
    .end local v15    # "result":Landroid/content/ContentValues;
    :goto_a
    move/from16 v17, v16

    .line 524
    .restart local v17    # "ret":I
    goto/16 :goto_2

    .line 473
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v17    # "ret":I
    .restart local v5    # "blob":[B
    .restart local v6    # "column":Ljava/lang/String;
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v9    # "cvWhereforPkg":Landroid/content/ContentValues;
    .restart local v15    # "result":Landroid/content/ContentValues;
    :cond_13
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v20

    const-string/jumbo v21, "fail"

    const/16 v22, 0x12d

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v14, v1, v2}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    .line 478
    .end local v5    # "blob":[B
    .end local v6    # "column":Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v9    # "cvWhereforPkg":Landroid/content/ContentValues;
    .end local v15    # "result":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 479
    .local v10, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v20, "EnterpriseLicenseService"

    const-string/jumbo v21, "processLicenseValidationResult() failed"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 483
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v16, :cond_18

    .line 485
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    :goto_b
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 498
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 499
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.license.status"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v16, :cond_19

    .line 501
    const-string/jumbo v20, "edm.intent.extra.license.status"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string/jumbo v20, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :goto_c
    const-string/jumbo v20, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-static {v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 511
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_14

    .line 512
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 513
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v20, "Permissions"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 514
    const-string/jumbo v20, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 516
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_14
    const-string/jumbo v20, "edm.intent.extra.license.result_type"

    const/16 v21, 0x321

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v20, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 521
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_a

    .line 489
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "blob":[B
    .restart local v6    # "column":Ljava/lang/String;
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "cvWhere":Landroid/content/ContentValues;
    .restart local v9    # "cvWhereforPkg":Landroid/content/ContentValues;
    .restart local v15    # "result":Landroid/content/ContentValues;
    :cond_16
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_8

    .line 505
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_17
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_9

    .line 489
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v5    # "blob":[B
    .end local v6    # "column":Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "cvWhere":Landroid/content/ContentValues;
    .end local v9    # "cvWhereforPkg":Landroid/content/ContentValues;
    .end local v15    # "result":Landroid/content/ContentValues;
    .restart local v10    # "e":Ljava/lang/Exception;
    :cond_18
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_b

    .line 505
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_19
    const-string/jumbo v20, "edm.intent.extra.license.status"

    const-string/jumbo v21, "fail"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string/jumbo v20, "edm.intent.extra.license.errorcode"

    const/16 v21, 0x12d

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_c

    .line 483
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v20

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.license.status"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v12    # "intent":Landroid/content/Intent;
    if-eqz v16, :cond_1c

    .line 485
    const-string/jumbo v21, "edm.intent.extra.license.status"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string/jumbo v21, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string/jumbo v21, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    :goto_d
    const-string/jumbo v21, "edm.intent.extra.license.result_type"

    const/16 v22, 0x321

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    invoke-virtual {v12, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 498
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isUMCAdmin(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 499
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v21, "edm.intent.action.license.status"

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    if-eqz v16, :cond_1d

    .line 501
    const-string/jumbo v21, "edm.intent.extra.license.status"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string/jumbo v21, "edm.intent.extra.license.errorcode"

    invoke-virtual/range {p4 .. p4}, Landroid/app/enterprise/license/Error;->getErrorCode()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string/jumbo v21, "edm.intent.extra.license.perm_group"

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :goto_e
    const-string/jumbo v21, "edm.intent.extra.license.data.pkgname"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-static {v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 511
    .restart local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_1a

    .line 512
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 513
    .restart local v11    # "extra":Landroid/os/Bundle;
    const-string v21, "Permissions"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 514
    const-string/jumbo v21, "edm.intent.extra.license.data.license_permissions"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 516
    .end local v11    # "extra":Landroid/os/Bundle;
    :cond_1a
    const-string/jumbo v21, "edm.intent.extra.license.result_type"

    const/16 v22, 0x321

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    const-string v21, "com.sec.enterprise.knox.cloudmdm.smdms"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 521
    .end local v4    # "UMCintent":Landroid/content/Intent;
    .end local v13    # "licensedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1b
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw v20

    .line 489
    :cond_1c
    const-string/jumbo v21, "edm.intent.extra.license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v21, "edm.intent.extra.license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_d

    .line 505
    .restart local v4    # "UMCintent":Landroid/content/Intent;
    :cond_1d
    const-string/jumbo v21, "edm.intent.extra.license.status"

    const-string/jumbo v22, "fail"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string/jumbo v21, "edm.intent.extra.license.errorcode"

    const/16 v22, 0x12d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_e
.end method

.method public resetLicense(Ljava/lang/String;)Z
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1286
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1287
    const/4 v5, 0x0

    .line 1288
    .local v5, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1290
    .local v6, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 1322
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1324
    :goto_0
    return v8

    .line 1293
    :cond_1
    const/4 v3, 0x0

    .line 1295
    .local v3, "pkgName":Ljava/lang/String;
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1296
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v9, "instanceId"

    invoke-virtual {v1, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string/jumbo v0, "pkgName"

    .line 1299
    .local v0, "column":Ljava/lang/String;
    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "LICENSE"

    invoke-virtual {v9, v10, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1301
    .local v4, "result":Landroid/content/ContentValues;
    if-nez v4, :cond_2

    .line 1302
    const-string v9, "EnterpriseLicenseService"

    const-string/jumbo v10, "resetLicense(): result is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1322
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1306
    :cond_2
    :try_start_2
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1308
    if-nez v3, :cond_3

    .line 1309
    const-string v9, "EnterpriseLicenseService"

    const-string/jumbo v10, "resetLicense(): pkgName is null, Record does not exist"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1322
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1313
    :cond_3
    :try_start_3
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v5

    .line 1314
    if-eqz v5, :cond_4

    .line 1316
    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1322
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "column":Ljava/lang/String;
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "result":Landroid/content/ContentValues;
    :goto_1
    move v8, v5

    .line 1324
    goto :goto_0

    .line 1318
    :catch_0
    move-exception v2

    .line 1319
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "resetLicense() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1322
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public resetLicenseByAdmin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    .line 1334
    const/4 v1, 0x0

    .line 1335
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1337
    .local v2, "token":J
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1338
    :cond_0
    const/4 v4, 0x0

    .line 1348
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1350
    :goto_0
    return v4

    .line 1340
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v1

    .line 1341
    if-eqz v1, :cond_2

    .line 1343
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissions(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1348
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move v4, v1

    .line 1350
    goto :goto_0

    .line 1345
    :catch_0
    move-exception v0

    .line 1346
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v5, "resetLicenseByAdmin() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1348
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1527
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 1528
    return-void
.end method
