.class public Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;
.super Lcom/sec/enterprise/knox/billing/IEnterpriseBillingPolicy$Stub;
.source "EnterpriseBillingPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static final BILLING_CURRENT_VERSION:Ljava/lang/String; = "1.2.0"

.field private static final CONTAINER_USERID_START:I = 0x64

.field private static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field private static final INVALID_ADMIN_UID:I = 0x0

.field private static final NOTIFICATION_ID:I = 0x186a1

.field private static final SYSTEM_PROP_BILLING:Ljava/lang/String; = "sys.enterprise.billing.version"

.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingPolicy"


# instance fields
.field private ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

.field private ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

.field private ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

.field private ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/sec/enterprise/knox/billing/IEnterpriseBillingPolicy$Stub;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 53
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 55
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .line 58
    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    .line 75
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private checkNoMDMPermission()Z
    .locals 4

    .prologue
    .line 94
    const-string v1, "EnterpriseBillingPolicy"

    const-string v2, "checkNoMDMPermission: start: "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING_NOMDM"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 97
    .local v0, "returnVal":Z
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkNoMDMPermission: end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return v0

    .line 95
    .end local v0    # "returnVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private deactivateEnterpriseBilling(Ljava/lang/String;)V
    .locals 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 529
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- deactivateEnterpriseBilling - profile  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->deactivateEnterpriseBillingInternal(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method private enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEnterpriseDeviceManager()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public activateProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "isActivate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 633
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateProfile - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 636
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 637
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->activateProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    .line 641
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return v0

    .line 639
    :cond_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateProfile - Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized addProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    const-string v2, "addProfile - start "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 115
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->addProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;)Z

    move-result v0

    .line 119
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return v0

    .line 117
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addProfile - Error, invalid input parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addProfileForCurrentContainer(Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;)Z
    .locals 4
    .param p1, "profile"    # Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 664
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 666
    const/4 v1, 0x0

    .line 672
    :goto_0
    return v1

    .line 669
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->addProfileForCurrentContainer(Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;)Z

    move-result v0

    .line 671
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addProfileForCurrentContainer end : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 672
    goto :goto_0
.end method

.method public addVpnToBillingProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "billingProfileName"    # Ljava/lang/String;
    .param p3, "vpnProfileName"    # Ljava/lang/String;
    .param p4, "pacakgeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 585
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVpnToBillingProfile - start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 588
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 589
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->addVpnToBillingProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 593
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    const-string v2, "addVpnToBillingProfile - end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return v0

    .line 591
    :cond_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVpnToBillingProfile - Error invcalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addVpnToBillingProfileForCurrentContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "billingProfileName"    # Ljava/lang/String;
    .param p2, "vpnProfileName"    # Ljava/lang/String;
    .param p3, "pacakgeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    const/4 v1, 0x0

    .line 759
    :goto_0
    return v1

    .line 756
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->addVpnToBillingProfileForCurrentContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 758
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addVpnToBillingProfileForCurrentContainer - end,returnValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 759
    goto :goto_0
.end method

.method public declared-synchronized allowRoaming(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 457
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    const-string v2, "allowRoaming"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 460
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 461
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->allowRoaming(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 465
    :goto_0
    monitor-exit p0

    return v0

    .line 463
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowRoaming- Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized allowWifiFallback(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    const-string v0, "EnterpriseBillingPolicy"

    const-string v1, "allowWifiFallback- start -"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 428
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->allowWifiFallback(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)V

    .line 432
    :goto_0
    const-string v0, "EnterpriseBillingPolicy"

    const-string v1, "allowWifiFallback- end -"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 430
    :cond_0
    :try_start_1
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowWifiFallback- Error invalid parameter-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableProfile - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 270
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 274
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return v0

    .line 272
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableProfile - Error Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disableProfileForApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableProfileForApps - start -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 254
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForApps(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v0

    .line 258
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableProfileForApps - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return v0

    .line 256
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableProfileForApps - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disableProfileForContainer(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    const-string/jumbo v2, "disableProfileForContainer - start - "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 233
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 234
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForContainer(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    .line 240
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableProfileForContainer - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return v0

    .line 236
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableProfileForContainer - Error Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableProfileForCurrentContainer()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 689
    const-string v1, "EnterpriseBillingPolicy"

    const-string/jumbo v2, "disableProfileForCurrentContainer - start - "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    const/4 v1, 0x0

    .line 700
    :goto_0
    return v1

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->disableProfileForCurrentContainer()Z

    move-result v0

    .line 699
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "disableProfileForCurrentContainer - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 700
    goto :goto_0
.end method

.method public declared-synchronized enableProfileForApps(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableProfileForApps - start -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 212
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForApps(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 217
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableProfileForApps - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return v0

    .line 214
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableProfileForApps - Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableProfileForContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableProfileForContainer - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 190
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForContainer(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 196
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableProfileForContainer - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return v0

    .line 192
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableProfileForContainer - Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public enableProfileForCurrentContainer(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v0

    .line 684
    .end local v0    # "returnValue":Z
    .local v1, "returnValue":I
    :goto_0
    return v1

    .line 681
    .end local v1    # "returnValue":I
    .restart local v0    # "returnValue":Z
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->enableProfileForCurrentContainer(Ljava/lang/String;)Z

    move-result v0

    .line 683
    const-string v2, "EnterpriseBillingPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableProfileForCurrentContainer - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 684
    .restart local v1    # "returnValue":I
    goto :goto_0
.end method

.method public declared-synchronized getApplicationsUsingProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationsUsingProfile - start -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    .line 409
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForACreator(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 415
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getApplicationsUsingProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 417
    :cond_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationsUsingProfile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    monitor-exit p0

    return-object v0

    .line 404
    .end local v0    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getAvailableProfiles(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    const-string v1, "EnterpriseBillingPolicy"

    const-string/jumbo v2, "getAvailableProfiles - start "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, "availableProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 570
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 571
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getAvailableProfiles(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 575
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvailableProfiles - end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-object v0

    .line 573
    :cond_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvailableProfiles - Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAvailableProfilesForCaller()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 734
    const-string v1, "EnterpriseBillingPolicy"

    const-string/jumbo v2, "getAvailableProfilesForCaller - start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "availableProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    const/4 v1, 0x0

    .line 744
    :goto_0
    return-object v1

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getAvailableProfilesForCaller()Ljava/util/List;

    move-result-object v0

    .line 743
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAvailableProfilesForCaller - end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 744
    goto :goto_0
.end method

.method public declared-synchronized getContainersUsingProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    const-string/jumbo v2, "getContainersUsingProfile - start"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 389
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 390
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getContainersUsingProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 394
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContainersUsingProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-object v0

    .line 392
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getContainersUsingProfile - Error invalid parameter -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getProfileDetails(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileDetails - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    if-eqz p1, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 170
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getProfileDetails(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v0

    .line 175
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileDetails - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-object v0

    .line 173
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileDetails - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getProfileForApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForApplication - start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    if-eqz p1, :cond_0

    .line 372
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 373
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getProfileForApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v0

    .line 377
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForApplication - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    monitor-exit p0

    return-object v0

    .line 375
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForApplication - Error invalid parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    .end local v0    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getProfileForContainer(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    const-string/jumbo v2, "getProfileForContainer - start "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    if-eqz p1, :cond_0

    .line 353
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 354
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getProfileForContainer(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v0

    .line 358
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForContainer - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-object v0

    .line 356
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileForContainer - Error invalid parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    .end local v0    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getVpnsBoundToProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 4
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 619
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVpnProfilesforBillingProfile - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x0

    .line 622
    .local v0, "vpnProfiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 623
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getVpnsBoundToProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 627
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVpnProfilesforBillingProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-object v0

    .line 625
    :cond_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVpnProfilesforBillingProfile - invalid input parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isProfileActive(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActive - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 652
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 653
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isProfileActive(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 657
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActive - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return v0

    .line 655
    :cond_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActive - Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isProfileActiveByCaller(Ljava/lang/String;)Z
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 721
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActiveByCaller - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    const/4 v1, 0x0

    .line 731
    :goto_0
    return v1

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isProfileActiveByCaller(Ljava/lang/String;)Z

    move-result v0

    .line 730
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileActiveByCaller - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 731
    goto :goto_0
.end method

.method public declared-synchronized isProfileEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileEnabled - start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 286
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isProfileEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 290
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileEnabled - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return v0

    .line 288
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileEnabled - Error Invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isProfileTurnedOn(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileTurnedOn - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 337
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isProfileTurnedOn(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 341
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileTurnedOn - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return v0

    .line 339
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfileTurnedOn - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isRoamingAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiRoamingAllowed - start -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 476
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isRoamingAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 480
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiRoamingAllowed - end -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit p0

    return v0

    .line 478
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiRoamingAllowed- Error invalid parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 472
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isWifiFallbackAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiFallbackAllowed - start -  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 444
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->isWifiFallbackAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 448
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiFallbackAllowed - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return v0

    .line 446
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiFallbackAllowed - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 440
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onAdminAdded(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 490
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- on onAdminAdded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 497
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- on AdminRemoved - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 506
    const-string v5, "EnterpriseBillingPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- on onPreAdminRemoval - start "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    if-nez v5, :cond_0

    .line 509
    const-string v5, "EnterpriseBillingPolicy"

    const-string v6, "- ebpHelper is null "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v4

    .line 515
    .local v4, "profiles":[Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 516
    const-string v5, "EnterpriseBillingPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- onPreAdminRemoval - profiles not null  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 518
    .local v3, "profileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5, v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileValidForAnAdmin(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 521
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->deactivateEnterpriseBilling(Ljava/lang/String;)V

    .line 517
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 525
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "profileName":Ljava/lang/String;
    :cond_2
    const-string v5, "EnterpriseBillingPolicy"

    const-string v6, "- on onPreAdminRemoval - end "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized removeProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfile - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 152
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->removeProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 156
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return v0

    .line 154
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfile - Error, invalid input parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeProfileForCurrentContainer(Ljava/lang/String;)Z
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 705
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfileForCurrentContainer - start - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v0, 0x0

    .line 707
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 709
    const/4 v1, 0x0

    .line 716
    :goto_0
    return v1

    .line 712
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->removeProfileForCurrentContainer(Ljava/lang/String;)Z

    move-result v0

    .line 715
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfileForCurrentContainer - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 716
    goto :goto_0
.end method

.method public removeVpnFromBillingProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ebProfileName"    # Ljava/lang/String;
    .param p3, "vpnProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 602
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnFromBillingProfile - start, profile names- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 605
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 606
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->removeVpnFromBillingProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 610
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    const-string/jumbo v2, "removeVpnFromBillingProfile - end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return v0

    .line 608
    :cond_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnFromBillingProfile - Error invalid parameter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeVpnFromBillingProfileForCurrentContainer(Ljava/lang/String;)Z
    .locals 4
    .param p1, "vpnProfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 764
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnFromBillingProfile - start, vpn profile name- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "returnValue":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->checkNoMDMPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 768
    const/4 v1, 0x0

    .line 774
    :goto_0
    return v1

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->removeVpnFromBillingProfileForCurrentContainer(Ljava/lang/String;)Z

    move-result v0

    .line 773
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeVpnFromBillingProfile - end,returnValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 774
    goto :goto_0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebEngine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    if-nez v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->getInstance(Landroid/content/Context;Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;)Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    .line 550
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_3

    .line 551
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebAsyncHandler:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->start()V

    .line 554
    :cond_3
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady EnterpriseBillingPolicyFeatureMonitor.isEnterpriseBillingFeatureSupported(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 557
    const-string/jumbo v0, "sys.enterprise.billing.version"

    const-string v1, "1.2.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "EnterpriseBillingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "systemReady SystemProperties.get(SYSTEM_PROP_BILLING, null): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sys.enterprise.billing.version"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_4
    const-string v0, "EnterpriseBillingPolicy"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void
.end method

.method public declared-synchronized turnOffProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    const-string/jumbo v2, "turnOffProfile - start  - "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 320
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->turnOffProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 325
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOffProfile - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    monitor-exit p0

    return v0

    .line 323
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOffProfile - Error invalid parameter - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized turnOnProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOnProfile - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 303
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->turnOnProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 307
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOnProfile - end  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return v0

    .line 305
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turnOnProfile - Error invalid parameter  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    const-string v1, "EnterpriseBillingPolicy"

    const-string/jumbo v2, "updateProfile - start - "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    .line 131
    .local v0, "returnValue":Z
    if-eqz p1, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->enforceActiveAdminEnterpriseBillingPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 133
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicy;->ebpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->updateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;)Z

    move-result v0

    .line 138
    :goto_0
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProfile - end - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return v0

    .line 135
    :cond_0
    :try_start_1
    const-string v1, "EnterpriseBillingPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProfile - Error, invalid input parameter- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    .end local v0    # "returnValue":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
