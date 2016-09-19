.class public Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
.super Landroid/app/enterprise/IVpnInfoPolicy$Stub;
.source "VpnInfoPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DNS_SERVERS:I = 0x0

.field private static final FORWARD_ROUTES:I = 0x2

.field private static final OCSP_SERVER:I = 0x3

.field private static final SEARCH_DOMAINS:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectivityService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private mKeyStore:Landroid/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 159
    invoke-direct {p0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;-><init>()V

    .line 116
    const-string v6, "VpnPolicy"

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->TAG:Ljava/lang/String;

    .line 118
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 122
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    .line 124
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 126
    iput-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 161
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    .line 162
    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 163
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 164
    .local v5, "vpnProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    const-string/jumbo v6, "setup_wizard_has_run"

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 166
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 169
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 170
    .local v4, "p":Lcom/android/internal/net/VpnProfile;
    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "VpnID"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 178
    :cond_3
    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 179
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 180
    const-string v6, "UsrName"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 182
    :cond_4
    iget-object v6, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    const-string v6, "UsrPwd"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    goto :goto_0

    .line 189
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/internal/net/VpnProfile;
    :cond_5
    return-void
.end method

.method private canChangeAlwaysOn(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1793
    const/4 v2, 0x0

    .line 1795
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "vpnAlwaysOnProfile"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1797
    .local v1, "currentProfile":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "vpnAlwaysOnOwner"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1800
    .local v0, "currentOwner":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1803
    const/4 v3, 0x0

    .line 1806
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z
    .locals 6
    .param p1, "p"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 1422
    if-lez p2, :cond_1

    .line 1423
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1424
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1425
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1426
    iget-object v5, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1427
    const/4 v3, 0x1

    .line 1437
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_1
    return v3

    .line 1425
    .restart local v1    # "i":I
    .restart local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    move v3, v4

    .line 1432
    goto :goto_1

    .line 1434
    :catch_0
    move-exception v0

    .line 1435
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v3, v4

    .line 1437
    goto :goto_1
.end method

.method private declared-synchronized disconnect()V
    .locals 7

    .prologue
    .line 1571
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v1, :cond_0

    .line 1572
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 1574
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_1

    .line 1575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1576
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    const-string v4, "[Legacy VPN]"

    const-string v5, "[Legacy VPN]"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v1, v4, v5, v6}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1577
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    .end local v2    # "token":J
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1579
    :catch_0
    move-exception v0

    .line 1580
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1571
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    return-void
.end method

.method private enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_VPN"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;
    .locals 8
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1835
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1836
    :cond_0
    const/4 v4, 0x0

    .line 1856
    :cond_1
    :goto_0
    return-object v4

    .line 1839
    :cond_2
    const/4 v4, 0x0

    .line 1841
    .local v4, "result":Lcom/android/internal/net/VpnProfile;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 1842
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1843
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 1844
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 1845
    move-object v4, v2

    .line 1846
    goto :goto_0

    .line 1851
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1852
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "VpnPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in getProfileByName("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getProfileIndexFromName(Ljava/lang/String;)I
    .locals 4
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 1401
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1402
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1404
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1412
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_1
    return v1

    .line 1403
    .restart local v1    # "i":I
    .restart local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1409
    .end local v1    # "i":I
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1412
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1235
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1236
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v8

    .line 1237
    .local v8, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 1238
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/net/VpnProfile;

    .line 1239
    .local v7, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1240
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p3, :pswitch_data_0

    .line 1270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    :goto_0
    return-object v6

    .line 1243
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "p":Lcom/android/internal/net/VpnProfile;
    .restart local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :pswitch_0
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    .line 1244
    .local v2, "lDnsServer":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1248
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "lDnsServer":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_1
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v5, :cond_1

    aget-object v4, v0, v1

    .line 1249
    .local v4, "lSearchDomain":Ljava/lang/String;
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1253
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "lSearchDomain":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_2
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v5, :cond_1

    aget-object v3, v0, v1

    .line 1254
    .local v3, "lRoutes":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1253
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1262
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "lRoutes":Ljava/lang/String;
    .end local v5    # "len$":I
    .local v1, "i$":Ljava/util/Iterator;
    :pswitch_3
    iget-object v9, v7, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1270
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v8    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 1241
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isCredentialsLocked()Z
    .locals 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidAlwaysOnProfile(Lcom/android/internal/net/VpnProfile;)Z
    .locals 1
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 1783
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    .locals 9
    .param p1, "p"    # Lcom/android/internal/net/VpnProfile;

    .prologue
    .line 1501
    const/4 v6, 0x1

    :try_start_0
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "VpnID"

    aput-object v7, v0, v6

    .line 1504
    .local v0, "Column":[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v7, v1, v6

    .line 1507
    .local v1, "Value":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "VPN"

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1508
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1509
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "edm.intent.action.internal.VPN_NEW_PROFILE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1510
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1511
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1512
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    .end local v0    # "Column":[Ljava/lang/String;
    .end local v1    # "Value":[Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "token":J
    :cond_0
    :goto_0
    return-void

    .line 1514
    :catch_0
    move-exception v2

    .line 1515
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "index"    # I
    .param p3, "p"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1522
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 1523
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1524
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 1525
    invoke-virtual {v1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    .line 1526
    .local v0, "oldProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_0

    .line 1527
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Landroid/app/enterprise/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z

    .line 1530
    .end local v0    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method

.method private retrieveVpnListFromStorage()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v0, "ProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v8

    if-nez v8, :cond_1

    .line 953
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v9, "VPN_"

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 954
    .local v4, "keys":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v8, v4

    if-lez v8, :cond_1

    .line 955
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v1, v2

    .line 956
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 957
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VPN_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    .line 958
    .local v7, "value":[B
    if-eqz v7, :cond_0

    .line 959
    invoke-static {v3, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    .line 960
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_0

    .line 961
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v7    # "value":[B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":[Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_1
    return-object v0
.end method

.method private saveAlwaysOnProfileToDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1815
    const/4 v1, 0x0

    .line 1817
    .local v1, "userId":I
    if-eqz p2, :cond_0

    .line 1818
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "vpnAlwaysOnProfile"

    invoke-virtual {v2, v3, p2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 1821
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "vpnAlwaysOnOwner"

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    and-int/2addr v0, v2

    .line 1825
    return v0

    .line 1817
    .end local v0    # "ret":Z
    :cond_0
    const-string p2, ""

    goto :goto_0
.end method

.method private saveProfileToStorage(Landroid/app/enterprise/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "p"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1468
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VPN_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v14

    const/4 v15, -0x1

    const/16 v16, 0x1

    invoke-virtual/range {v12 .. v16}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1469
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v12, "edm.intent.action.internal.VPN_NEW_PROFILE"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1471
    .local v8, "token":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v5, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1472
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1474
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1475
    .local v7, "uid":I
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1476
    .local v10, "username":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getUserPwd(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1477
    .local v6, "pwd":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v2, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v2, v12

    const/4 v12, 0x1

    const-string v13, "VpnID"

    aput-object v13, v2, v12

    .line 1480
    .local v2, "columns":[Ljava/lang/String;
    const/4 v12, 0x2

    new-array v11, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v13, v11, v12

    .line 1483
    .local v11, "values":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1484
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1485
    const-string v12, "VpnID"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    const-string v12, "UsrName"

    invoke-virtual {v3, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string v12, "UsrPwd"

    invoke-virtual {v3, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "VPN"

    invoke-virtual {v12, v13, v2, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1493
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pwd":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "token":J
    .end local v10    # "username":Ljava/lang/String;
    .end local v11    # "values":[Ljava/lang/String;
    :goto_0
    return v12

    .line 1490
    :catch_0
    move-exception v4

    .line 1491
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1493
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private setProfileId()J
    .locals 8

    .prologue
    .line 1445
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1446
    .local v4, "millis":J
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "VPN_"

    invoke-virtual {v3, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1447
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1448
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1449
    aget-object v3, v2, v1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1450
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 1451
    const/4 v1, 0x0

    .line 1448
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1456
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v4    # "millis":J
    :catch_0
    move-exception v0

    .line 1457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1459
    const-wide/16 v4, -0x1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-wide v4
.end method

.method private setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1173
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-nez p3, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return v8

    .line 1179
    :cond_1
    const-string v1, ""

    .line 1180
    .local v1, "endListAddress":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v2, "endListAddressBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1182
    .local v5, "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1185
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1188
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_3

    .line 1190
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1192
    :cond_3
    if-nez p4, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    invoke-direct {p0, v1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1195
    :cond_4
    const/4 v10, 0x2

    if-ne p4, v10, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1198
    :cond_5
    const/4 v10, 0x3

    if-ne p4, v10, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1202
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1203
    .local v4, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v7

    .line 1204
    .local v7, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 1205
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnProfile;

    .line 1206
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_0

    .line 1207
    packed-switch p4, :pswitch_data_0

    .line 1222
    :goto_2
    :try_start_0
    invoke-direct {p0, p1, v4, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v8, v9

    .line 1227
    goto/16 :goto_0

    .line 1209
    :pswitch_0
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    goto :goto_2

    .line 1212
    :pswitch_1
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    goto :goto_2

    .line 1215
    :pswitch_2
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    goto :goto_2

    .line 1218
    :pswitch_3
    iput-object v1, v6, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    goto :goto_2

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "VpnPolicy"

    const-string v10, "VpnInfoPolicy.setProfileProperty() - Error to save profile !"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized startVpnService()V
    .locals 2

    .prologue
    .line 1561
    monitor-enter p0

    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    :goto_0
    monitor-exit p0

    return-void

    .line 1563
    :catch_0
    move-exception v0

    .line 1564
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1561
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 1275
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 1276
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1275
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1280
    :cond_1
    const/16 v8, 0x20

    .line 1281
    .local v8, "prefixLength":I
    if-eqz p2, :cond_2

    .line 1282
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 1283
    .local v7, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 1284
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1286
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 1287
    .local v2, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 1289
    .local v5, "integer":I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 1291
    :cond_3
    const/4 v9, 0x0

    .line 1297
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v5    # "integer":I
    .end local v6    # "len$":I
    .end local v8    # "prefixLength":I
    :goto_1
    return v9

    .line 1294
    :catch_0
    move-exception v3

    .line 1295
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 1297
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private validateUrl(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1921
    const/4 v1, 0x0

    .line 1922
    .local v1, "urlValid":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1924
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    .local v0, "u":Ljava/net/URL;
    const/4 v1, 0x1

    .line 1933
    .end local v0    # "u":Ljava/net/URL;
    :goto_0
    return v1

    .line 1931
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1926
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public allowOnlySecureConnections(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1342
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1344
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1345
    .local v2, "profileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1346
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 1347
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1348
    .local v4, "type":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1349
    .local v3, "state":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "PPTP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    const-string v5, "CONNECTED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1351
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    goto :goto_0

    .line 1356
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "state":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string v8, "allowOnlySecureVPN"

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    return v5
.end method

.method public allowUserAddProfiles(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1748
    const-string v0, "VpnPolicy"

    const-string v1, "allowUserAddProfiles"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1750
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "VPN"

    const-string v3, "allowUserAddProfiles"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowUserChangeProfiles(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1713
    const-string v0, "VpnPolicy"

    const-string v1, "allowUserChangeProfiles"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1715
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "VPN"

    const-string v3, "allowUserChangeProfiles"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public allowUserSetAlwaysOn(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1677
    const-string v0, "VpnPolicy"

    const-string v1, "allowUserSetAlwaysOn"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1679
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "VPN"

    const-string v3, "allowUserSetAlwaysOn"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public checkRacoonSecurity(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "racoon"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 1368
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isManagedProfileUser(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1369
    const-string v2, "VpnPolicy"

    const-string v3, " checkRacoonSecurity calls from Profile return default value"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1391
    :cond_0
    :goto_0
    return v0

    .line 1372
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1373
    const/4 v0, 0x1

    .line 1374
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isOnlySecureConnectionsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1375
    if-eqz p2, :cond_4

    array-length v2, p2

    if-le v2, v1, :cond_4

    aget-object v2, p2, v4

    if-eqz v2, :cond_2

    aget-object v2, p2, v4

    const-string/jumbo v3, "udprsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p2, v4

    const-string/jumbo v3, "hybridrsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p2, v4

    const-string/jumbo v3, "udppsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    aget-object v2, p2, v1

    if-eqz v2, :cond_4

    aget-object v2, p2, v1

    const-string/jumbo v3, "xauthrsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p2, v1

    const-string/jumbo v3, "xauthpsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p2, v1

    const-string/jumbo v3, "ikev2psk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v1, p2, v1

    const-string/jumbo v2, "ikev2rsa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1382
    :cond_3
    const/4 v0, 0x1

    .line 1386
    :goto_1
    if-nez v0, :cond_0

    .line 1387
    const v1, 0x1040b5b

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    .line 1384
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public declared-synchronized createProfile(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/VpnAdminProfile;)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "adminProfile"    # Landroid/app/enterprise/VpnAdminProfile;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 975
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 978
    if-nez p2, :cond_1

    .line 1138
    :cond_0
    :goto_0
    monitor-exit p0

    return v7

    .line 981
    :cond_1
    :try_start_1
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v10, 0x20

    if-gt v8, v10, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 989
    new-instance v6, Lcom/android/internal/net/VpnProfile;

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 990
    .local v6, "vpnProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v6, :cond_0

    .line 991
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 992
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 993
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v9

    :goto_1
    iput-boolean v8, v6, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 995
    const-string v0, ""

    .line 996
    .local v0, "addresses":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 997
    .local v1, "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->dnsServers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 998
    .local v5, "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1001
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1134
    .end local v0    # "addresses":Ljava/lang/String;
    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "listAddresses":Ljava/lang/String;
    .end local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :catch_0
    move-exception v2

    .line 1135
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v8, "VpnPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "createProfile exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 975
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v6    # "vpnProfile":Lcom/android/internal/net/VpnProfile;
    :cond_2
    move v8, v7

    .line 993
    goto :goto_1

    .line 1004
    .restart local v0    # "addresses":Ljava/lang/String;
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_4

    .line 1006
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1008
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    const/4 v8, 0x0

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1011
    :cond_5
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 1013
    const-string v0, ""

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1015
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->forwardRoutes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1016
    .restart local v5    # "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1019
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1022
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_7

    .line 1024
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1026
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v8, 0x1

    invoke-direct {p0, v0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1029
    :cond_8
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 1031
    const-string v0, ""

    .line 1032
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    const-string v8, ""

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1033
    .restart local v1    # "addressesBuilder":Ljava/lang/StringBuilder;
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->searchDomains:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1034
    .restart local v5    # "listAddresses":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1037
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    const-string v8, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1040
    .end local v5    # "listAddresses":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_a

    .line 1042
    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1044
    :cond_a
    iput-object v0, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 1046
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 1047
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 1049
    :cond_b
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 1050
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 1053
    :cond_c
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "PPTP"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1054
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1055
    iget-boolean v8, p2, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    iput-boolean v8, v6, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 1129
    :cond_d
    :goto_5
    iget-object v8, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v4

    .line 1130
    .local v4, "index":I
    if-gez v4, :cond_0

    invoke-direct {p0, v6, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1131
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveProfileToStorage(Landroid/app/enterprise/ContextInfo;Lcom/android/internal/net/VpnProfile;)Z

    move-result v7

    goto/16 :goto_0

    .line 1056
    .end local v4    # "index":I
    :cond_e
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "L2TP_IPSEC_PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1057
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1060
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1061
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1062
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto :goto_5

    .line 1064
    :cond_f
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "L2TP_IPSEC"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1065
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1068
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1069
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1070
    const/4 v8, 0x2

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_5

    .line 1074
    :cond_10
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_HYBRID_RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1075
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1076
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    goto :goto_5

    .line 1077
    :cond_11
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_XAUTH_PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1078
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1081
    const/4 v8, 0x4

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1082
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1083
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto/16 :goto_5

    .line 1085
    :cond_12
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_XAUTH_RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1086
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1089
    const/4 v8, 0x5

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1090
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1091
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    goto/16 :goto_5

    .line 1095
    :cond_13
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_IKEV2_PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1097
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1100
    const/4 v8, 0x6

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1101
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 1102
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ipsecIdentifier:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    goto/16 :goto_5

    .line 1104
    :cond_14
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v9, "IPSEC_IKEV2_RSA"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1106
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1110
    const/4 v8, 0x7

    iput v8, v6, Lcom/android/internal/net/VpnProfile;->type:I

    .line 1111
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1112
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1116
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 1117
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->validateUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1118
    iget-object v8, p2, Landroid/app/enterprise/VpnAdminProfile;->ocspServerUrl:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5
.end method

.method public declared-synchronized deleteProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 706
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 709
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 710
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 711
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 712
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 713
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 714
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 715
    .local v2, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v6, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 718
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v6, :cond_2

    .line 719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 720
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface {v6, v7}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 721
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v6, v6, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 723
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 725
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->removeProfileFromStorage(Lcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    const/4 v6, 0x1

    .line 735
    .end local v1    # "i":I
    .end local v2    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v4    # "token":J
    :goto_1
    monitor-exit p0

    return v6

    .line 712
    .restart local v1    # "i":I
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 732
    .end local v1    # "i":I
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 706
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public disconnectActiveVpnConnections()V
    .locals 0

    .prologue
    .line 1594
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnect()V

    .line 1595
    return-void
.end method

.method public getAlwaysOnProfile(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1648
    const-string v6, "VpnPolicy"

    const-string/jumbo v7, "getAlwaysOnProfile"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    const/4 v5, 0x0

    .line 1651
    .local v5, "result":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v7, "LOCKDOWN_VPN"

    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 1653
    .local v1, "lockdownKey":[B
    if-eqz v1, :cond_1

    .line 1654
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1655
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1656
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 1657
    .local v2, "lockdownKeyStr":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 1658
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v6, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1659
    iget-object v5, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 1666
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "lockdownKeyStr":Ljava/lang/String;
    .end local v3    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    return-object v5
.end method

.method public declared-synchronized getCaCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 662
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, "certificate":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 675
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 667
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 668
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 669
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 670
    .local v2, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 671
    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 662
    .end local v0    # "certificate":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getDnsDomains(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
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
    .line 1161
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
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
    .line 1153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForwardRoutes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
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
    .line 1169
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 448
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 449
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 460
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 452
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 453
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 454
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 455
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 456
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 448
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getIpSecIdentifier(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1324
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1325
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1326
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 1327
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1328
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 1329
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1330
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1335
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getL2TPSecret(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 798
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 799
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 811
    :goto_0
    monitor-exit p0

    return-object v2

    .line 802
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 803
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 804
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 805
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 807
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 804
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    move-object v2, v3

    .line 811
    goto :goto_0

    .line 798
    .end local v1    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 410
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 411
    if-nez p2, :cond_1

    .line 422
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 414
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 415
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 416
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 417
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 410
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getOcspServerUrl(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1893
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 1894
    .local v1, "ocspServerUrlList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1895
    .local v0, "ocspServerUrl":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1896
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ocspServerUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1898
    .restart local v0    # "ocspServerUrl":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getPresharedKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 619
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 620
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 621
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 622
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 623
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 629
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getServerName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 429
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 430
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 441
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 433
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 434
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 435
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 436
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 437
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 429
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 467
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 468
    if-nez p2, :cond_1

    .line 522
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v8

    .line 472
    :cond_1
    const/4 v1, 0x0

    .line 473
    .local v1, "found":Z
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 474
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 475
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 476
    .local v4, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_2

    .line 477
    const/4 v1, 0x1

    .line 483
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/internal/net/VpnProfile;
    :cond_3
    if-eqz v1, :cond_0

    .line 487
    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-nez v9, :cond_4

    .line 488
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->startVpnService()V

    .line 490
    :cond_4
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    if-eqz v9, :cond_7

    .line 491
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 492
    .local v6, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 493
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    const/4 v3, 0x0

    .line 495
    .local v3, "name":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v9, :cond_5

    .line 496
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v9, v9, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 498
    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 499
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v9, v9, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    packed-switch v9, :pswitch_data_0

    .line 513
    const-string v8, "IDLE"

    goto :goto_0

    .line 501
    :pswitch_0
    const-string v8, "DISCONNECTED"

    goto :goto_0

    .line 503
    :pswitch_1
    const-string v8, "INITIALIZING"

    goto :goto_0

    .line 505
    :pswitch_2
    const-string v8, "CONNECTING"

    goto :goto_0

    .line 507
    :pswitch_3
    const-string v8, "CONNECTED"

    goto :goto_0

    .line 509
    :pswitch_4
    const-string v8, "TIMEOUT"

    goto :goto_0

    .line 511
    :pswitch_5
    const-string v8, "FAILED"

    goto :goto_0

    .line 516
    :cond_6
    const-string v8, "IDLE"

    goto :goto_0

    .line 519
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "token":J
    :cond_7
    const-string v8, "IDLE"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 467
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "found":Z
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getSupportedConnectionTypes(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 2
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
    .line 1903
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1905
    .local v0, "connectionTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "PPTP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1906
    const-string v1, "L2TP_IPSEC_PSK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1907
    const-string v1, "L2TP_IPSEC"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1908
    const-string v1, "IPSEC_HYBRID_RSA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1909
    const-string v1, "IPSEC_XAUTH_PSK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1910
    const-string v1, "IPSEC_XAUTH_RSA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1913
    const-string v1, "IPSEC_IKEV2_PSK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1914
    const-string v1, "IPSEC_IKEV2_RSA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1916
    return-object v0
.end method

.method public declared-synchronized getType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 369
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 370
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 371
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 372
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 373
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    iget v3, v1, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    const-string v3, "PPTP"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    :goto_1
    monitor-exit p0

    return-object v3

    .line 378
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "p":Lcom/android/internal/net/VpnProfile;
    :pswitch_1
    :try_start_1
    const-string v3, "L2TP_IPSEC_PSK"

    goto :goto_1

    .line 380
    :pswitch_2
    const-string v3, "L2TP_IPSEC"

    goto :goto_1

    .line 382
    :pswitch_3
    const-string v3, "IPSEC_XAUTH_PSK"

    goto :goto_1

    .line 384
    :pswitch_4
    const-string v3, "IPSEC_XAUTH_RSA"

    goto :goto_1

    .line 386
    :pswitch_5
    const-string v3, "IPSEC_HYBRID_RSA"

    goto :goto_1

    .line 393
    :pswitch_6
    const-string v3, "IPSEC_IKEV2_PSK"

    goto :goto_1

    .line 396
    :pswitch_7
    const-string v3, "IPSEC_IKEV2_RSA"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 403
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 369
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public declared-synchronized getUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 742
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 743
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 754
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 746
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 747
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 748
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 749
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 750
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 742
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 531
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 533
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 534
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 535
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 536
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 530
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserNameById(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 550
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrName"

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserPwd(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "providerName"    # Ljava/lang/String;

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 569
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 570
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v2

    .line 571
    .local v2, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 572
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 573
    .local v1, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    iget-object v3, v1, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v2    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 568
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getUserPwdById(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 560
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "VPN"

    const-string v2, "VpnID"

    const-string v3, "UsrPwd"

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVPNList(Landroid/app/enterprise/ContextInfo;)[Ljava/lang/String;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x0

    .line 919
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 920
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 922
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-nez v3, :cond_1

    .line 938
    :cond_0
    return-object v0

    .line 926
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 930
    const/4 v2, 0x0

    .line 932
    .local v2, "position":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 934
    .local v0, "VpnList":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 935
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    iget-object v4, v4, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v4, v0, v2

    .line 936
    add-int/lit8 v2, v2, 0x1

    .line 934
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isAdminProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 894
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 895
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "VPN"

    const-string v6, "VpnID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 897
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 912
    :cond_0
    :goto_0
    return v3

    .line 900
    :cond_1
    if-eqz p2, :cond_0

    .line 903
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 905
    .local v0, "AdminVpnId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 908
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 909
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isL2TPSecretEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 818
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 819
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v3

    .line 822
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 823
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 824
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 825
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 827
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    .line 824
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isOnlySecureConnectionsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1362
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1363
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "RESTRICTION"

    const-string v2, "allowOnlySecureVPN"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPPTPEncryptionEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 868
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 870
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 886
    :goto_0
    return v2

    .line 873
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v1

    .line 874
    .local v1, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 875
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 876
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 878
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v2, :cond_1

    .line 879
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 881
    goto :goto_0

    .line 875
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_3
    move v2, v3

    .line 886
    goto :goto_0
.end method

.method public isUserAddProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1763
    const-string v2, "VpnPolicy"

    const-string/jumbo v3, "isUserAddProfilesAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "VPN"

    const-string v4, "allowUserAddProfiles"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1768
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1770
    .local v0, "ret":Z
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1771
    const v2, 0x1040b95

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1774
    :cond_1
    return v0
.end method

.method public isUserChangeProfilesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1727
    const-string v2, "VpnPolicy"

    const-string/jumbo v3, "isUserChangeProfilesAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "VPN"

    const-string v4, "allowUserChangeProfiles"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1732
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1734
    .local v0, "ret":Z
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1735
    const v2, 0x1040b94

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1738
    :cond_1
    return v0
.end method

.method public isUserSetAlwaysOnAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1692
    const-string v2, "VpnPolicy"

    const-string/jumbo v3, "isUserSetAlwaysOnAllowed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "VPN"

    const-string v4, "allowUserSetAlwaysOn"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1697
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1699
    .local v0, "ret":Z
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1700
    const v2, 0x1040b93

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1703
    :cond_1
    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1863
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 1869
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 1872
    .local v0, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1875
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    .line 1877
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1946
    return-void
.end method

.method public setAlwaysOnProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    .line 1608
    const-string v4, "VpnPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAlwaysOnProfile - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1611
    const/4 v1, 0x0

    .line 1612
    .local v1, "success":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->canChangeAlwaysOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1614
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1616
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move-result v1

    .line 1627
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1629
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->saveAlwaysOnProfileToDb(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    .line 1632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1633
    .local v2, "uid":J
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 1634
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1638
    .end local v2    # "uid":J
    :cond_2
    return v1

    .line 1619
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileByName(Ljava/lang/String;)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 1620
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isValidAlwaysOnProfile(Lcom/android/internal/net/VpnProfile;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1622
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    iget-object v6, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    goto :goto_0
.end method

.method public declared-synchronized setCaCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "certificate"    # Ljava/lang/String;

    .prologue
    .line 637
    monitor-enter p0

    const/4 v4, 0x0

    .line 638
    .local v4, "ret":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 639
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 642
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 643
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 644
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 645
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 646
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :try_start_1
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    const/4 v4, 0x1

    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 655
    :goto_0
    monitor-exit p0

    return v5

    .line 650
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 637
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setDnsDomains(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1157
    .local p3, "searchDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public setDnsServers(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1149
    .local p3, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEncryptionEnabledForPPTP(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 840
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 841
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 861
    :cond_0
    :goto_0
    monitor-exit p0

    return v5

    .line 845
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 846
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 847
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 848
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 849
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    iget v6, v3, Lcom/android/internal/net/VpnProfile;->type:I

    if-nez v6, :cond_0

    .line 850
    move-object v2, v3

    .line 851
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-boolean p3, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    :try_start_2
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    const/4 v5, 0x1

    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 840
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setForwardRoutes(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1165
    .local p3, "forwardRoutes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setId(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "Id"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 199
    monitor-enter p0

    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_1

    .line 230
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 202
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 203
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .local v1, "cv":Landroid/content/ContentValues;
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 206
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 207
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 208
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 209
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 210
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 211
    invoke-virtual {v5}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v9

    invoke-static {p3, v9}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 212
    .local v4, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_0

    invoke-direct {p0, v4, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 213
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 214
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 217
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 220
    .local v7, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    goto :goto_0

    .line 226
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 227
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 199
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public setIpSecIdentifier(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "ipSecIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1301
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1302
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p3, :cond_1

    .line 1303
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 1304
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1305
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 1306
    .local v3, "p":Lcom/android/internal/net/VpnProfile;
    iget-object v6, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1307
    iput-object p3, v3, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1308
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v2

    .line 1310
    .local v2, "index":I
    :try_start_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    const/4 v5, 0x1

    .line 1320
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "p":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    :goto_0
    return v5

    .line 1311
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v3    # "p":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "VpnPolicy"

    const-string v7, "VpnInfoPolicy.setIpSecIdentifier() - failed to save profile !"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setL2TPSecret(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "secret"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 763
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 764
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 765
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 766
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 767
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 768
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 769
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 770
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 771
    move-object v2, v3

    .line 772
    if-eqz p3, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 773
    iput-object p4, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    :goto_0
    :try_start_1
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 781
    const/4 v5, 0x1

    .line 790
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    :goto_1
    monitor-exit p0

    return v5

    .line 774
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    if-nez p3, :cond_0

    .line 775
    :try_start_2
    const-string v6, ""

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 763
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 782
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 239
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    if-ge v5, v6, :cond_0

    .line 241
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 243
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 244
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 245
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 246
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 247
    move-object v2, v3

    .line 248
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 249
    invoke-direct {p0, v2, v1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkDuplicateName(Lcom/android/internal/net/VpnProfile;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 250
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    const/4 v5, 0x1

    .line 259
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public setOcspServerUrl(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "ocspServerUrl"    # Ljava/lang/String;

    .prologue
    .line 1880
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1881
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1882
    .local v1, "result":Z
    if-nez p3, :cond_0

    .line 1883
    const-string p3, ""

    .line 1886
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1887
    const/4 v2, 0x3

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->setProfileProperty(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;I)Z

    move-result v1

    .line 1889
    return v1
.end method

.method public declared-synchronized setPresharedKey(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "psk"    # Ljava/lang/String;

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 589
    const/4 v5, 0x0

    .line 590
    .local v5, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v6

    if-nez v6, :cond_1

    .line 591
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 594
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 595
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 596
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 597
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 598
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 599
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 600
    move-object v2, v3

    .line 601
    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 602
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :cond_0
    const/4 v5, 0x1

    .line 611
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return v5

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 588
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "ret":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized setServerName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 268
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 269
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 270
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v4

    .line 271
    .local v4, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 272
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/VpnProfile;

    .line 273
    .local v3, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v2, 0x0

    .line 274
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 275
    move-object v2, v3

    .line 276
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 277
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    const/4 v5, 0x1

    .line 285
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v4    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :goto_0
    monitor-exit p0

    return v5

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "certificate"    # Ljava/lang/String;

    .prologue
    .line 683
    monitor-enter p0

    const/4 v4, 0x0

    .line 684
    .local v4, "ret":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 685
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isCredentialsLocked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 688
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v1

    .line 689
    .local v1, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v3

    .line 690
    .local v3, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 691
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 692
    .local v2, "newProfile":Lcom/android/internal/net/VpnProfile;
    iput-object p3, v2, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    :try_start_1
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    const/4 v4, 0x1

    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_0
    move v5, v4

    .line 701
    :goto_0
    monitor-exit p0

    return v5

    .line 696
    .restart local v1    # "index":I
    .restart local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .restart local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_0

    .line 683
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "index":I
    .end local v2    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized setUserName(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 293
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 294
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 297
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 298
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v5

    .line 299
    .local v5, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 300
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 301
    .local v4, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v4, :cond_0

    .line 302
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 303
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 304
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 309
    :goto_0
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 310
    const-string v8, "adminUid"

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 311
    const-string v8, "VpnID"

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v8, "UsrName"

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "adminUid"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "VpnID"

    aput-object v9, v0, v8

    .line 316
    .local v0, "columns":[Ljava/lang/String;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    iget-object v9, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v9, v6, v8

    .line 321
    .local v6, "values":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "VPN"

    invoke-virtual {v8, v9, v0, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 329
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_1
    monitor-exit p0

    return v7

    .line 306
    .restart local v3    # "index":I
    .restart local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .restart local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :cond_1
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, v4, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 307
    const-string v8, ""

    iput-object v8, v4, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 325
    .end local v3    # "index":I
    .end local v4    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 293
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized setUserPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 337
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 339
    if-eqz p3, :cond_0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 340
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->getProfileIndexFromName(Ljava/lang/String;)I

    move-result v3

    .line 341
    .local v3, "index":I
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->retrieveVpnListFromStorage()Ljava/util/ArrayList;

    move-result-object v6

    .line 342
    .local v6, "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 343
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 344
    .local v5, "oldProfile":Lcom/android/internal/net/VpnProfile;
    const/4 v4, 0x0

    .line 345
    .local v4, "newProfile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    .line 346
    move-object v4, v5

    .line 347
    iput-object p3, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 348
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->replaceProfile(Landroid/app/enterprise/ContextInfo;ILcom/android/internal/net/VpnProfile;)V

    .line 349
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v9, "UsrPwd"

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v9, "VpnID"

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "VpnID"

    aput-object v10, v0, v9

    .line 354
    .local v0, "columns":[Ljava/lang/String;
    const/4 v9, 0x2

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, v4, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    aput-object v10, v7, v9

    .line 355
    .local v7, "values":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->mEDMStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "VPN"

    invoke-virtual {v9, v10, v0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 362
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "index":I
    .end local v4    # "newProfile":Lcom/android/internal/net/VpnProfile;
    .end local v5    # "oldProfile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 359
    :catch_0
    move-exception v2

    .line 360
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 337
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setVpnProfile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sName"    # Ljava/lang/String;

    .prologue
    .line 1538
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->enforceOwnerOnlyAndVpnPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1556
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 1941
    return-void
.end method
