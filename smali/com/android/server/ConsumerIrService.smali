.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final LED_PATH:Ljava/lang/String; = "/sys/class/sec/led/led_b"

.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final MIN_LED_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private mLEDTimer:Ljava/util/Timer;

.field private final mNativeHal:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 59
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 51
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    .line 60
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 61
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 63
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ConsumerIrService"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 64
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 66
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halOpen()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    .line 67
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.consumerir"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    iget-wide v2, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ConsumerIrService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConsumerIrService;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/ConsumerIrService;->swtichLED(Z)Z

    move-result v0

    return v0
.end method

.method private blinkLED(I)V
    .locals 4
    .param p1, "period"    # I

    .prologue
    .line 168
    const-string v0, "ConsumerIrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blinkLED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->stopBlinkLED()V

    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/ConsumerIrService;->swtichLED(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    .line 173
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/ConsumerIrService$1;

    invoke-direct {v1, p0}, Lcom/android/server/ConsumerIrService$1;-><init>(Lcom/android/server/ConsumerIrService;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 179
    :cond_0
    return-void
.end method

.method private static native halGetCarrierFrequencies(J)[I
.end method

.method private static native halOpen()J
.end method

.method private static native halTransmit(JI[I)I
.end method

.method private stopBlinkLED()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mLEDTimer:Ljava/util/Timer;

    .line 190
    :cond_0
    return-void
.end method

.method private swtichLED(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 202
    .local v1, "fwLED":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/led/led_b"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .local v2, "fwLED":Ljava/io/FileWriter;
    if-eqz p1, :cond_1

    .line 204
    :try_start_1
    const-string v4, "40"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 207
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    const/4 v3, 0x1

    .line 214
    if-eqz v2, :cond_3

    .line 216
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 222
    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    :cond_0
    :goto_1
    return v3

    .line 206
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :cond_1
    :try_start_3
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 210
    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .local v0, "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    :goto_2
    :try_start_4
    const-string v4, "ConsumerIrService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    if-eqz v1, :cond_0

    .line 216
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 217
    :catch_1
    move-exception v0

    .line 218
    .local v0, "ex":Ljava/io/IOException;
    const-string v4, "ConsumerIrService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 217
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catch_2
    move-exception v0

    .line 218
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v4, "ConsumerIrService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 219
    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_1

    .line 211
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 212
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v4, "ConsumerIrService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    if-eqz v1, :cond_0

    .line 216
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 217
    :catch_4
    move-exception v0

    .line 218
    const-string v4, "ConsumerIrService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_2

    .line 216
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 219
    :cond_2
    :goto_5
    throw v4

    .line 217
    :catch_5
    move-exception v0

    .line 218
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v5, "ConsumerIrService"

    const-string v6, "No SvcLED"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 214
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_4

    .line 211
    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_3

    .line 209
    :catch_7
    move-exception v0

    goto :goto_2

    .end local v1    # "fwLED":Ljava/io/FileWriter;
    .restart local v2    # "fwLED":Ljava/io/FileWriter;
    :cond_3
    move-object v1, v2

    .end local v2    # "fwLED":Ljava/io/FileWriter;
    .restart local v1    # "fwLED":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private throwIfNoIrEmitter()V
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .locals 6

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.TRANSMIT_IR"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires TRANSMIT_IR permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 148
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 149
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInfraredState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    const-string v1, "ConsumerIrService"

    const-string v2, "consumer ir service disabled by Knox Customization"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    iget-wide v4, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    invoke-static {v4, v5}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies(J)[I

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasIrEmitter()Z
    .locals 4

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "carrierFrequency"    # I
    .param p3, "pattern"    # [I

    .prologue
    .line 90
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.TRANSMIT_IR"

    invoke-virtual {v9, v12}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 92
    new-instance v9, Ljava/lang/SecurityException;

    const-string v12, "Requires TRANSMIT_IR permission"

    invoke-direct {v9, v12}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 95
    :cond_0
    const-wide/16 v10, 0x0

    .line 97
    .local v10, "totalXmitTime":J
    move-object/from16 v2, p3

    .local v2, "arr$":[I
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget v8, v2, v4

    .line 98
    .local v8, "slice":I
    if-gtz v8, :cond_1

    .line 99
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v12, "Non-positive IR slice"

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 101
    :cond_1
    int-to-long v12, v8

    add-long/2addr v10, v12

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    .end local v8    # "slice":I
    :cond_2
    const-wide/32 v12, 0x1e8480

    cmp-long v9, v10, v12

    if-lez v9, :cond_3

    .line 105
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v12, "IR pattern too long"

    invoke-direct {v9, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 108
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 112
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v5

    .line 113
    .local v5, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v5, :cond_4

    .line 114
    invoke-virtual {v5}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInfraredState()Z

    move-result v9

    if-nez v9, :cond_4

    .line 115
    const-string v9, "ConsumerIrService"

    const-string v12, "consumer ir service disabled by Knox Customization"

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_1
    return-void

    .line 123
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v12

    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/ConsumerIrService;->mNativeHal:J

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v14, v15, v0, v1}, Lcom/android/server/ConsumerIrService;->halTransmit(JI[I)I

    move-result v3

    .line 126
    .local v3, "err":I
    if-gez v3, :cond_5

    .line 127
    const-string v9, "ConsumerIrService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error transmitting: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_5
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v7, v14

    .line 131
    .local v7, "period":I
    const/16 v9, 0xc8

    if-le v7, v9, :cond_6

    const/16 v7, 0xc8

    .line 132
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/ConsumerIrService;->blinkLED(I)V

    .line 134
    monitor-exit v12

    goto :goto_1

    .end local v3    # "err":I
    .end local v7    # "period":I
    :catchall_0
    move-exception v9

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method
