.class public Lcom/android/server/KiesConnectivity/KiesUsbManager;
.super Ljava/lang/Object;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static final TAG:Ljava/lang/String; = "KiesUsbManager"

.field private static kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;


# instance fields
.field private final CDFS_FUNCTION:Ljava/lang/String;

.field private final CDFS_INSERT_PATH:Ljava/lang/String;

.field private final CDFS_PATH:Ljava/lang/String;

.field private final SUAVERSION_INSERT_PATH:Ljava/lang/String;

.field private cdfsEjectTimer:Ljava/util/Timer;

.field private context:Landroid/content/Context;

.field private cscTimer:Ljava/util/Timer;

.field private isAdbOnByToolLauncher:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_INSERT_PATH:Ljava/lang/String;

    .line 47
    const-string v0, "/system/etc/autorun.iso"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_PATH:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "mass_storage,acm,mtp"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->CDFS_FUNCTION:Ljava/lang/String;

    .line 49
    const-string v0, "/sys/class/android_usb/android0/f_mass_storage/sua_version_info"

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->SUAVERSION_INSERT_PATH:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->isAdbOnByToolLauncher:Z

    .line 64
    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 65
    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 70
    const-string v0, "KiesUsbManager"

    const-string v1, "KiesUsbManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KiesUsbManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 75
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;

    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 78
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    .line 79
    invoke-virtual {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCSCtimer()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/KiesConnectivity/KiesUsbManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveVersionFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentSettingMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentChargingMode()V

    return-void
.end method

.method private isAdbEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "enabled":I
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 87
    if-ne v0, v1, :cond_0

    .line 90
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isFactoryBinary()Z
    .locals 3

    .prologue
    .line 284
    const-string/jumbo v0, "factory"

    const-string/jumbo v1, "ro.factory.factory_binary"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveISOToFile(Z)Z
    .locals 7
    .param p1, "bInsert"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    const/4 v1, 0x0

    .line 150
    .local v1, "fout":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_3

    .line 152
    const-string v5, "KiesUsbManager"

    const-string/jumbo v6, "saveISOToFile ISO setCDFSInsert"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "/system/etc/autorun.iso"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 162
    if-eqz v2, :cond_0

    .line 163
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 187
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :goto_1
    return v3

    .line 164
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    if-eqz v1, :cond_1

    .line 163
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move v3, v4

    .line 166
    goto :goto_1

    .line 164
    :catch_2
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 162
    :goto_4
    if-eqz v1, :cond_2

    .line 163
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 166
    :cond_2
    :goto_5
    throw v3

    .line 164
    :catch_3
    move-exception v0

    .line 165
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 172
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const-string v5, "KiesUsbManager"

    const-string/jumbo v6, "saveISOToFile ISO setCDFSEject"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/android_usb/android0/f_mass_storage/lun/file"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 175
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :try_start_7
    const-string v5, "0"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 181
    if-eqz v2, :cond_4

    .line 182
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    :goto_6
    move-object v1, v2

    .line 187
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 183
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_7
    if-eqz v1, :cond_5

    .line 182
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_8
    move v3, v4

    .line 185
    goto :goto_1

    .line 183
    :catch_6
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    .line 181
    :goto_9
    if-eqz v1, :cond_6

    .line 182
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 185
    :cond_6
    :goto_a
    throw v3

    .line 183
    :catch_7
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 176
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 161
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 156
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private saveVersionFile()Z
    .locals 10

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCSCtimer()V

    .line 100
    const-string v3, ""

    .line 101
    .local v3, "Versionresult":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.PDA"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "PDAvalue":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 103
    :cond_0
    const-string/jumbo v7, "ril.approved_codever"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 105
    :cond_1
    const-string v1, "Unknown"

    .line 109
    :cond_2
    const-string/jumbo v7, "ril.sw_ver"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "PHONEvalue":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 111
    :cond_3
    move-object v2, v1

    .line 112
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 113
    :cond_4
    const-string v2, "Unknown"

    .line 117
    :cond_5
    const-string/jumbo v7, "ril.official_cscver"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "CSCvalue":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 119
    :cond_6
    const-string/jumbo v7, "ril.official_cscver"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 121
    :cond_7
    const-string/jumbo v7, "ril.approved_cscver"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_9

    .line 123
    :cond_8
    const-string v0, "Unknown"

    .line 128
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string v7, "KiesUsbManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "save Versionresult : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v5, 0x0

    .line 133
    .local v5, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/android_usb/android0/f_mass_storage/sua_version_info"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .local v6, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    if-eqz v6, :cond_a

    .line 140
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :cond_a
    :goto_0
    const/4 v7, 0x1

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_b
    :goto_1
    return v7

    .line 141
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 142
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 136
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    const/4 v7, 0x0

    .line 139
    if-eqz v5, :cond_b

    .line 140
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 141
    :catch_2
    move-exception v4

    .line 142
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 139
    :goto_3
    if-eqz v5, :cond_c

    .line 140
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 143
    :cond_c
    :goto_4
    throw v7

    .line 141
    :catch_3
    move-exception v4

    .line 142
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 138
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 135
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private setCDFSEject()V
    .locals 2

    .prologue
    .line 278
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "setCDFSEject"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "setCDFSEject : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    return-void
.end method

.method private setCDFSInsert()V
    .locals 2

    .prologue
    .line 271
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "setCDFSInsert"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->saveISOToFile(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "setCDFSInsert : fail to write the file"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    return-void
.end method

.method private setUsbCurrentChargingMode()V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 194
    const-string/jumbo v1, "sys.usb.config"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "config":Ljava/lang/String;
    const-string/jumbo v1, "mass_storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mass_storage,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mass_storage,acm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "mass_storage,acm,adb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->isAdbEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "askon,adb"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 204
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v2, "askon"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setUsbCurrentSettingMode()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->stopCDFSEjectTimer()V

    .line 208
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mtp_open_session"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v7, v3, :cond_0

    .line 209
    const-string v3, "KiesUsbManager"

    const-string v4, "Mtp is already completed opensession, so return."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 212
    :cond_0
    const-string/jumbo v3, "sys.usb.config"

    const-string/jumbo v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "config":Ljava/lang/String;
    const/4 v2, 0x0

    .line 216
    .local v2, "state":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb/android0/state"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 224
    const-string v3, "KiesUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/class/android_usb/android0/state = :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v3, "CONFIGURED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 229
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->isFactoryBinary()Z

    move-result v3

    if-nez v3, :cond_4

    .line 231
    const-string/jumbo v3, "mtp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "mtp,adb"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->isAdbEnabled()Z

    move-result v3

    if-ne v3, v7, :cond_3

    .line 234
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "askon,adb"

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 237
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    :goto_1
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v4, "mtp,adb"

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 259
    :cond_2
    :goto_2
    const-string v3, "KiesUsbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUsbCurrentSettingMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_3
    sget-object v3, Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sput-boolean v6, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    goto/16 :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 239
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 242
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 246
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "askon"

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    .line 249
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 256
    :goto_4
    iget-object v3, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->usbManager:Landroid/hardware/usb/UsbManager;

    const-string/jumbo v4, "mtp"

    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_2

    .line 251
    :catch_2
    move-exception v1

    .line 254
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v3, "KiesUsbManager"

    const-string v4, "This binary is Factory binary"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 265
    :cond_5
    const-string v3, "KiesUsbManager"

    const-string v4, "Usb state is not CONFIGURED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized setCSCtimer()V
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager$1;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .local v0, "myTask":Ljava/util/TimerTask;
    monitor-exit p0

    return-void

    .line 287
    .end local v0    # "myTask":Ljava/util/TimerTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startCDFSEjectTimer()V
    .locals 4

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/KiesConnectivity/KiesUsbManager$2;-><init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 319
    .local v0, "myTask":Ljava/util/TimerTask;
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    .line 321
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 322
    const-string v1, "KiesUsbManager"

    const-string/jumbo v2, "startCDFSEjectTimer -> 30 seconds start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_0
    monitor-exit p0

    return-void

    .line 309
    .end local v0    # "myTask":Ljava/util/TimerTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopCDFSEjectTimer()V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cdfsEjectTimer:Ljava/util/Timer;

    .line 330
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "stopCDFSEjectTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_0
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopCSCtimer()V
    .locals 2

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cscTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cscTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager;->cscTimer:Ljava/util/Timer;

    .line 305
    const-string v0, "KiesUsbManager"

    const-string/jumbo v1, "stop cscTimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_0
    monitor-exit p0

    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
