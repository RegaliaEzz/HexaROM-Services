.class public Lcom/android/server/LSManager;
.super Landroid/os/storage/sensitive/SDServiceAPI$Stub;
.source "LSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LSManager$1;,
        Lcom/android/server/LSManager$SetPasswordInThread;,
        Lcom/android/server/LSManager$SetLockedInThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DKEK_PATH_NAME:Ljava/lang/String; = "ss_lsm.d"

.field private static final FLAG_SIZE:I = 0x4

.field private static final ID_LENGTH:I = 0x24

.field private static final KEYPAIR_PATH_NAME:Ljava/lang/String; = "ss_lsm.k"

.field private static final KEY_STORE_DIR:Ljava/lang/String; = "/efs/"

.field private static final LOCK_EVENT_DELAY:I = 0x29a

.field private static final PSPACER_LEN:I = 0x40

.field private static final SET_PASSWORD_EVENT_DELAY:I = 0x457

.field private static final SET_STATE_LOCKED:I = 0x1

.field private static final SET_STATE_NOT_LOCKED:I = 0x0

.field private static final SS_AUTH_TAG_LEN:I = 0x10

.field private static final SS_IV_LEN:I = 0xc

.field private static final UINT32_T_SIZE:I = 0x4

.field private static lockedState:Z

.field private static final mDefaultPassword:[B

.field private static mSetLockedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static mStateChangeLock:Ljava/lang/Object;

.field private static passwordProtected:Z

.field private static passwordReady:Z

.field private static ready:Z

.field private static secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;


# instance fields
.field private TAG:Ljava/lang/String;

.field private askeypair:[B

.field private dkek:[B

.field private mContext:Landroid/content/Context;

.field private mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 59
    sput-boolean v8, Lcom/android/server/LSManager;->ready:Z

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/LSManager;->mStateChangeLock:Ljava/lang/Object;

    .line 64
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 66
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/server/LSManager;->mSetLockedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 636
    sput-boolean v8, Lcom/android/server/LSManager;->lockedState:Z

    .line 723
    sput-boolean v8, Lcom/android/server/LSManager;->passwordProtected:Z

    .line 724
    sput-boolean v8, Lcom/android/server/LSManager;->passwordReady:Z

    .line 730
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/LSManager;->mDefaultPassword:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3dt
        -0x58t
        -0x77t
        -0x6dt
        0x5at
        -0x4ft
        -0x5at
        -0x54t
        -0x19t
        0x58t
        0x21t
        0x2ft
        -0xdt
        0x6bt
        0x27t
        0x76t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x79t
        -0x59t
        0x4ft
        -0x12t
        -0x6et
        -0x49t
        -0x6ft
        0x48t
        -0x47t
        -0x3et
        0x66t
        0x10t
        0xct
        -0x25t
        0x3t
        -0x2t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;-><init>()V

    .line 60
    iput-object v2, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object v2, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    .line 152
    const-string v1, "LSManager"

    iput-object v1, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    .line 406
    iput-object v2, p0, Lcom/android/server/LSManager;->askeypair:[B

    .line 407
    iput-object v2, p0, Lcom/android/server/LSManager;->dkek:[B

    .line 70
    iget-object v1, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "Start LSManager."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v1, "LSManager constructor was started..."

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    .line 74
    iget-object v1, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 75
    const-string v1, "Hey! mContext is null :("

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/android/server/LSManager;->lockLSM()V

    .line 126
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Landroid/os/storage/sensitive/SecureStorageLSM;->getInstance()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v1

    sput-object v1, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    .line 81
    const-string/jumbo v1, "lets try to initialize SS"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v1}, Landroid/os/storage/sensitive/SecureStorageLSM;->initialize()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 83
    invoke-direct {p0, v3}, Lcom/android/server/LSManager;->setReady(Z)V

    .line 84
    const-string v1, "SS is initialized"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "SS is ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v1, Landroid/os/storage/sensitive/SensitiveDataProvider;

    iget-object v2, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/os/storage/sensitive/SensitiveDataProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    .line 93
    iget-object v1, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    if-nez v1, :cond_2

    .line 94
    const-string v1, "Bad things happening, mProvider is null :("

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/android/server/LSManager;->lockLSM()V

    goto :goto_0

    .line 87
    :cond_1
    const-string v1, "SS initialization failed"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "SS is not ready at the beginning..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_2
    const-string/jumbo v1, "ss_lsm.k"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->readDataFromFile(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LSManager;->askeypair:[B

    .line 100
    const-string/jumbo v1, "ss_lsm.d"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->readDataFromFile(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LSManager;->dkek:[B

    .line 101
    iget-object v1, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v1, :cond_3

    .line 102
    const-string v1, "askeypair is absent on startup."

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 104
    :cond_3
    iget-object v1, p0, Lcom/android/server/LSManager;->dkek:[B

    if-nez v1, :cond_4

    .line 105
    const-string/jumbo v1, "dkek is absent on startup."

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 124
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/LSManager;->setLocked()V

    .line 125
    const-string v1, "LSManager is constructed."

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_4
    :try_start_0
    sget-object v1, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    iget-object v2, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-virtual {v1, v2}, Landroid/os/storage/sensitive/SecureStorageLSM;->check_if_default_password_is_set([B)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 111
    const-string v1, "Is not password protected."

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->setPasswordProtected(Z)V
    :try_end_0
    .catch Landroid/os/storage/sensitive/SecureStorageLSM$SecureStorageLSMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/storage/sensitive/SecureStorageLSM$SecureStorageLSMException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got SecureStorageLSMException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/storage/sensitive/SecureStorageLSM$SecureStorageLSMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/android/server/LSManager;->lockLSM()V

    goto/16 :goto_0

    .line 114
    .end local v0    # "e":Landroid/os/storage/sensitive/SecureStorageLSM$SecureStorageLSMException;
    :cond_5
    :try_start_1
    const-string v1, "Is password protected."

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 115
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->setPasswordProtected(Z)V
    :try_end_1
    .catch Landroid/os/storage/sensitive/SecureStorageLSM$SecureStorageLSMException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LSManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LSManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LSManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/LSManager;->isReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()[B
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/LSManager;->mDefaultPassword:[B

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LSManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LSManager;
    .param p1, "x1"    # [B

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->reEncryptSecretWithPassword([B)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LSManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LSManager;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->setPasswordProtected(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LSManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LSManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/LSManager;->passwordIsReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/LSManager;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LSManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/LSManager;->dkek:[B

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LSManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LSManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/LSManager;->generateSecret()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/LSManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LSManager;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LSManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LSManager;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->setLockedState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LSManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LSManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/LSManager;->isLockedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/LSManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LSManager;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->setPasswordReady(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LSManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LSManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/LSManager;->passwordIsProtected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/LSManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LSManager;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/LSManager;->secretIsReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Landroid/os/storage/sensitive/SecureStorageLSM;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LSManager;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LSManager;
    .param p1, "x1"    # [B

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->passwordIsNumeric([B)Z

    move-result v0

    return v0
.end method

.method public static bs2l(Ljava/util/BitSet;)J
    .locals 6
    .param p0, "bits"    # Ljava/util/BitSet;

    .prologue
    .line 914
    const-wide/16 v2, 0x0

    .line 915
    .local v2, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 916
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v0

    :goto_1
    add-long/2addr v2, v4

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 916
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 918
    :cond_1
    return-wide v2
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "LogString"    # Ljava/lang/String;

    .prologue
    .line 159
    return-void
.end method

.method private debugLogBlob(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .prologue
    .line 176
    return-void
.end method

.method private decryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 12
    .param p1, "parcel"    # Landroid/os/storage/sensitive/SensitiveDataParcel;

    .prologue
    const/16 v11, 0x24

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 283
    const-string/jumbo v7, "decryptData"

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 285
    invoke-direct {p0}, Lcom/android/server/LSManager;->passwordIsProtected()Z

    move-result v7

    if-nez v7, :cond_0

    .line 286
    const-string v7, "Decryption is not allowed."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 343
    :goto_0
    return-object v5

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LSManager;->isLockedState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 291
    const-string v7, "Can not decrypt in locked state"

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_1
    const-string v7, "Not locked, let\'s do it!"

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v0

    .line 297
    .local v0, "data":[B
    const-string v1, ""

    .line 299
    .local v1, "debugData":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .end local v1    # "debugData":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-direct {v1, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .restart local v1    # "debugData":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 310
    const-string v4, ""

    .line 312
    .local v4, "kid":Ljava/lang/String;
    :try_start_1
    new-instance v4, Ljava/lang/String;

    .end local v4    # "kid":Ljava/lang/String;
    const/4 v7, 0x0

    const/16 v8, 0x24

    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    .restart local v4    # "kid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "kid :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0, v4}, Lcom/android/server/LSManager;->reEncryptDataKey(Ljava/lang/String;)V

    .line 325
    :try_start_2
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 331
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getClient()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/os/storage/sensitive/SensitiveDataProvider;->read(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 332
    .local v3, "header":[B
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    .line 333
    if-nez v3, :cond_2

    .line 334
    const-string/jumbo v7, "header is null :("

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    .end local v1    # "debugData":Ljava/lang/String;
    .end local v3    # "header":[B
    .end local v4    # "kid":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 304
    const-string v7, "Unsupported encoding exception."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "debugData":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 316
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 317
    const-string v7, "Unsupported encoding exception."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 326
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "kid":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 327
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 328
    const-string v7, "Opening Android DB error..."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v3    # "header":[B
    :cond_2
    array-length v7, v0

    add-int/lit8 v7, v7, -0x24

    array-length v8, v3

    add-int/2addr v7, v8

    new-array v6, v7, [B

    .line 339
    .local v6, "todecrypt":[B
    array-length v7, v3

    add-int/lit8 v7, v7, -0x4

    invoke-static {v3, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 340
    array-length v7, v3

    add-int/lit8 v7, v7, -0x4

    array-length v8, v0

    add-int/lit8 v8, v8, -0x24

    invoke-static {v0, v11, v6, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 341
    array-length v7, v3

    add-int/lit8 v7, v7, -0x4

    array-length v8, v3

    add-int/lit8 v8, v8, -0x4

    array-length v9, v0

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x24

    const/4 v9, 0x4

    invoke-static {v3, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 342
    sget-object v7, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v7, v6}, Landroid/os/storage/sensitive/SecureStorageLSM;->decrypt([B)[B

    move-result-object v5

    .line 343
    .local v5, "result":[B
    goto/16 :goto_0
.end method

.method private encryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 21
    .param p1, "parcel"    # Landroid/os/storage/sensitive/SensitiveDataParcel;

    .prologue
    .line 185
    const-string/jumbo v3, "encryptData"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LSManager;->passwordIsProtected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    const-string v3, "Encryption is not allowed."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 189
    const/16 v19, 0x0

    .line 279
    :goto_0
    return-object v19

    .line 194
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v15

    .line 195
    .local v15, "kid":Ljava/util/UUID;
    const/4 v9, 0x0

    .line 198
    .local v9, "bkid":[B
    :try_start_0
    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 207
    new-instance v13, Ljava/util/BitSet;

    const/16 v3, 0x20

    invoke-direct {v13, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 209
    .local v13, "flags":Ljava/util/BitSet;
    const/16 v16, 0x0

    .line 211
    .local v16, "locked":I
    const-string v3, "Checking parcel..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 212
    if-nez p1, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Parcel is null "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v19, 0x0

    goto :goto_0

    .line 200
    .end local v13    # "flags":Ljava/util/BitSet;
    .end local v16    # "locked":I
    :catch_0
    move-exception v10

    .line 202
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 203
    const-string v3, "Unsupported encoding exception."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 204
    const/16 v19, 0x0

    goto :goto_0

    .line 216
    .end local v10    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v13    # "flags":Ljava/util/BitSet;
    .restart local v16    # "locked":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v3

    if-nez v3, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Parcel.getData() is null "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v19, 0x0

    goto :goto_0

    .line 221
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LSManager;->isLockedState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/BitSet;->set(I)V

    .line 223
    const/16 v16, 0x1

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 225
    .local v2, "bb":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 227
    .local v20, "wks":I
    move/from16 v0, v20

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 228
    const/16 v3, 0xc

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 229
    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 231
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 232
    .local v17, "pks":I
    move/from16 v0, v20

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 233
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 234
    .local v18, "public_key":[B
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 235
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 236
    move-object/from16 v0, v18

    array-length v3, v0

    add-int/lit8 v3, v3, 0xc

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 237
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 238
    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 239
    const-string v3, "bb.put(public_key)"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 241
    const-string/jumbo v3, "lockedState - encrypted = secureStorageLSM.encrypt"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 242
    sget-object v3, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/storage/sensitive/SecureStorageLSM;->encrypt([B[BI)[B

    move-result-object v12

    .line 247
    .end local v2    # "bb":Ljava/nio/ByteBuffer;
    .end local v17    # "pks":I
    .end local v18    # "public_key":[B
    .end local v20    # "wks":I
    .local v12, "encrypted":[B
    :goto_1
    if-nez v12, :cond_4

    .line 248
    const-string v3, "Encryption error..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 249
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 244
    .end local v12    # "encrypted":[B
    :cond_3
    const-string/jumbo v3, "encrypted = secureStorageLSM.encrypt"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 245
    sget-object v3, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [B

    move/from16 v0, v16

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/storage/sensitive/SecureStorageLSM;->encrypt([B[BI)[B

    move-result-object v12

    .restart local v12    # "encrypted":[B
    goto :goto_1

    .line 251
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size of encrypted is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v3, "encrypted "

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    .line 255
    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 256
    .local v11, "eb":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v11, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 257
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    shr-int/lit8 v14, v3, 0x10

    .line 258
    .local v14, "hsize":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 259
    add-int/lit8 v3, v14, 0x4

    new-array v8, v3, [B

    .line 260
    .local v8, "header":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v3, v8, v4, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 261
    array-length v3, v12

    add-int/lit8 v3, v3, -0x4

    const/4 v4, 0x4

    invoke-static {v12, v3, v8, v14, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 265
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getClient()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v6

    invoke-virtual/range {v3 .. v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->write(Ljava/lang/String;Ljava/lang/String;J[B)Z

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v3}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    .line 275
    array-length v3, v12

    add-int/lit8 v4, v14, 0x4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x24

    new-array v0, v3, [B

    move-object/from16 v19, v0

    .line 276
    .local v19, "result":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeData :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 277
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x24

    move-object/from16 v0, v19

    invoke-static {v9, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 278
    const/16 v3, 0x24

    array-length v4, v12

    add-int/lit8 v5, v14, 0x4

    sub-int/2addr v4, v5

    move-object/from16 v0, v19

    invoke-static {v12, v14, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto/16 :goto_0

    .line 266
    .end local v19    # "result":[B
    :catch_1
    move-exception v10

    .line 267
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 268
    const-string v3, "Opening Android DB error..."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 269
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method private generateSecret()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 436
    const-string/jumbo v6, "gen_keypair NATIVE"

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 437
    sget-object v6, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/storage/sensitive/SecureStorageLSM;->gen_keypair([B)[B

    move-result-object v4

    .line 438
    .local v4, "rezult":[B
    if-nez v4, :cond_0

    .line 439
    const-string/jumbo v6, "gen_keypair failed :( ..."

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 440
    invoke-direct {p0}, Lcom/android/server/LSManager;->lockLSM()V

    .line 474
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string/jumbo v6, "rezult"

    invoke-direct {p0, v6, v4}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    .line 444
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 445
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rezult.length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bb.capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 453
    .local v5, "wks":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wks: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 454
    new-array v6, v5, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 455
    const/16 v6, 0xc

    new-array v6, v6, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 456
    const/16 v6, 0x10

    new-array v6, v6, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 457
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 458
    .local v2, "priv_len":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "priv_len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 460
    .local v3, "pub_len":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pub_len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 461
    new-array v6, v2, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 462
    new-array v6, v3, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 463
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 464
    .local v1, "dkek_len":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dkek_len: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 465
    new-array v6, v1, [B

    iput-object v6, p0, Lcom/android/server/LSManager;->dkek:[B

    .line 466
    iget-object v6, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 467
    const-string/jumbo v6, "dkek"

    iget-object v7, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-direct {p0, v6, v7}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    .line 468
    array-length v6, v4

    iget-object v7, p0, Lcom/android/server/LSManager;->dkek:[B

    array-length v7, v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x4

    new-array v6, v6, [B

    iput-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    .line 471
    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v4

    iget-object v8, p0, Lcom/android/server/LSManager;->dkek:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x4

    invoke-static {v4, v9, v6, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 472
    const-string v6, "askeypair"

    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-direct {p0, v6, v7}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    .line 473
    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypairAndDKEK()V

    goto/16 :goto_0
.end method

.method private isLockedState()Z
    .locals 1

    .prologue
    .line 640
    sget-boolean v0, Lcom/android/server/LSManager;->lockedState:Z

    return v0
.end method

.method private isReady()Z
    .locals 1

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/server/LSManager;->ready:Z

    return v0
.end method

.method public static l2bs(J)Ljava/util/BitSet;
    .locals 6
    .param p0, "value"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 901
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 902
    .local v0, "bits":Ljava/util/BitSet;
    const/4 v1, 0x0

    .line 903
    .local v1, "index":I
    :goto_0
    cmp-long v2, p0, v4

    if-eqz v2, :cond_1

    .line 904
    const-wide/16 v2, 0x2

    rem-long v2, p0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 905
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 907
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 908
    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    goto :goto_0

    .line 910
    :cond_1
    return-object v0
.end method

.method private lockLSM()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    const-string v0, "Locking LSM, sory :/"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->setReady(Z)V

    .line 131
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/server/LSManager;->dkek:[B

    .line 132
    return-void
.end method

.method private passwordIsNumeric([B)Z
    .locals 3
    .param p1, "pass"    # [B

    .prologue
    .line 866
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 867
    aget-byte v1, p1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    aget-byte v1, p1, v0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    .line 868
    :cond_0
    const-string v1, "Password is not numeric."

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 869
    const/4 v1, 0x0

    .line 873
    :goto_1
    return v1

    .line 866
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    :cond_2
    const-string v1, "Password is numeric."

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 873
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private passwordIsProtected()Z
    .locals 1

    .prologue
    .line 744
    sget-boolean v0, Lcom/android/server/LSManager;->passwordProtected:Z

    return v0
.end method

.method private passwordIsReady()Z
    .locals 1

    .prologue
    .line 752
    sget-boolean v0, Lcom/android/server/LSManager;->passwordReady:Z

    return v0
.end method

.method private reEncryptDataKey(Ljava/lang/String;)V
    .locals 10
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 488
    const-string v7, "Reencrypt start"

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 490
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v7, :cond_1

    .line 491
    const-string v7, "askeypair is null."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    const/4 v3, 0x0

    .line 496
    .local v3, "keyset":[B
    new-instance v2, Ljava/util/BitSet;

    const/16 v7, 0x20

    invoke-direct {v2, v7}, Ljava/util/BitSet;-><init>(I)V

    .line 497
    .local v2, "flags":Ljava/util/BitSet;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/BitSet;->set(I)V

    .line 500
    if-nez p1, :cond_3

    .line 518
    :goto_1
    if-eqz v3, :cond_2

    array-length v7, v3

    if-nez v7, :cond_4

    .line 519
    :cond_2
    const-string v7, "Have nothing to re_encrypt."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-static {v2}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, p1}, Landroid/os/storage/sensitive/SensitiveDataProvider;->get_keys_by_flag_and_uuid(JLjava/lang/String;)[B

    move-result-object v3

    .line 514
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    goto :goto_1

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 510
    const-string v7, "Opening Android DB error..."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_4
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0x40

    array-length v8, v3

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 524
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 525
    const/16 v7, 0x40

    new-array v7, v7, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 526
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 527
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 528
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 529
    const-string v7, "Go to TZ"

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bb size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 532
    const-string v7, "askeypair and key set (sending to TZ)"

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    .line 535
    sget-object v7, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/sensitive/SecureStorageLSM;->keys_re_encrypt([B)[B

    move-result-object v6

    .line 536
    .local v6, "rezult":[B
    if-eqz v6, :cond_0

    .line 539
    const-string/jumbo v7, "rezult : "

    invoke-direct {p0, v7, v6}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    .line 542
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 543
    const-string v7, "Update."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 544
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 545
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bb size after wrap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 546
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 547
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 548
    .local v4, "len":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keylen: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 549
    new-array v7, v4, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 550
    array-length v7, v3

    if-eqz v7, :cond_0

    .line 551
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    new-array v5, v7, [B

    .line 552
    .local v5, "nkeys":[B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keys size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 555
    :try_start_1
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 561
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7, v5}, Landroid/os/storage/sensitive/SensitiveDataProvider;->update_keys([B)V

    .line 562
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    goto/16 :goto_0

    .line 556
    :catch_1
    move-exception v1

    .line 557
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 558
    const-string v7, "Opening Android DB error..."

    invoke-direct {p0, v7}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private reEncryptSecretWithPassword([B)V
    .locals 9
    .param p1, "newpass"    # [B

    .prologue
    const/16 v8, 0x40

    const/4 v7, 0x0

    .line 567
    const-string v6, "Re_encrypt asympair and dkek!"

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 568
    invoke-direct {p0}, Lcom/android/server/LSManager;->secretIsReady()Z

    move-result v6

    if-nez v6, :cond_0

    .line 623
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x40

    add-int/lit8 v6, v6, 0xa

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 574
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 575
    new-array v3, v8, [B

    .line 576
    .local v3, "np":[B
    array-length v4, p1

    .line 577
    .local v4, "npCopyLen":I
    if-le v4, v8, :cond_1

    .line 578
    const/16 v4, 0x40

    .line 580
    :cond_1
    invoke-static {p1, v7, v3, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 581
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 582
    invoke-static {v3, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 583
    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v6, v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 584
    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 585
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bb size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    .line 589
    .local v1, "bbCapacityBeforeReEncrypt":I
    const-string v6, "Go to TZ"

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 590
    sget-object v6, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/sensitive/SecureStorageLSM;->dkek_re_encrypt([B)[B

    move-result-object v5

    .line 595
    .local v5, "rezult":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 596
    new-array v6, v1, [B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 599
    if-nez v5, :cond_2

    .line 600
    const-string/jumbo v6, "dkek_re_encrypt failed :( ..."

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 609
    const-string v6, "Update."

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 610
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 611
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bb size after wrap: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 612
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 613
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 614
    .local v2, "len":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Keylen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 615
    iget-object v6, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 616
    const-string/jumbo v6, "re-encrypted askeypair"

    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-direct {p0, v6, v7}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    .line 617
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DKEKlen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 619
    iget-object v6, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 620
    const-string/jumbo v6, "re-encrypted dkek"

    iget-object v7, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-direct {p0, v6, v7}, Lcom/android/server/LSManager;->debugLogBlob(Ljava/lang/String;[B)V

    .line 621
    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypairAndDKEK()V

    .line 622
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->setPasswordReady(Z)V

    goto/16 :goto_0
.end method

.method private readDataFromFile(Ljava/lang/String;)[B
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 922
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readData from /efs/ for file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 923
    new-instance v4, Ljava/io/File;

    const-string v6, "/efs/"

    invoke-direct {v4, v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .local v4, "kpfile":Ljava/io/File;
    const/4 v0, 0x0

    .line 925
    .local v0, "data":[B
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 926
    const/4 v2, 0x0

    .line 928
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 930
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 931
    .local v5, "readData":I
    if-nez v5, :cond_0

    .line 932
    const/4 v0, 0x0

    .line 942
    :cond_0
    if-eqz v3, :cond_1

    .line 944
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 951
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "readData":I
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 952
    const-string v6, "Nothing to return :|"

    invoke-direct {p0, v6}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    :cond_2
    move-object v6, v0

    .line 954
    :cond_3
    :goto_1
    return-object v6

    .line 945
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "readData":I
    :catch_0
    move-exception v1

    .line 946
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 934
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "readData":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 935
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file open error."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 937
    const/4 v6, 0x0

    .line 942
    if-eqz v2, :cond_3

    .line 944
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 945
    :catch_2
    move-exception v1

    .line 946
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 938
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 939
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    iget-object v6, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file read error."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 942
    if-eqz v2, :cond_1

    .line 944
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 945
    :catch_4
    move-exception v1

    .line 946
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 942
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v2, :cond_4

    .line 944
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 947
    :cond_4
    :goto_5
    throw v6

    .line 945
    :catch_5
    move-exception v1

    .line 946
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 942
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 938
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 934
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private secretIsReady()Z
    .locals 2

    .prologue
    .line 410
    const/4 v0, 0x1

    .line 411
    .local v0, "readyResult":Z
    iget-object v1, p0, Lcom/android/server/LSManager;->dkek:[B

    if-nez v1, :cond_2

    .line 412
    const-string/jumbo v1, "dkek is null"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    .line 418
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v1, :cond_3

    .line 419
    const-string v1, "askeypair is null"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x0

    .line 425
    :cond_1
    :goto_1
    return v0

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/android/server/LSManager;->dkek:[B

    array-length v1, v1

    if-nez v1, :cond_0

    .line 415
    const-string/jumbo v1, "dkek.length is 0"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    goto :goto_0

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v1, v1

    if-nez v1, :cond_1

    .line 422
    const-string v1, "askeypair.length is 0"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setLockedState(Z)V
    .locals 0
    .param p1, "lockedState"    # Z

    .prologue
    .line 644
    sput-boolean p1, Lcom/android/server/LSManager;->lockedState:Z

    .line 645
    return-void
.end method

.method private setPasswordProtected(Z)V
    .locals 0
    .param p1, "passwordProtected"    # Z

    .prologue
    .line 740
    sput-boolean p1, Lcom/android/server/LSManager;->passwordProtected:Z

    .line 741
    return-void
.end method

.method private setPasswordReady(Z)V
    .locals 0
    .param p1, "passwordReady"    # Z

    .prologue
    .line 748
    sput-boolean p1, Lcom/android/server/LSManager;->passwordReady:Z

    .line 749
    return-void
.end method

.method private setReady(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .prologue
    .line 135
    sput-boolean p1, Lcom/android/server/LSManager;->ready:Z

    .line 136
    return-void
.end method

.method private updateDataInFile(Ljava/lang/String;[B)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 958
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/"

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .local v3, "kpfile":Ljava/io/File;
    const/4 v1, 0x0

    .line 961
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 971
    if-eqz v2, :cond_2

    .line 973
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 979
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 974
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 976
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 963
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 964
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    iget-object v4, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file open error."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 971
    if-eqz v1, :cond_0

    .line 973
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 974
    :catch_2
    move-exception v0

    .line 975
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 967
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 968
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file write error."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 971
    if-eqz v1, :cond_0

    .line 973
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 974
    :catch_4
    move-exception v0

    .line 975
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 971
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_1

    .line 973
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 976
    :cond_1
    :goto_4
    throw v4

    .line 974
    :catch_5
    move-exception v0

    .line 975
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 971
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 967
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 963
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private updateKeypairAndDKEK()V
    .locals 2

    .prologue
    .line 477
    const-string/jumbo v0, "update_keypair"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v0, "ss_lsm.k"

    iget-object v1, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-direct {p0, v0, v1}, Lcom/android/server/LSManager;->updateDataInFile(Ljava/lang/String;[B)V

    .line 479
    const-string/jumbo v0, "update_dkek"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 480
    const-string/jumbo v0, "ss_lsm.d"

    iget-object v1, p0, Lcom/android/server/LSManager;->dkek:[B

    invoke-direct {p0, v0, v1}, Lcom/android/server/LSManager;->updateDataInFile(Ljava/lang/String;[B)V

    .line 481
    return-void
.end method


# virtual methods
.method public processParcel(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 3
    .param p1, "parcel"    # Landroid/os/storage/sensitive/SensitiveDataParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    const-string/jumbo v1, "processParcel"

    invoke-direct {p0, v1}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 357
    sget-object v1, Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Lcom/android/server/LSManager;->mSetLockedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-gtz v1, :cond_0

    sget-object v1, Lcom/android/server/LSManager;->mSetLockedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "Busy..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    .line 386
    :cond_1
    :goto_0
    return-object v0

    .line 365
    :cond_2
    const/4 v0, 0x0

    .line 366
    .local v0, "result":[B
    invoke-direct {p0}, Lcom/android/server/LSManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 368
    if-eqz p1, :cond_1

    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getOperation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 382
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 374
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->encryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B

    move-result-object v0

    .line 375
    goto :goto_1

    .line 377
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->decryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 378
    goto :goto_1

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "Secure Storage not accesible. SensitiveData API disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLocked()V
    .locals 3

    .prologue
    .line 707
    const-string v0, "Set Locked."

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 708
    sget-object v0, Lcom/android/server/LSManager;->mSetLockedExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/LSManager$SetLockedInThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LSManager$SetLockedInThread;-><init>(Lcom/android/server/LSManager;Lcom/android/server/LSManager$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 709
    return-void
.end method

.method public setPassword([B)V
    .locals 2
    .param p1, "pass"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 890
    const-string/jumbo v0, "setPassword"

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 891
    sget-object v0, Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/server/LSManager$SetPasswordInThread;

    invoke-direct {v1, p0, p1}, Lcom/android/server/LSManager$SetPasswordInThread;-><init>(Lcom/android/server/LSManager;[B)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 892
    return-void
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 143
    const-string v0, "Do something JNI related here."

    invoke-direct {p0, v0}, Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V

    .line 144
    return-void
.end method
