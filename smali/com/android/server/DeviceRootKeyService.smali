.class public final Lcom/android/server/DeviceRootKeyService;
.super Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;
.source "DeviceRootKeyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceRootKeyService$AllowList;,
        Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;
    }
.end annotation


# static fields
.field private static final ERR_INVALID_ARUGEMENTS:I = -0x2

.field private static final ERR_PERMISSION_DENIED:I = -0x13

.field private static final ERR_WRITE_KEY_ERROR:I = -0xa

.field private static final KEY_TYPE_EC:I = 0x4

.field private static final KEY_TYPE_RSA:I = 0x1

.field private static final KEY_TYPE_SYMM:I = 0x2

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceRootKeyService"

.field private static final THREAD_TAG:Ljava/lang/String; = "DeviceRootKeyServiceSocket"

.field private static mContext:Landroid/content/Context;

.field private static mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

.field private static final mLock:Ljava/lang/Object;

.field private static mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;


# instance fields
.field private mThreadSocket:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "dk_native"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x3e8

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/service/DeviceRootKeyService/IDeviceRootKeyService$Stub;-><init>()V

    .line 92
    sput-object p1, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceRootKeyService$DRKSeviceSocketThread;-><init>(Lcom/android/server/DeviceRootKeyService;)V

    const-string v2, "DeviceRootKeyServiceSocket"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mThreadSocket:Ljava/lang/Thread;

    .line 94
    iget-object v0, p0, Lcom/android/server/DeviceRootKeyService;->mThreadSocket:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    new-instance v0, Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceRootKeyService$AllowList;-><init>(Lcom/android/server/DeviceRootKeyService;)V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    .line 97
    new-instance v0, Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceRootKeyService$AllowList;-><init>(Lcom/android/server/DeviceRootKeyService;)V

    sput-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    .line 99
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->init()V

    .line 104
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.sec.keyverifier"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 108
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.samsung.android.spayfw"

    const/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 111
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.samsung.android.spayfw"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 114
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.android.samsung.softsim"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 116
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "com.samsung.android.app.devicerootkeyserviceclient"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 124
    :cond_0
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "system_server"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 127
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "/system/bin/sem_daemon"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 129
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "dk_native_client_test"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string/jumbo v1, "testprov"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 135
    sget-object v0, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    const-string v1, "/data/sem"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/DeviceRootKeyService$AllowList;->add(Ljava/lang/String;I)V

    .line 137
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceRootKeyService;IIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DeviceRootKeyService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v0

    return v0
.end method

.method private native finishSharingKey()V
.end method

.method private native generateServiceKey(Ljava/lang/String;IZ)[B
.end method

.method private native getProcessName(I)Ljava/lang/String;
.end method

.method private hasAccessPermission(IIZ)Z
    .locals 8
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "isSocketThead"    # Z

    .prologue
    .line 142
    const-string v1, ""

    .line 145
    .local v1, "currentPkgName":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 147
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    sget-object v5, Lcom/android/server/DeviceRootKeyService;->mNativeProcessAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-virtual {v5, v1, p2}, Lcom/android/server/DeviceRootKeyService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v4

    .line 166
    .local v4, "ret":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 167
    const-string v5, "DeviceRootKeyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested package name = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_1
    return v4

    .line 153
    .end local v4    # "ret":Z
    :cond_0
    sget-object v5, Lcom/android/server/DeviceRootKeyService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 155
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 156
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_1

    .line 158
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 163
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_2
    sget-object v5, Lcom/android/server/DeviceRootKeyService;->mJavaPkgAllowList:Lcom/android/server/DeviceRootKeyService$AllowList;

    invoke-virtual {v5, v1, p2}, Lcom/android/server/DeviceRootKeyService$AllowList;->match(Ljava/lang/String;I)Z

    move-result v4

    .restart local v4    # "ret":Z
    goto :goto_0

    .line 169
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v5, "DeviceRootKeyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied. Package name = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], UID = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private native init()V
.end method

.method private native installAuthKeys([B)I
.end method

.method private native isExistDRK(I)I
.end method

.method private native readKeyUID(I)Ljava/lang/String;
.end method

.method private native tlvAdd(I[B)I
.end method

.method private native tlvInit()I
.end method


# virtual methods
.method public createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 9
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "tlv"    # Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 233
    if-nez p3, :cond_0

    move v2, v5

    .line 235
    .local v2, "isValidTlv":Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-direct {p0, v7, v8, v5}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v6

    .line 276
    :goto_1
    return-object v5

    .line 233
    .end local v2    # "isValidTlv":Z
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 238
    .restart local v2    # "isValidTlv":Z
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 275
    :pswitch_0
    const-string v5, "DeviceRootKeyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is invalid."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 276
    goto :goto_1

    .line 242
    :pswitch_1
    if-eqz v2, :cond_4

    .line 244
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->tlvInit()I

    move-result v3

    .line 246
    .local v3, "ret":I
    if-eqz v3, :cond_2

    .line 248
    const-string v5, "DeviceRootKeyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to init Tlv. Ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 249
    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->getValidKeyList()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 254
    .local v4, "tlvTag":I
    invoke-virtual {p3, v4}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->getTlvValue(I)[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/DeviceRootKeyService;->tlvAdd(I[B)I

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    const-string v5, "DeviceRootKeyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to add Tlv. Ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 257
    goto/16 :goto_1

    .line 263
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "ret":I
    .end local v4    # "tlvTag":I
    :cond_4
    :try_start_0
    sget-object v7, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/DeviceRootKeyService;->generateServiceKey(Ljava/lang/String;IZ)[B

    move-result-object v5

    monitor-exit v7

    goto/16 :goto_1

    .line 265
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "DeviceRootKeyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to generate. Name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", keyType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Ret : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 271
    goto/16 :goto_1

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDeviceRootKeyUID(I)Ljava/lang/String;
    .locals 5
    .param p1, "drkType"    # I

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    :goto_0
    return-object v1

    .line 210
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 226
    :pswitch_0
    const-string v2, "DeviceRootKeyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 215
    :pswitch_1
    :try_start_0
    sget-object v3, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->readKeyUID(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 219
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceRootKeyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read. Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isExistDeviceRootKey(I)Z
    .locals 5
    .param p1, "drkType"    # I

    .prologue
    const/4 v1, 0x0

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "ret":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    :goto_0
    return v1

    .line 181
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 192
    :pswitch_0
    const-string v2, "DeviceRootKeyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :pswitch_1
    sget-object v2, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 187
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->isExistDRK(I)I

    move-result v0

    .line 188
    monitor-exit v2

    .line 196
    if-nez v0, :cond_1

    .line 197
    const/4 v1, 0x1

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 200
    :cond_1
    const-string v2, "DeviceRootKeyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , Ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public releaseServiceKeySession()I
    .locals 2

    .prologue
    .line 282
    sget-object v1, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DeviceRootKeyService;->finishSharingKey()V

    .line 284
    monitor-exit v1

    .line 286
    const/4 v0, 0x0

    return v0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceRootKey([B)I
    .locals 4
    .param p1, "keyBlob"    # [B

    .prologue
    .line 291
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceRootKeyService;->hasAccessPermission(IIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    const/16 v1, -0x13

    .line 305
    :goto_0
    return v1

    .line 294
    :cond_0
    if-nez p1, :cond_1

    .line 295
    const/4 v1, -0x2

    goto :goto_0

    .line 298
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/server/DeviceRootKeyService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/DeviceRootKeyService;->installAuthKeys([B)I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 302
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceRootKeyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to install key. Ret : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/16 v1, -0xa

    goto :goto_0
.end method
