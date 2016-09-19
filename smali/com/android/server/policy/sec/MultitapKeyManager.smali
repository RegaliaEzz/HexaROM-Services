.class public Lcom/android/server/policy/sec/MultitapKeyManager;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final SEC_DOUBLE_TAP_TIMEOUT:I = 0xaa

.field private static final TAG:Ljava/lang/String; = "MultitapKeyManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mHomeConsumed:Z

.field private mHomeDoubleEventTime:J

.field private mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeFakeTripleTapPending:Z

.field private mHomeKeyLastEventTime:J

.field private mHomeTripleTapPending:Z

.field private final mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerConsumed:Z

.field private mPowerDoubleTapPending:Z

.field private mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mPowerTripleEventTime:J

.field private mPowerTripleTapPending:Z

.field private mPowerTripleTapReady:Z

.field private mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 4
    .param p1, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "samsungPhoneWindowManager"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    .line 55
    iput-boolean v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 63
    iput-wide v2, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    .line 64
    iput-wide v2, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 65
    iput-wide v2, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeKeyLastEventTime:J

    .line 256
    new-instance v0, Lcom/android/server/policy/sec/MultitapKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/MultitapKeyManager$1;-><init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 288
    new-instance v0, Lcom/android/server/policy/sec/MultitapKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/MultitapKeyManager$2;-><init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 311
    new-instance v0, Lcom/android/server/policy/sec/MultitapKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/MultitapKeyManager$3;-><init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 325
    new-instance v0, Lcom/android/server/policy/sec/MultitapKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/MultitapKeyManager$4;-><init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 72
    iput-object p2, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/sec/MultitapKeyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/sec/MultitapKeyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/sec/MultitapKeyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/sec/MultitapKeyManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/MultitapKeyManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    return p1
.end method

.method private handleDoubleTapOnPower()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 308
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->callAccessibilityScreenCurtain()V

    .line 309
    return-void
.end method

.method private handleTripleTapOnHome()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 267
    iput-boolean v2, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 270
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 271
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    .line 286
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateEasyOneHandState(ZZZ)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendBroadcastForAccessibility()V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_0
.end method

.method private handleTripleTapOnPower()V
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 321
    iget-object v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendBroadcastForSafetyAssurance()V

    .line 322
    return-void
.end method


# virtual methods
.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/sec/MultitapKeyManager;->dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public dispatchMultitapKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "force"    # Z

    .prologue
    const-wide/16 v8, 0xaa

    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 81
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 82
    .local v2, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 84
    .local v0, "down":Z
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 197
    :cond_0
    :goto_1
    return v3

    .end local v0    # "down":Z
    :cond_1
    move v0, v3

    .line 82
    goto :goto_0

    .line 86
    .restart local v0    # "down":Z
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-ne v5, v4, :cond_2

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isSmartHallFlipStateUnfold()Z

    move-result v5

    if-nez v5, :cond_0

    .line 89
    :cond_2
    if-nez v0, :cond_9

    .line 90
    iput-wide v10, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeKeyLastEventTime:J

    .line 91
    iput-wide v10, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 92
    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeConsumed:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-nez v5, :cond_3

    .line 93
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeConsumed:Z

    move v3, v4

    .line 94
    goto :goto_1

    .line 97
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    if-eqz v5, :cond_6

    .line 98
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 100
    sget-boolean v3, Lcom/android/server/policy/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "MultitapKeyManager"

    const-string v5, "Home tripletap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v3, v4

    .line 101
    goto :goto_1

    .line 102
    :cond_6
    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    :cond_7
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iput-boolean v4, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 105
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeKeyLastEventTime:J

    .line 106
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    sget-boolean v3, Lcom/android/server/policy/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "MultitapKeyManager"

    const-string v5, "Home doubletap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v3, v4

    .line 108
    goto :goto_1

    .line 111
    :cond_9
    if-nez v2, :cond_0

    .line 112
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_b

    .line 116
    sget-boolean v3, Lcom/android/server/policy/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap wakeup time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " first="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_a
    iput-wide v10, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 118
    invoke-virtual {p0}, Lcom/android/server/policy/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    move v3, v4

    .line 119
    goto/16 :goto_1

    .line 123
    :cond_b
    if-eqz p2, :cond_d

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const-wide/16 v8, 0x154

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    .line 125
    sget-boolean v3, Lcom/android/server/policy/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap first event time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleEventTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move v3, v4

    .line 126
    goto/16 :goto_1

    .line 129
    :cond_d
    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    if-eqz v5, :cond_10

    .line 130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeKeyLastEventTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x28

    cmp-long v5, v6, v8

    if-gtz v5, :cond_e

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v5

    if-nez v5, :cond_e

    .line 131
    const-string v4, "MultitapKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home doubletap drop for time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeKeyLastEventTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput-wide v10, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeKeyLastEventTime:J

    goto/16 :goto_1

    .line 135
    :cond_e
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z

    .line 136
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 138
    iput-boolean v4, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    :goto_2
    move v3, v4

    .line 143
    goto/16 :goto_1

    .line 140
    :cond_f
    iput-boolean v4, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/server/policy/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    goto :goto_2

    .line 144
    :cond_10
    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v5, :cond_0

    .line 145
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    .line 146
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    invoke-direct {p0}, Lcom/android/server/policy/sec/MultitapKeyManager;->handleTripleTapOnHome()V

    move v3, v4

    .line 148
    goto/16 :goto_1

    .line 153
    :sswitch_1
    if-nez v0, :cond_14

    .line 154
    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerConsumed:Z

    if-eqz v5, :cond_11

    .line 155
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerConsumed:Z

    move v3, v4

    .line 156
    goto/16 :goto_1

    .line 159
    :cond_11
    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 160
    iput-boolean v4, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 161
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    .line 162
    sget-boolean v5, Lcom/android/server/policy/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_12

    const-string v5, "MultitapKeyManager"

    const-string v6, "Power tripletap timeout posted!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_12
    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnPowerEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_0

    .line 165
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    iput-boolean v4, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 167
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    sget-boolean v3, Lcom/android/server/policy/sec/MultitapKeyManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_13

    const-string v3, "MultitapKeyManager"

    const-string v5, "Power doubletap timeout runnable posted!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move v3, v4

    .line 169
    goto/16 :goto_1

    .line 172
    :cond_14
    if-nez v2, :cond_0

    .line 173
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerConsumed:Z

    .line 174
    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    if-eqz v5, :cond_15

    .line 175
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapPending:Z

    .line 176
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleEventTime:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_17

    .line 177
    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    if-eqz v5, :cond_16

    .line 178
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    .line 179
    invoke-direct {p0}, Lcom/android/server/policy/sec/MultitapKeyManager;->handleTripleTapOnPower()V

    .line 188
    :cond_15
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    if-eqz v5, :cond_0

    .line 189
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapPending:Z

    .line 190
    iget-object v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    invoke-direct {p0}, Lcom/android/server/policy/sec/MultitapKeyManager;->handleDoubleTapOnPower()V

    move v3, v4

    .line 192
    goto/16 :goto_1

    .line 181
    :cond_16
    iput-boolean v4, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_3

    .line 184
    :cond_17
    const-string v5, "MultitapKeyManager"

    const-string/jumbo v6, "mPowerTripleTap is timeout"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-boolean v3, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapReady:Z

    goto :goto_3

    .line 84
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public handleDoubleTapOnHome()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 203
    .local v0, "knoxCustomManager":Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in Sealed mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in kidsmode and container only mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in access control"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in LockTaskMode enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isCurrentUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_4

    .line 231
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in UserSetup not complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 236
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in SimLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 241
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in CarrierLock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEncryptionMode()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 247
    const-string v1, "MultitapKeyManager"

    const-string v2, "Home doubletap block in Encryption mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeConsumed:Z

    .line 253
    iget-object v1, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchDoubleTapOnHomeCommand()V

    goto :goto_0
.end method

.method public isHomeConsumed()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeConsumed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
