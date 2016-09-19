.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.super Ljava/lang/Object;
.source "KnoxVpnPacProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DOWNLOAD_STATUS_FAILURE:I = 0x1

.field private static final DOWNLOAD_STATUS_RETRY:I = 0x2

.field private static final DOWNLOAD_STATUS_SUCCESS:I = 0x0

.field private static final FINAL_RETRY_ATTEMPT:I = 0xa

.field private static final INITIAL_RETRY_ATTEMPT:I = 0x0

.field private static final INVALID_FD:I = -0x1

.field private static final INVALID_PORT:I = -0x1

.field private static final PAC_IDENTIFIER:Ljava/lang/String; = "function"

.field private static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field private static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field private static final TAG:Ljava/lang/String; = "KnoxVpnPacProcessor"

.field private static mBindAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mDownloadStatus:Ljava/util/HashMap;
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

.field private static mDownloadUrlThread:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation
.end field

.field private static mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field private static mProxyService:Lcom/android/net/IProxyService;

.field private static mRetryAttempt:Ljava/util/HashMap;
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


# instance fields
.field private mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 82
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    .line 83
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 85
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 86
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 88
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    .line 90
    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mBindAction:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 100
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method static synthetic access$000()Lcom/android/net/IProxyService;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .locals 0
    .param p0, "x0"    # Lcom/android/net/IProxyService;

    .prologue
    .line 70
    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mBindAction:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private checkIfRetryNeeded(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xa

    .line 517
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    .line 518
    .local v1, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 519
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 521
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading the pac url failed, going to retry for the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    .line 542
    .end local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_0
    :goto_0
    return-void

    .line 524
    .restart local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 525
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading the pac url failed even after the final retry attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    .end local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured while retry attempt to download pac file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_2
    :try_start_1
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading the pac url failed for the first time, start the retry process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V

    goto :goto_0

    .line 534
    :cond_3
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vpn profile is in unknown state, resetting the retry-Status to default value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "in"    # Ljava/io/BufferedReader;
    .param p3, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 501
    if-eqz p1, :cond_0

    .line 502
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 504
    :cond_0
    if-eqz p3, :cond_1

    .line 505
    invoke-virtual {p3}, Ljava/io/PrintStream;->close()V

    .line 507
    :cond_1
    if-eqz p2, :cond_2

    .line 508
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_2
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, "IOException occured while trying to close the socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 32
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 356
    monitor-enter p1

    .line 357
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacUrlDownloadStatus(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v15, 0x0

    .line 359
    .local v15, "out":Ljava/io/PrintStream;
    const/4 v10, 0x0

    .line 360
    .local v10, "in":Ljava/io/BufferedReader;
    const/16 v23, 0x0

    .line 361
    .local v23, "socket":Ljava/net/Socket;
    const/16 v21, 0x0

    .line 364
    .local v21, "resolvedHostName":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getMarkForInterface(Ljava/lang/String;)I

    move-result v12

    .line 365
    .local v12, "isKnoxNetId":I
    if-eqz p5, :cond_2

    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v12, v0, :cond_2

    .line 366
    sget-boolean v29, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v29, :cond_1

    const-string v29, "KnoxVpnPacProcessor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The host name to resolve is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1
    new-instance v8, Landroid/system/StructAddrinfo;

    invoke-direct {v8}, Landroid/system/StructAddrinfo;-><init>()V

    .line 368
    .local v8, "hints":Landroid/system/StructAddrinfo;
    sget v29, Landroid/system/OsConstants;->AI_ADDRCONFIG:I

    move/from16 v0, v29

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_flags:I

    .line 369
    sget v29, Landroid/system/OsConstants;->AF_UNSPEC:I

    move/from16 v0, v29

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_family:I

    .line 370
    sget v29, Landroid/system/OsConstants;->SOCK_STREAM:I

    move/from16 v0, v29

    iput v0, v8, Landroid/system/StructAddrinfo;->ai_socktype:I

    .line 371
    sget-object v29, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v8, v12}, Llibcore/io/Os;->android_getaddrinfo(Ljava/lang/String;Landroid/system/StructAddrinfo;I)[Ljava/net/InetAddress;

    move-result-object v25

    .line 372
    .local v25, "socketAddresses":[Ljava/net/InetAddress;
    if-eqz v25, :cond_2

    .line 373
    move-object/from16 v5, v25

    .local v5, "arr$":[Ljava/net/InetAddress;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_2

    aget-object v4, v5, v9

    .line 374
    .local v4, "add":Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v29, v0

    if-eqz v29, :cond_3

    .line 375
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v21

    .line 376
    sget-boolean v29, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v29, :cond_2

    const-string v29, "KnoxVpnPacProcessor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The resolved host address is a ipv4 address "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v4    # "add":Ljava/net/InetAddress;
    .end local v5    # "arr$":[Ljava/net/InetAddress;
    .end local v8    # "hints":Landroid/system/StructAddrinfo;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v25    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v17, "pacBuilder":Ljava/lang/StringBuilder;
    new-instance v24, Ljava/net/Socket;

    invoke-direct/range {v24 .. v24}, Ljava/net/Socket;-><init>()V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/system/GaiException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    .end local v23    # "socket":Ljava/net/Socket;
    .local v24, "socket":Ljava/net/Socket;
    const/16 v29, 0x0

    :try_start_2
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 386
    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v26

    .line 387
    .local v26, "socketFd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v29

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    .line 388
    invoke-virtual/range {v26 .. v26}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindSocketToInterfaceWrapper(ILjava/lang/String;)V

    .line 393
    const/16 v29, 0x2710

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 395
    if-eqz v21, :cond_5

    .line 396
    new-instance v29, Ljava/net/InetSocketAddress;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v30, 0x2710

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 400
    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    .line 401
    .local v20, "readFromServer":Ljava/io/InputStream;
    invoke-virtual/range {v24 .. v24}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    .line 402
    .local v28, "writeToServer":Ljava/io/OutputStream;
    new-instance v16, Ljava/io/PrintStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Landroid/system/GaiException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 403
    .end local v15    # "out":Ljava/io/PrintStream;
    .local v16, "out":Ljava/io/PrintStream;
    :try_start_3
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v29, Ljava/io/InputStreamReader;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v29

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Landroid/system/GaiException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 405
    .end local v10    # "in":Ljava/io/BufferedReader;
    .local v11, "in":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "GET "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " HTTP/1.1\r"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Host: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\r"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    const-string v29, "Connection: close\r"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    const-string v29, "\r"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintStream;->flush()V

    .line 410
    const/16 v27, 0x0

    .line 411
    .local v27, "startReading":Z
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .line 412
    .local v14, "line":Ljava/lang/String;
    :goto_2
    if-eqz v14, :cond_9

    .line 413
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 414
    const/16 v27, 0x1

    .line 415
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Landroid/system/GaiException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v14

    .line 416
    goto :goto_2

    .line 373
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v24    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v27    # "startReading":Z
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v4    # "add":Ljava/net/InetAddress;
    .restart local v5    # "arr$":[Ljava/net/InetAddress;
    .restart local v8    # "hints":Landroid/system/StructAddrinfo;
    .restart local v9    # "i$":I
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v13    # "len$":I
    .restart local v15    # "out":Ljava/io/PrintStream;
    .restart local v23    # "socket":Ljava/net/Socket;
    .restart local v25    # "socketAddresses":[Ljava/net/InetAddress;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 390
    .end local v4    # "add":Ljava/net/InetAddress;
    .end local v5    # "arr$":[Ljava/net/InetAddress;
    .end local v8    # "hints":Landroid/system/StructAddrinfo;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v25    # "socketAddresses":[Ljava/net/InetAddress;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    :cond_4
    :try_start_5
    new-instance v29, Ljava/net/SocketException;

    invoke-direct/range {v29 .. v29}, Ljava/net/SocketException;-><init>()V

    throw v29
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14
    .catch Landroid/system/GaiException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 453
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    :catch_0
    move-exception v6

    move-object/from16 v23, v24

    .line 454
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v24    # "socket":Ljava/net/Socket;
    .local v6, "e":Ljava/net/ConnectException;
    .restart local v23    # "socket":Ljava/net/Socket;
    :goto_3
    :try_start_6
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "ConnectException occured while trying to download the pac url"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 456
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 494
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 496
    .end local v6    # "e":Ljava/net/ConnectException;
    :goto_4
    monitor-exit p1

    goto/16 :goto_0

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v21    # "resolvedHostName":Ljava/lang/String;
    .end local v23    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v29

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v29

    .line 398
    .restart local v10    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "isKnoxNetId":I
    .restart local v15    # "out":Ljava/io/PrintStream;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v21    # "resolvedHostName":Ljava/lang/String;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    :cond_5
    :try_start_8
    new-instance v29, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v29 .. v29}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v29
    :try_end_8
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Landroid/system/GaiException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 458
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    :catch_1
    move-exception v6

    move-object/from16 v23, v24

    .line 459
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v24    # "socket":Ljava/net/Socket;
    .local v6, "e":Ljava/net/SocketException;
    .restart local v23    # "socket":Ljava/net/Socket;
    :goto_5
    :try_start_9
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "SocketException occured while trying to download the pac url"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 461
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 494
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_4

    .line 418
    .end local v6    # "e":Ljava/net/SocketException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "isKnoxNetId":I
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v27    # "startReading":Z
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :cond_6
    if-eqz v27, :cond_8

    .line 419
    :try_start_b
    sget-boolean v29, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v29, :cond_7

    const-string v29, "KnoxVpnPacProcessor"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "The pac line printed is "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_7
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v29, "\n"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_8
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 426
    :cond_9
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "(?:/\\*(?:[^*]|(?:\\*+[^*/]))*\\*+/)|(?://.*)"

    const-string v31, ""

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string v30, "(?m)^[ \t]*\r?\n"

    const-string v31, ""

    invoke-virtual/range {v29 .. v31}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 427
    .local v18, "pacContent":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    .line 428
    .local v19, "pacContentLength":I
    if-eqz v18, :cond_c

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_16
    .catch Landroid/system/GaiException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-result v29

    if-lez v29, :cond_c

    .line 429
    const/16 v22, 0x0

    .line 431
    .local v22, "savePacScript":Z
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/android/net/IProxyService;->setPacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_16
    .catch Landroid/system/GaiException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result v22

    .line 438
    :goto_6
    if-eqz v22, :cond_b

    .line 439
    :try_start_d
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_a

    .line 441
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "The pac file has been downloaded successfully,cancelling further retry attempts"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->removeDownloadThreadDetails(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/net/ConnectException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_16
    .catch Landroid/system/GaiException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 494
    .end local v22    # "savePacScript":Z
    :goto_7
    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .line 495
    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_4

    .line 432
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v22    # "savePacScript":Z
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v6

    .line 433
    .local v6, "e":Ljava/lang/NullPointerException;
    :try_start_f
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "Exception occured due to the pac service not intialized"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 435
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    goto :goto_6

    .line 453
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "pacContent":Ljava/lang/String;
    .end local v19    # "pacContentLength":I
    .end local v22    # "savePacScript":Z
    .end local v27    # "startReading":Z
    :catch_3
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_3

    .line 446
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v18    # "pacContent":Ljava/lang/String;
    .restart local v19    # "pacContentLength":I
    .restart local v22    # "savePacScript":Z
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v27    # "startReading":Z
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 447
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V

    goto :goto_7

    .line 458
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "pacContent":Ljava/lang/String;
    .end local v19    # "pacContentLength":I
    .end local v22    # "savePacScript":Z
    .end local v27    # "startReading":Z
    :catch_4
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_5

    .line 451
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v18    # "pacContent":Ljava/lang/String;
    .restart local v19    # "pacContentLength":I
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v27    # "startReading":Z
    :cond_c
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/net/ConnectException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_16
    .catch Landroid/system/GaiException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_7

    .line 463
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "pacContent":Ljava/lang/String;
    .end local v19    # "pacContentLength":I
    .end local v27    # "startReading":Z
    :catch_5
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .line 464
    .end local v12    # "isKnoxNetId":I
    .end local v16    # "out":Ljava/io/PrintStream;
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .local v6, "e":Ljava/nio/channels/ClosedByInterruptException;
    .restart local v15    # "out":Ljava/io/PrintStream;
    :goto_8
    :try_start_10
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "Downloading the pac url failed due to Interruption, close the existing connections"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 466
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 494
    :try_start_11
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_4

    .line 467
    .end local v6    # "e":Ljava/nio/channels/ClosedByInterruptException;
    :catch_6
    move-exception v6

    .line 468
    .local v6, "e":Ljava/io/IOException;
    :goto_9
    :try_start_12
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "IOException occured while trying to download the pac url "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 470
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 494
    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_4

    .line 472
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 473
    .local v6, "e":Landroid/system/GaiException;
    :goto_a
    :try_start_14
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "GaiException occured while trying to download the pac url "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 475
    const-wide/16 v30, 0x1388

    :try_start_15
    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 482
    :try_start_16
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 483
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->checkIfRetryNeeded(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 494
    :try_start_17
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_4

    .line 476
    :catch_8
    move-exception v7

    .line 477
    .local v7, "e1":Ljava/lang/InterruptedException;
    :try_start_18
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "Got Interruption while trying to resolve the domain name "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 479
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .line 494
    :try_start_19
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_0

    .line 485
    .end local v6    # "e":Landroid/system/GaiException;
    .end local v7    # "e1":Ljava/lang/InterruptedException;
    :catch_9
    move-exception v6

    .line 486
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :goto_b
    :try_start_1a
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "cannot find the dns server to resolve the pac url"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 488
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 494
    :try_start_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_4

    .line 489
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v6

    .line 490
    .local v6, "e":Ljava/lang/Exception;
    :goto_c
    :try_start_1c
    const-string v29, "KnoxVpnPacProcessor"

    const-string v30, "Exception occured while trying to pac url "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    .line 492
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 494
    :try_start_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v29

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v10, v15}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->closeExistingConnection(Ljava/net/Socket;Ljava/io/BufferedReader;Ljava/io/PrintStream;)V

    throw v29
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v12    # "isKnoxNetId":I
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catchall_2
    move-exception v29

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto :goto_d

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catchall_3
    move-exception v29

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto :goto_d

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catchall_4
    move-exception v29

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto :goto_d

    .line 489
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_b
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto :goto_c

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_c
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto :goto_c

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_d
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto :goto_c

    .line 485
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_e
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto/16 :goto_b

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_f
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_b

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_10
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_b

    .line 472
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_11
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto/16 :goto_a

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_12
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_a

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_13
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_a

    .line 467
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_14
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto/16 :goto_9

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_15
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_9

    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_16
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_9

    .line 463
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_17
    move-exception v6

    goto/16 :goto_8

    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v12    # "isKnoxNetId":I
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v24    # "socket":Ljava/net/Socket;
    :catch_18
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    goto/16 :goto_8

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_19
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_8

    .line 458
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_1a
    move-exception v6

    goto/16 :goto_5

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v12    # "isKnoxNetId":I
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_1b
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_5

    .line 453
    .end local v12    # "isKnoxNetId":I
    .end local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .end local v20    # "readFromServer":Ljava/io/InputStream;
    .end local v26    # "socketFd":Ljava/io/FileDescriptor;
    .end local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_1c
    move-exception v6

    goto/16 :goto_3

    .end local v15    # "out":Ljava/io/PrintStream;
    .end local v23    # "socket":Ljava/net/Socket;
    .restart local v12    # "isKnoxNetId":I
    .restart local v16    # "out":Ljava/io/PrintStream;
    .restart local v17    # "pacBuilder":Ljava/lang/StringBuilder;
    .restart local v20    # "readFromServer":Ljava/io/InputStream;
    .restart local v24    # "socket":Ljava/net/Socket;
    .restart local v26    # "socketFd":Ljava/io/FileDescriptor;
    .restart local v28    # "writeToServer":Ljava/io/OutputStream;
    :catch_1d
    move-exception v6

    move-object/from16 v23, v24

    .end local v24    # "socket":Ljava/net/Socket;
    .restart local v23    # "socket":Ljava/net/Socket;
    move-object/from16 v15, v16

    .end local v16    # "out":Ljava/io/PrintStream;
    .restart local v15    # "out":Ljava/io/PrintStream;
    goto/16 :goto_3
.end method

.method private extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacUrl"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 297
    const/4 v8, 0x0

    .line 298
    .local v8, "protocol":Ljava/lang/String;
    const/4 v5, -0x1

    .line 301
    .local v5, "port":I
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    .local v9, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "hostname":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 305
    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v5

    .line 306
    const/4 v1, -0x1

    if-ne v5, v1, :cond_0

    .line 307
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result v5

    .line 310
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 311
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The current status of the download thread of the profile "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->interrupt()V

    .line 315
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_2
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    .local v0, "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;->start()V

    .line 319
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 334
    .end local v0    # "downloadUrlThread":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;
    .end local v3    # "hostname":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v9    # "urlToDownload":Ljava/net/URL;
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v7

    .line 322
    .local v7, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to download the pac file due to unknow url format, remove and create the profile again"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    .end local v7    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v7

    .line 325
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to download the pac file due to unknown port number"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 328
    .local v7, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to download the pac file due to some values being not intialized successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v7

    .line 331
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to download the pac file after the vpn connection is established"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static declared-synchronized getCurrentRetryStatus()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;

    .line 170
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mRetryAttempt:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDownloadStatus()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    .line 163
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getDownloadThread()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$DownloadUrlThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;

    .line 177
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadUrlThread:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    .line 156
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mKnoxVpnPacProcessor:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMarkForInterface(Ljava/lang/String;)I
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 594
    const/4 v0, -0x1

    .line 595
    .local v0, "knoxNetworkMark":I
    const-string/jumbo v1, "ipsec"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 596
    const/16 v0, 0x64

    .line 600
    :cond_0
    :goto_0
    return v0

    .line 597
    :cond_1
    const-string/jumbo v1, "tun"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x65

    goto :goto_0
.end method

.method private declared-synchronized getPacBinder()Lcom/android/net/IProxyService;
    .locals 1

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :goto_0
    monitor-exit p0

    return-object v0

    .line 147
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindPacService()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPacUrlDownloadStatus(Ljava/lang/String;)Z
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 278
    .local v1, "isScriptDownloaded":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 279
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check to see if the pac url has been downloaded successfully "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v1

    .line 282
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to get download status pac file due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, " error occured while trying to get download status pac file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getPortFromProtocol(Ljava/lang/String;)I
    .locals 4
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "port":I
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 338
    :sswitch_0
    const-string/jumbo v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "ftp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "https"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 340
    :pswitch_0
    const/16 v0, 0x50

    .line 351
    :goto_1
    const-string v1, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The pac file is going to be downloaded from the remote port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return v0

    .line 343
    :pswitch_1
    const/16 v0, 0x15

    .line 344
    goto :goto_1

    .line 346
    :pswitch_2
    const/16 v0, 0x1bb

    .line 347
    goto :goto_1

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x18d62 -> :sswitch_1
        0x310888 -> :sswitch_0
        0x5f008eb -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    if-nez v0, :cond_0

    .line 182
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mVpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeDownloadThreadDetails(Ljava/lang/String;)V
    .locals 1
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_0
    return-void
.end method

.method private startRetryAttempt(Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .locals 12
    .param p1, "vpnEntry"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    const/4 v11, 0x1

    .line 551
    const/4 v1, 0x0

    .line 553
    .local v1, "profileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 555
    .local v5, "interfaceName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v7

    .line 556
    .local v7, "pacUrl":Ljava/lang/String;
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 557
    .local v9, "urlToDownload":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "hostname":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    .line 560
    .local v8, "protocol":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 561
    .local v4, "port":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    .line 562
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPortFromProtocol(Ljava/lang/String;)I

    move-result v4

    .line 564
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 565
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_1

    move-object v0, p0

    .line 566
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->downloadPacUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 582
    .end local v2    # "hostname":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "interfaceName":Ljava/lang/String;
    .end local v7    # "pacUrl":Ljava/lang/String;
    .end local v8    # "protocol":Ljava/lang/String;
    .end local v9    # "urlToDownload":Ljava/net/URL;
    :cond_1
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v6

    .line 570
    .local v6, "e":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: Some profile values are not intialized when trying to download the pac url"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 572
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 573
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: Invalid port value is defined when trying to download the pac url"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 576
    .local v6, "e":Ljava/net/MalformedURLException;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: error occured while trying to download the pac file due to unknow url format"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    .end local v6    # "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v6

    .line 579
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v10, "retry attempt: error occured while trying to download the pac file"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized bindPacService()V
    .locals 4

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 130
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "No context for binding"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;

    if-eqz v2, :cond_1

    .line 134
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "Already binded to pac service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 137
    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)V

    .line 138
    .local v1, "pacConnect":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.pacprocessor"

    const-string v3, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected bindSocketToInterfaceWrapper(ILjava/lang/String;)V
    .locals 5
    .param p1, "fd"    # I
    .param p2, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 586
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->jnibindSocketToInterface(ILjava/lang/String;)I

    move-result v0

    .line 587
    .local v0, "bindResult":I
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindResult value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    .end local v0    # "bindResult":I
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    const-string v3, "Exception occured while trying to bind the socket to the interface "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native jnibindSocketToInterface(ILjava/lang/String;)I
.end method

.method protected makeProxyRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v5, 0x0

    .line 257
    .local v5, "proxyAddress":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 259
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x2e

    if-eq v1, v6, :cond_1

    const/16 v6, 0x2d

    if-eq v1, v6, :cond_1

    .line 260
    new-instance v6, Landroid/os/RemoteException;

    const-string v7, "Invalid host was passed"

    invoke-direct {v6, v7}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 265
    .end local v0    # "arr$":[C
    .end local v1    # "c":C
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_0
    move-exception v2

    .line 266
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v6, "KnoxVpnPacProcessor"

    const-string/jumbo v7, "error occured while trying to retrieve the proxy config due to some values being not intialized successfully"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_1
    return-object v5

    .line 258
    .restart local v0    # "arr$":[C
    .restart local v1    # "c":C
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "c":C
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/android/net/IProxyService;->resolvePacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 264
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The given url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is going to go through the proxy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 267
    .end local v0    # "arr$":[C
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catch_1
    move-exception v2

    .line 268
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid host was passed for pac resolution "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 269
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxVpnPacProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error occured while trying to to retrieve the proxy config for the profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "interfaceName"    # Ljava/lang/String;
    .param p3, "pacurl"    # Ljava/lang/String;

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 228
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 252
    :goto_0
    :pswitch_0
    return-void

    .line 235
    :pswitch_1
    const-string v1, "KnoxVpnPacProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try to download the pac url for the profile after the interface is up for the profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "KnoxVpnPacProcessor"

    const-string/jumbo v2, "error occured while trying to get current status pac file due to some values being not intialized successfully"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->extractUrlParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 249
    :catch_1
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxVpnPacProcessor"

    const-string v2, " error occured while trying to get current status pac file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected startPacSupport(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 190
    .local v1, "startPacSupport":Z
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPacSupport return value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    .end local v1    # "startPacSupport":Z
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to start the pac support due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mBindAction:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error occured while trying to start the pac script for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected stopPacSupport(Ljava/lang/String;)V
    .locals 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getPacBinder()Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/net/IProxyService;->stopPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v1

    .line 202
    .local v1, "removePacSupport":Z
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check to see if the pac support is removed for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadStatus()Ljava/util/HashMap;

    .line 204
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    .line 209
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    .line 214
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->getDownloadThread()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    .end local v1    # "removePacSupport":Z
    :cond_2
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "error occured while trying to remove the pac support due to some values being not intialized successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 220
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error occured while trying to remove the pac script for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
