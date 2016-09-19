.class public Lcom/android/server/enterprise/datetime/DateTimePolicy;
.super Landroid/app/enterprise/IDateTimePolicy$Stub;
.source "DateTimePolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "DateTimePolicyService"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mNtpInfo:Landroid/app/enterprise/NtpInfo;

.field private mNtpInfoLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Landroid/app/enterprise/IDateTimePolicy$Stub;-><init>()V

    .line 98
    iput-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 100
    iput-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 103
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    .line 718
    new-instance v1, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;-><init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 110
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    new-instance v1, Landroid/app/enterprise/NtpInfo;

    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/enterprise/NtpInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Landroid/app/enterprise/NtpInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V

    return-void
.end method

.method private enforceDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DATE_TIME"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_DATE_TIME"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private loadNtpInfo()V
    .locals 12

    .prologue
    .line 606
    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v8

    .line 607
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ntpServer"

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "ntpServer":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-virtual {v7, v2}, Landroid/app/enterprise/NtpInfo;->setServer(Ljava/lang/String;)V

    .line 610
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ntpMaxAttempts"

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 612
    .local v1, "maxAttempts":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 614
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/NtpInfo;->setMaxAttempts(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ntpPollInterval"

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 624
    .local v3, "pollingInterval":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 626
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/app/enterprise/NtpInfo;->setPollingInterval(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 634
    :goto_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ntpPollInterShorter"

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 636
    .local v4, "pollingIntervalShorter":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 638
    :try_start_5
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/app/enterprise/NtpInfo;->setPollingIntervalShorter(J)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 646
    :goto_2
    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ntpTimeout"

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    .line 648
    .local v6, "timeout":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 650
    :try_start_7
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/app/enterprise/NtpInfo;->setTimeout(J)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 658
    :goto_3
    :try_start_8
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "ntpThreshould"

    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v5

    .line 660
    .local v5, "timeErrorThreshold":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 662
    :try_start_9
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/enterprise/NtpInfo;->setTimeErrorThreshold(I)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 670
    :goto_4
    :try_start_a
    monitor-exit v8

    .line 671
    return-void

    .line 615
    .end local v3    # "pollingInterval":Ljava/lang/String;
    .end local v4    # "pollingIntervalShorter":Ljava/lang/String;
    .end local v5    # "timeErrorThreshold":Ljava/lang/String;
    .end local v6    # "timeout":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 616
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v7, "DateTimePolicyService"

    const-string/jumbo v9, "failed to convert max attempts"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/enterprise/NtpInfo;->setMaxAttempts(I)V

    goto :goto_0

    .line 670
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "maxAttempts":Ljava/lang/String;
    .end local v2    # "ntpServer":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v7

    .line 620
    .restart local v1    # "maxAttempts":Ljava/lang/String;
    .restart local v2    # "ntpServer":Ljava/lang/String;
    :cond_0
    :try_start_b
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/enterprise/NtpInfo;->setMaxAttempts(I)V

    goto :goto_0

    .line 627
    .restart local v3    # "pollingInterval":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 628
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    const-string v7, "DateTimePolicyService"

    const-string/jumbo v9, "failed to convert polling interval"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/enterprise/NtpInfo;->setPollingInterval(J)V

    goto :goto_1

    .line 632
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/enterprise/NtpInfo;->setPollingInterval(J)V

    goto :goto_1

    .line 639
    .restart local v4    # "pollingIntervalShorter":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 640
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    const-string v7, "DateTimePolicyService"

    const-string/jumbo v9, "failed to convert polling interval shorter"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/enterprise/NtpInfo;->setPollingIntervalShorter(J)V

    goto :goto_2

    .line 644
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/enterprise/NtpInfo;->setPollingIntervalShorter(J)V

    goto :goto_2

    .line 651
    .restart local v6    # "timeout":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 652
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    const-string v7, "DateTimePolicyService"

    const-string/jumbo v9, "failed to convert timeout"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/enterprise/NtpInfo;->setTimeout(J)V

    goto :goto_3

    .line 656
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/app/enterprise/NtpInfo;->setTimeout(J)V

    goto :goto_3

    .line 663
    .restart local v5    # "timeErrorThreshold":Ljava/lang/String;
    :catch_4
    move-exception v0

    .line 664
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    const-string v7, "DateTimePolicyService"

    const-string/jumbo v9, "failed to convert time error threshold"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/enterprise/NtpInfo;->setTimeErrorThreshold(I)V

    goto :goto_4

    .line 668
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_4
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/enterprise/NtpInfo;->setTimeErrorThreshold(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4
.end method

.method private resetNtpInfo()Z
    .locals 11

    .prologue
    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    .line 674
    const-string v0, "DateTimePolicyService"

    const-string/jumbo v1, "resetNtpInfo"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v4, v2

    move-wide v6, v2

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->saveNtpInfoInDbAndUpdateCache(Ljava/lang/String;JJJIII)Z

    move-result v0

    return v0
.end method

.method private saveNtpInfoInDbAndUpdateCache(Ljava/lang/String;JJJIII)Z
    .locals 6
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "polInterval"    # J
    .param p6, "polIntShort"    # J
    .param p8, "maxAttempts"    # I
    .param p9, "timeThreshold"    # I
    .param p10, "uid"    # I

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 683
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "ntpServer"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 685
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ntpTimeout"

    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 687
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ntpPollInterval"

    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 690
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ntpPollInterShorter"

    const-wide/16 v4, 0x0

    cmp-long v1, p6, v4

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 693
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ntpMaxAttempts"

    if-nez p8, :cond_3

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 695
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ntpThreshould"

    if-nez p9, :cond_4

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 698
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-virtual {v1, p1}, Landroid/app/enterprise/NtpInfo;->setServer(Ljava/lang/String;)V

    .line 699
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-virtual {v1, p8}, Landroid/app/enterprise/NtpInfo;->setMaxAttempts(I)V

    .line 700
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-virtual {v1, p2, p3}, Landroid/app/enterprise/NtpInfo;->setTimeout(J)V

    .line 701
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-virtual {v1, p4, p5}, Landroid/app/enterprise/NtpInfo;->setPollingInterval(J)V

    .line 702
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-virtual {v1, p6, p7}, Landroid/app/enterprise/NtpInfo;->setPollingIntervalShorter(J)V

    .line 703
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-virtual {v1, p9}, Landroid/app/enterprise/NtpInfo;->setTimeErrorThreshold(I)V

    .line 704
    iget-object v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "ntpLastAdminUid"

    if-nez p10, :cond_5

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 707
    return v0

    .line 685
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 687
    :cond_1
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 690
    :cond_2
    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 693
    :cond_3
    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 695
    :cond_4
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 704
    :cond_5
    invoke-static/range {p10 .. p10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method private sendBroadcastToNtpServices()V
    .locals 8

    .prologue
    .line 711
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 712
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    .line 713
    .local v0, "ntpTrustedTime":Landroid/util/NtpTrustedTime;
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-virtual {v4}, Landroid/app/enterprise/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    invoke-virtual {v5}, Landroid/app/enterprise/NtpInfo;->getTimeout()J

    move-result-wide v6

    invoke-virtual {v0, v1, v4, v6, v7}, Landroid/util/NtpTrustedTime;->setNtpInfoInternal(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 714
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.edm.intent.action.UPDATE_NTP_PARAMETERS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 715
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    return-void
.end method


# virtual methods
.method public getAutomaticTime(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x0

    .line 454
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getDateFormat(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 383
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 384
    .local v4, "userId":I
    const/4 v1, 0x0

    .line 385
    .local v1, "dateFormat":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 387
    .local v2, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "date_format"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 392
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 393
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v5, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 408
    .end local v0    # "d":Llibcore/icu/LocaleData;
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    return-object v1

    .line 394
    :cond_2
    :try_start_1
    const-string/jumbo v5, "dd-MM-yyyy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 396
    const-string v1, "DD/MM/YYYY"

    goto :goto_0

    .line 398
    :cond_3
    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 400
    const-string v1, "MM/DD/YYYY"

    goto :goto_0

    .line 402
    :cond_4
    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 404
    const-string v1, "YYYY/MM/DD"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getDateTime(Landroid/app/enterprise/ContextInfo;)J
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDaylightSavingTime(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 463
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 465
    .local v0, "tz":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    return v1
.end method

.method public getNtpInfo(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/NtpInfo;
    .locals 2
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 599
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 600
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfo:Landroid/app/enterprise/NtpInfo;

    monitor-exit v1

    return-object v0

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTimeFormat(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 305
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 306
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 307
    .local v2, "token":J
    const/4 v0, 0x0

    .line 309
    .local v0, "timeFormat":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "time_12_24"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 312
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    return-object v0

    .line 312
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getTimeZone(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 735
    if-nez p1, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-object v1

    .line 735
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

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 539
    const/4 v1, 0x1

    .line 541
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION"

    const-string v6, "DateTimeEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 547
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 549
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 551
    move v1, v2

    .line 559
    .end local v2    # "value":Z
    :cond_1
    return v1
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 476
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 481
    iget-object v3, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "ntpLastAdminUid"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "adminUid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 484
    const/4 v2, -0x1

    .line 486
    .local v2, "lastUid":I
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 490
    :goto_0
    if-ne v2, p1, :cond_0

    .line 491
    const-string v3, "DateTimePolicyService"

    const-string v4, "admin removed, reverting ntp info"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v4

    .line 494
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->resetNtpInfo()Z

    .line 495
    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V

    .line 496
    monitor-exit v4

    .line 499
    .end local v2    # "lastUid":I
    :cond_0
    return-void

    .line 487
    .restart local v2    # "lastUid":I
    :catch_0
    move-exception v1

    .line 488
    .local v1, "ignore":Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0

    .line 496
    .end local v1    # "ignore":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 512
    return-void
.end method

.method public setAutomaticTime(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 419
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 421
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 446
    :goto_0
    return v8

    .line 427
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 429
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time"

    if-eqz p2, :cond_2

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 432
    .local v2, "ret":Z
    iget-object v6, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "auto_time_zone"

    if-eqz p2, :cond_3

    :goto_2
    invoke-static {v6, v9, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v6

    and-int/2addr v2, v6

    .line 435
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 436
    .local v3, "userId":I
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 438
    :try_start_0
    const-string v6, "Datetime"

    const-string/jumbo v7, "setAutomaticTime"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :cond_1
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v2

    .line 446
    goto :goto_0

    .end local v2    # "ret":Z
    .end local v3    # "userId":I
    :cond_2
    move v6, v8

    .line 429
    goto :goto_1

    .restart local v2    # "ret":Z
    :cond_3
    move v7, v8

    .line 432
    goto :goto_2

    .line 439
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public setDateFormat(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 323
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 326
    .local v3, "userId":I
    const/16 v7, 0x64

    if-lt v3, v7, :cond_0

    move v2, v6

    .line 374
    :goto_0
    return v2

    .line 330
    :cond_0
    if-nez p2, :cond_1

    move v2, v6

    .line 331
    goto :goto_0

    .line 338
    :cond_1
    const-string v7, "MM/DD/YYYY"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 340
    const-string p2, "MM-dd-yyyy"

    .line 357
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 359
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "date_format"

    invoke-static {v7, v8, p2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 362
    .local v2, "ret":Z
    iget-object v7, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "regional"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 363
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 364
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 366
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v6, "Datetime"

    const-string/jumbo v7, "setDateFormat"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getDateFormat(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v6, "DateTimePolicyService"

    const-string/jumbo v7, "setDateFormat calling gearPolicyManager  "

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_2
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 342
    .end local v2    # "ret":Z
    .end local v4    # "token":J
    :cond_3
    const-string v7, "DD/MM/YYYY"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 344
    const-string/jumbo p2, "dd-MM-yyyy"

    goto :goto_1

    .line 346
    :cond_4
    const-string v7, "YYYY/MM/DD"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 348
    const-string/jumbo p2, "yyyy-MM-dd"

    goto :goto_1

    :cond_5
    move v2, v6

    .line 352
    goto :goto_0

    .line 368
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v2    # "ret":Z
    .restart local v4    # "token":J
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setDateTime(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "millis"    # J

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v2

    .line 162
    :cond_1
    const-wide/16 v4, 0x3e8

    div-long v4, p2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 166
    .local v0, "token":J
    invoke-static {p2, p3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 170
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 520
    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string v7, "DateTimeEnabled"

    invoke-virtual {v4, v5, v6, v7, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 522
    .local v2, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 523
    .local v3, "userId":I
    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    .line 524
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 526
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v4, "Datetime"

    const-string/jumbo v5, "setDateTimeChangeEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 527
    const-string v4, "DateTimePolicyService"

    const-string/jumbo v5, "setDateTimeChangeEnabled calling gearPolicyManager  "

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_0
    :goto_0
    return v2

    .line 528
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNtpInfo(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/NtpInfo;)Z
    .locals 18
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ntpInfo"    # Landroid/app/enterprise/NtpInfo;

    .prologue
    .line 564
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 566
    if-nez p2, :cond_0

    .line 567
    const-string v2, "DateTimePolicyService"

    const-string v12, "NtpInfo object should not be null!"

    invoke-static {v2, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/4 v13, 0x0

    .line 591
    :goto_0
    return v13

    .line 571
    :cond_0
    const/4 v13, 0x0

    .line 572
    .local v13, "ret":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mNtpInfoLock:Ljava/lang/Object;

    monitor-enter v14

    .line 573
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, "serverHostname":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 575
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/NtpInfo;->getTimeout()J

    move-result-wide v4

    .line 576
    .local v4, "timeout":J
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/NtpInfo;->getPollingInterval()J

    move-result-wide v6

    .line 577
    .local v6, "polInterval":J
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/NtpInfo;->getPollingIntervalShorter()J

    move-result-wide v8

    .line 578
    .local v8, "polInterShort":J
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/NtpInfo;->getMaxAttempts()I

    move-result v10

    .line 579
    .local v10, "maxAttempts":I
    invoke-virtual/range {p2 .. p2}, Landroid/app/enterprise/NtpInfo;->getTimeErrorThreshold()I

    move-result v11

    .line 580
    .local v11, "timeThreshold":I
    const-wide/16 v16, 0x0

    cmp-long v2, v4, v16

    if-ltz v2, :cond_1

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-ltz v2, :cond_1

    const-wide/16 v16, 0x0

    cmp-long v2, v8, v16

    if-ltz v2, :cond_1

    if-ltz v10, :cond_1

    if-gez v11, :cond_2

    .line 582
    :cond_1
    const-string v2, "DateTimePolicyService"

    const-string/jumbo v12, "invalid parameters provided, all values should be 0 or higher"

    invoke-static {v2, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/4 v2, 0x0

    monitor-exit v14

    move v13, v2

    goto :goto_0

    .line 585
    :cond_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->saveNtpInfoInDbAndUpdateCache(Ljava/lang/String;JJJIII)Z

    move-result v13

    .line 590
    .end local v4    # "timeout":J
    .end local v6    # "polInterval":J
    .end local v8    # "polInterShort":J
    .end local v10    # "maxAttempts":I
    .end local v11    # "timeThreshold":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->sendBroadcastToNtpServices()V

    .line 591
    monitor-exit v14

    goto :goto_0

    .line 592
    .end local v3    # "serverHostname":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 588
    .restart local v3    # "serverHostname":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->resetNtpInfo()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    goto :goto_1
.end method

.method public setTimeFormat(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 253
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 254
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 257
    .local v5, "userId":I
    const/16 v8, 0x64

    if-lt v5, v8, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v3

    .line 262
    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v9, "android"

    invoke-static {v8, v9, v3, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v0

    .line 264
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 268
    const-string v8, "12"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "24"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 270
    const/4 v3, 0x0

    .local v3, "ret":Z
    goto :goto_0

    .line 274
    .end local v3    # "ret":Z
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 276
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "time_12_24"

    invoke-static {v8, v9, p2, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 280
    .restart local v3    # "ret":Z
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.TIME_SET"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v4, "timeChanged":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 283
    if-eqz v3, :cond_3

    if-nez v5, :cond_3

    .line 284
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 286
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    const-string v8, "Datetime"

    const-string/jumbo v9, "setTimeFormat"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getTimeFormat(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v8, "DateTimePolicyService"

    const-string/jumbo v9, "setTimeFormat calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 288
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setTimeZone(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->enforceOwnerOnlyAndDateTimePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 195
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "ret":Z
    if-nez p2, :cond_0

    .line 198
    const-string v8, "DateTimePolicyService"

    const-string/jumbo v9, "setTimeZone() has failed : Invalid input."

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 235
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 203
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 204
    :cond_1
    const-string v8, "DateTimePolicyService"

    const-string/jumbo v9, "setTimeZone() has failed : Not allowed by admin."

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 205
    .restart local v4    # "ret":I
    goto :goto_0

    .line 210
    .end local v4    # "ret":I
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 212
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 214
    .local v6, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 216
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 217
    const/4 v3, 0x1

    .line 218
    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    .line 219
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v8, "Datetime"

    const-string/jumbo v9, "setTimeZone"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getTimeZone(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v8, "DateTimePolicyService"

    const-string/jumbo v9, "setTimeZone calling gearPolicyManager  "

    invoke-static {v8, v9}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "alarm":Landroid/app/AlarmManager;
    :goto_2
    move v4, v3

    .line 235
    .restart local v4    # "ret":I
    goto :goto_0

    .line 223
    .end local v4    # "ret":I
    .restart local v0    # "alarm":Landroid/app/AlarmManager;
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 227
    .end local v0    # "alarm":Landroid/app/AlarmManager;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v1

    .line 228
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 229
    :try_start_3
    const-string v8, "DateTimePolicyService"

    const-string/jumbo v9, "setTimeZone() has failed by unexpected excepion. "

    invoke-static {v8, v9, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->loadNtpInfo()V

    .line 505
    return-void
.end method
