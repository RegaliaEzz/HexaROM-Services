.class final Lcom/android/server/cover/NfcLedCoverController;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/NfcLedCoverController$1;,
        Lcom/android/server/cover/NfcLedCoverController$Command;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field private static final CMD_INTERNAL_LED_ACCEPT_REJECT:I = 0x11

.field private static final CMD_INTERNAL_LED_CALL_INPROGRESS:I = 0x3

.field private static final CMD_INTERNAL_LED_REPLY:I = 0xd1

.field private static final CMD_LED_ALARM:I = 0x6

.field private static final CMD_LED_BATTERY_CHARGING:I = 0xc

.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS:I = 0x13

.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS_DELAY:J = 0x96L

.field private static final CMD_LED_BATTERY_LOW:I = 0xb

.field private static final CMD_LED_CALL_END:I = 0x4

.field private static final CMD_LED_CALL_INCOMING:I = 0x2

.field private static final CMD_LED_CALL_INPROGRESS:I = 0xfffe

.field private static final CMD_LED_CLEAR_ONGOING_EVENT:I = 0xfff0

.field private static final CMD_LED_CLOCK:I = 0xf

.field private static final CMD_LED_CLOCK_TIME_TICK:I = 0xffff

.field private static final CMD_LED_FACTORY_MODE:I = 0xe0

.field private static final CMD_LED_INDICATOR:I = 0x10

.field private static final CMD_LED_MISSED_EVENT:I = 0x9

.field private static final CMD_LED_MUSIC:I = 0xd

.field private static final CMD_LED_NEW_MESSAGE:I = 0x5

.field private static final CMD_LED_OFF:I = 0x12

.field private static final CMD_LED_POWER_ON:I = 0x1

.field private static final CMD_LED_VOICE_RECORDER:I = 0xe

.field private static final CMD_LED_VOLUME:I = 0xa

.field private static final DEBUG:Z = true

.field private static final EVENT_RESULT_ACCEPT:B = 0x1t

.field private static final EVENT_RESULT_REJECT:B = 0x2t

.field private static final EVENT_TOUCH_POLL_INTERVAL:J = 0x64L

.field private static final EVENT_TYPE_ALARM:I = 0x1

.field private static final EVENT_TYPE_CALL:I = 0x0

.field private static final EVENT_TYPE_MAX:I = 0x3

.field private static final EVENT_TYPE_SCHEDULE:I = 0x3

.field private static final EVENT_TYPE_TIMER:I = 0x2

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field private static final MSG_CLEAR_ONGOING_EVENT:I = 0x5

.field private static final MSG_LED_OFF_BY_SELF:I = 0x1

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final RESPONSE_COMMAND_POS:I = 0x3

.field private static final RESPONSE_LEN_POS:I = 0x1

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverManager.NfcLedCoverController"

.field private static TEST:I

.field private static final mResponsePattern:[B


# instance fields
.field private mCallDurationTimer:Ljava/util/Timer;

.field private mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

.field private mCallInProgressDisplay:Z

.field private mCallStartTime:J

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedCoverAttached:Z

.field private mIsLedOn:Z

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPrevCommand:I

.field private mSendDataLock:Ljava/lang/Object;

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendDataLock:Ljava/lang/Object;

    .line 150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    .line 161
    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 162
    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 170
    iput-object p2, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    .line 174
    const-string/jumbo v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 175
    invoke-static {p2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 176
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    .line 177
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "send leddata"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 179
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "pollTouch ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 182
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "touchResponse ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 185
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "onoff ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 188
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 191
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/NfcLedCoverController;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/cover/NfcLedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/cover/NfcLedCoverController;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->getCallDuration()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/cover/NfcLedCoverController;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # [B

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/cover/NfcLedCoverController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/cover/NfcLedCoverController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cover/NfcLedCoverController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 7
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 846
    if-nez p2, :cond_0

    .line 847
    new-array p2, v5, [B

    .end local p2    # "data":[B
    aput-byte v6, p2, v6

    .line 849
    .restart local p2    # "data":[B
    :cond_0
    const/4 v2, 0x5

    .line 850
    .local v2, "nfcCommandLength":I
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->getLenByteValue([B)I

    move-result v1

    .line 851
    .local v1, "ledPacketLength":I
    add-int v3, v2, v1

    .line 852
    .local v3, "size":I
    add-int v4, v2, v1

    new-array v0, v4, [B

    .line 855
    .local v0, "genData":[B
    aput-byte v6, v0, v6

    .line 856
    const/16 v4, -0x5e

    aput-byte v4, v0, v5

    .line 857
    const/4 v4, 0x2

    aput-byte v6, v0, v4

    .line 858
    const/4 v4, 0x3

    aput-byte v6, v0, v4

    .line 860
    const/4 v4, 0x4

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 863
    const/4 v4, 0x5

    const/16 v5, 0x10

    aput-byte v5, v0, v4

    .line 864
    const/4 v4, 0x6

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    .line 865
    const/4 v4, 0x7

    int-to-byte v5, p1

    aput-byte v5, v0, v4

    .line 866
    const/16 v4, 0x8

    array-length v5, p2

    invoke-static {p2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 867
    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, v3, -0x2

    const/4 v6, -0x1

    aput-byte v6, v0, v5

    aput-byte v6, v0, v4

    .line 870
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byte data to send to cover: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-object v0
.end method

.method private clearOngoingEvent()V
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 745
    return-void
.end method

.method private getByteDataString([B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # [B

    .prologue
    .line 1170
    if-nez p1, :cond_0

    .line 1171
    const-string/jumbo v2, "null"

    .line 1177
    :goto_0
    return-object v2

    .line 1173
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1174
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1175
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1177
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCallDuration()[B
    .locals 14

    .prologue
    .line 1149
    const/4 v6, 0x4

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    .line 1150
    .local v0, "duration":[B
    iget-wide v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1163
    :goto_0
    return-object v0

    .line 1153
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 1155
    .local v4, "time":J
    const/4 v1, 0x0

    .line 1156
    .local v1, "locale":Ljava/util/Locale;
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    const-wide/16 v12, 0x64

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1157
    .local v2, "minutes":[B
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x3c

    rem-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 1158
    .local v3, "seconds":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-byte v7, v2, v7

    aput-byte v7, v0, v6

    .line 1159
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    aput-byte v7, v0, v6

    .line 1160
    const/4 v6, 0x2

    const/4 v7, 0x0

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    .line 1161
    const/4 v6, 0x3

    const/4 v7, 0x1

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    goto :goto_0

    .line 1149
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getLenByteValue([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 879
    const/4 v0, 0x5

    .line 880
    .local v0, "len":I
    if-eqz p1, :cond_0

    .line 881
    array-length v1, p1

    add-int/2addr v0, v1

    .line 887
    :goto_0
    return v0

    .line 884
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 2
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 1195
    sparse-switch p1, :sswitch_data_0

    .line 1219
    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    .line 1199
    :sswitch_1
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 1200
    aget-byte v1, p2, v0

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1208
    :sswitch_2
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 1209
    aget-byte v0, p2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1211
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1213
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_1

    .line 1215
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_1

    .line 1195
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0xe0 -> :sswitch_1
    .end sparse-switch

    .line 1200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1209
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleClearOngoingEvent(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1033
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v0, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, p1, :cond_1

    .line 1034
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearOngoingEvent()V

    .line 1036
    :cond_1
    return-void
.end method

.method private handleEventResponse(II)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    .line 1039
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleEventResponse: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 1042
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Event touch: accept"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1044
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1045
    .local v2, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_0

    .line 1046
    invoke-virtual {v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    goto :goto_0

    .line 1049
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1064
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1069
    :cond_2
    :goto_2
    return-void

    .line 1050
    :cond_3
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    .line 1051
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Event touch: reject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1053
    :try_start_3
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1054
    .restart local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_4

    .line 1055
    invoke-virtual {v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    goto :goto_3

    .line 1058
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1060
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2
.end method

.method private handleInvalidCommand(I[B[B)V
    .locals 9
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "returnValue"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 776
    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 780
    if-nez p3, :cond_3

    .line 781
    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 806
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, "doneIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 808
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Sent done intent, fail transceive"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    packed-switch p1, :pswitch_data_0

    .line 819
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v3

    .line 821
    .local v3, "stopCoverResult":Z
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 825
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Invalid command finished, Start wireless charger"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v8}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 829
    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 830
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 832
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 833
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v0    # "doneIntent":Landroid/content/Intent;
    :cond_2
    :goto_2
    return-void

    .line 782
    .end local v3    # "stopCoverResult":Z
    :cond_3
    array-length v4, p3

    if-ne v4, v8, :cond_0

    aget-byte v4, p3, v7

    const/16 v5, -0x4e

    if-ne v4, v5, :cond_0

    const/16 v4, 0x12

    if-eq p1, v4, :cond_0

    .line 786
    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_4

    .line 787
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Repete command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 790
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v3

    .line 792
    .restart local v3    # "stopCoverResult":Z
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 795
    .local v2, "msg":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 796
    iput p1, v2, Landroid/os/Message;->arg1:I

    .line 797
    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 798
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 799
    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    goto :goto_2

    .line 802
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "stopCoverResult":Z
    :cond_4
    iput v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 803
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Could not transceive command to cover so turn off led cover"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 813
    .restart local v0    # "doneIntent":Landroid/content/Intent;
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz v4, :cond_1

    .line 814
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    goto/16 :goto_1

    .line 835
    .restart local v3    # "stopCoverResult":Z
    :catch_0
    move-exception v1

    .line 836
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_2

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private handlePollEventTouch(I)V
    .locals 12
    .param p1, "event"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 895
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v4, :cond_1

    .line 897
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 901
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :cond_0
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 909
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_2

    .line 910
    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    .line 914
    :cond_2
    const/16 v4, 0x11

    new-array v5, v8, [B

    aput-byte v7, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .line 915
    .local v2, "pollData":[B
    const/4 v3, 0x0

    .line 917
    .local v3, "returnData":[B
    :try_start_1
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-nez v4, :cond_3

    .line 918
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    .line 925
    :cond_3
    :goto_1
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_4

    .line 926
    const/4 v4, 0x5

    new-array v3, v4, [B

    .line 927
    aput-byte v7, v3, v8

    aput-byte v7, v3, v7

    .line 928
    const/16 v4, -0x2f

    aput-byte v4, v3, v9

    .line 929
    const/16 v4, 0x11

    aput-byte v4, v3, v11

    .line 930
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v9, :cond_5

    .line 931
    aput-byte v8, v3, v10

    .line 941
    :cond_4
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/cover/NfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 943
    const-string v5, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v3, v10

    if-ne v4, v8, :cond_7

    const-string v4, "accept"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 947
    .local v1, "msg":Landroid/os/Message;
    iput v11, v1, Landroid/os/Message;->what:I

    .line 949
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 951
    aget-byte v4, v3, v10

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 952
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 953
    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 955
    :try_start_2
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 956
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 958
    :catch_1
    move-exception v0

    .line 959
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 920
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v0

    .line 921
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 932
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v8, :cond_6

    .line 933
    aput-byte v9, v3, v10

    goto :goto_2

    .line 935
    :cond_6
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    aput-byte v9, v3, v10

    goto :goto_2

    .line 943
    :cond_7
    const-string/jumbo v4, "reject"

    goto :goto_3

    .line 963
    :cond_8
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 965
    .restart local v1    # "msg":Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 966
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 967
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 568
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendDataLock:Ljava/lang/Object;

    monitor-enter v9

    .line 570
    :try_start_0
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleSendDataToLedCover : command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const v8, 0xfffe

    if-ne p1, v8, :cond_5

    .line 576
    iget-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz v8, :cond_0

    .line 577
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Call already in progress but we should update data with new values"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    .line 580
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    .line 581
    const/4 p1, 0x3

    .line 651
    :goto_0
    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .line 654
    const v8, 0xfffe

    if-eq p1, v8, :cond_1

    const/16 v8, 0xd

    if-eq p1, v8, :cond_1

    const/16 v8, 0xe

    if-eq p1, v8, :cond_1

    const/4 v8, 0x2

    if-ne p1, v8, :cond_2

    .line 657
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->setOngoingEvent(I[B)V

    .line 662
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 720
    :cond_3
    :goto_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    .line 721
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    :try_start_1
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 724
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :cond_4
    :goto_2
    :try_start_2
    monitor-exit v9

    .line 732
    :goto_3
    return-void

    .line 582
    :cond_5
    const/16 v8, 0x12

    if-ne p1, v8, :cond_6

    iget-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v8, :cond_6

    .line 583
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Led cover already off"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    monitor-exit v9

    goto :goto_3

    .line 731
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 586
    :cond_6
    :try_start_3
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Ensuring NFC LED Cover started"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v0, 0x0

    .line 590
    .local v0, "coverStarted":Z
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->tryStartLedCover()Z

    move-result v0

    .line 592
    if-nez v0, :cond_8

    .line 593
    iget v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v10, 0xd

    if-ge v8, v10, :cond_7

    .line 594
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 597
    .local v5, "msg":Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v5, Landroid/os/Message;->what:I

    .line 598
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 599
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 600
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 601
    iget v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 603
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    .line 618
    .end local v5    # "msg":Landroid/os/Message;
    :goto_4
    monitor-exit v9

    goto :goto_3

    .line 606
    :cond_7
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Could not start NFC LED Cover"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 608
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v1, "doneIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 610
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Sent done intent, fail start"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    .line 614
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "NfcLedCover not started, Start wireless charger"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    goto :goto_4

    .line 620
    .end local v1    # "doneIntent":Landroid/content/Intent;
    :cond_8
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 623
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 624
    .local v3, "genData":[B
    const/4 v6, 0x0

    .line 626
    .local v6, "returnValue":[B
    :try_start_4
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8, v3}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B

    move-result-object v6

    .line 627
    if-eqz v6, :cond_9

    .line 628
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Response data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 634
    :cond_9
    :goto_5
    :try_start_5
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->getLenByteValue([B)I

    move-result v8

    invoke-direct {p0, p1, v8, v6}, Lcom/android/server/cover/NfcLedCoverController;->isValidResponse(II[B)Z

    move-result v8

    if-nez v8, :cond_b

    .line 635
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error parsing response for command "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v6}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-direct {p0, p1, p2, v6}, Lcom/android/server/cover/NfcLedCoverController;->handleInvalidCommand(I[B[B)V

    .line 638
    sget v8, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-nez v8, :cond_a

    .line 639
    monitor-exit v9

    goto/16 :goto_3

    .line 630
    :catch_0
    move-exception v2

    .line 631
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Error in trancieve command"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 641
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .restart local v1    # "doneIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 646
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Sent done intent, sucess"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->scheduleLedOffTimerout(I[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 667
    .end local v0    # "coverStarted":Z
    .end local v1    # "doneIntent":Landroid/content/Intent;
    .end local v3    # "genData":[B
    .end local v6    # "returnValue":[B
    :sswitch_0
    :try_start_6
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_c

    .line 668
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 674
    :cond_c
    :goto_6
    :try_start_7
    sget v8, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v8, :cond_d

    .line 675
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    .line 679
    :cond_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 680
    .restart local v5    # "msg":Landroid/os/Message;
    const/4 v8, 0x2

    iput v8, v5, Landroid/os/Message;->what:I

    .line 681
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v4

    .line 682
    .local v4, "listenerType":I
    if-gez v4, :cond_e

    .line 683
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Wrong listener type requested for command:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    monitor-exit v9

    goto/16 :goto_3

    .line 670
    .end local v4    # "listenerType":I
    .end local v5    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v2

    .line 671
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6

    .line 686
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .restart local v4    # "listenerType":I
    .restart local v5    # "msg":Landroid/os/Message;
    :cond_e
    iput v4, v5, Landroid/os/Message;->arg1:I

    .line 689
    iget-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v8, :cond_f

    .line 690
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "Already polling for touch events"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 695
    :goto_7
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 693
    :cond_f
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    goto :goto_7

    .line 700
    .end local v4    # "listenerType":I
    .end local v5    # "msg":Landroid/os/Message;
    :sswitch_1
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v8}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v7

    .line 702
    .local v7, "stopCoverResult":Z
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Stop result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .line 707
    const-string v8, "CoverManager.NfcLedCoverController"

    const-string v10, "LED_OFF Start wireless charger"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 715
    .end local v7    # "stopCoverResult":Z
    :sswitch_2
    iget-boolean v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz v8, :cond_3

    .line 716
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    goto/16 :goto_1

    .line 726
    :catch_2
    move-exception v2

    .line 727
    .restart local v2    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 662
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x6 -> :sswitch_0
        0xa -> :sswitch_2
        0x12 -> :sswitch_1
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isFinishedTouchReply([B)Z
    .locals 5
    .param p1, "returnData"    # [B

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 1023
    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v4

    if-eq v1, v0, :cond_0

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleMissedEvent([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 399
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p1, v1

    if-nez v2, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isValidCoverStartData([B)Z
    .locals 2
    .param p1, "coverStartData"    # [B

    .prologue
    const/4 v0, 0x1

    .line 757
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidResponse(II[B)Z
    .locals 10
    .param p1, "command"    # I
    .param p2, "len"    # I
    .param p3, "response"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 983
    if-nez p3, :cond_1

    .line 1011
    :cond_0
    :goto_0
    return v5

    .line 986
    :cond_1
    array-length v7, p3

    sget-object v8, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v8, v8

    if-lt v7, v8, :cond_0

    .line 990
    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    const/4 v8, 0x3

    int-to-byte v9, p1

    aput-byte v9, v7, v8

    .line 991
    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    int-to-byte v8, p2

    aput-byte v8, v7, v6

    .line 993
    const-string v7, "CoverManager.NfcLedCoverController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected response data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    invoke-direct {p0, v9}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v4, 0x0

    .line 996
    .local v4, "patternCount":I
    move-object v0, p3

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 997
    .local v1, "b":B
    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    aget-byte v7, v7, v4

    if-ne v1, v7, :cond_2

    .line 998
    add-int/lit8 v4, v4, 0x1

    .line 999
    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v7, v7

    if-ne v4, v7, :cond_3

    move v5, v6

    .line 1000
    goto :goto_0

    .line 1002
    :cond_2
    if-nez v4, :cond_0

    .line 996
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private scheduleLedOffTimerout(I[B)V
    .locals 10
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const-wide/16 v8, 0xe74

    const/16 v6, 0xf

    const/4 v5, 0x1

    .line 324
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleLedOffTimerout, command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    sparse-switch p1, :sswitch_data_0

    .line 340
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_3

    if-eq p1, v6, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 342
    if-ne p1, v6, :cond_2

    .line 343
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Time update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 331
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    goto :goto_0

    .line 345
    :cond_2
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Call InProgress duration time update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_4

    .line 353
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 359
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 362
    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 363
    .local v1, "msgLedOff":Landroid/os/Message;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 364
    iput v5, v1, Landroid/os/Message;->what:I

    .line 365
    packed-switch p1, :pswitch_data_0

    .line 386
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 355
    .end local v1    # "msgLedOff":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 367
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "msgLedOff":Landroid/os/Message;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x11f8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 372
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->isSingleMissedEvent([B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 373
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 375
    :cond_6
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x13ec

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 380
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x2328

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 383
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x12 -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch

    .line 365
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setOngoingEvent(I[B)V
    .locals 1
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    .line 741
    :goto_0
    return-void

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput p1, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    .line 739
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput-object p2, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    goto :goto_0
.end method

.method private startCallInProgressDisplayTimer([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1080
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1082
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1083
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1084
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1092
    const-string v0, "CoverManager.NfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iput-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1094
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1095
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v0, p0, v8}, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/cover/NfcLedCoverController;Lcom/android/server/cover/NfcLedCoverController$1;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1097
    :try_start_1
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1104
    :goto_0
    return-void

    .line 1085
    :catch_0
    move-exception v7

    .line 1086
    .local v7, "e":Ljava/nio/BufferUnderflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1088
    .end local v7    # "e":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v7

    .line 1089
    .local v7, "e":Ljava/nio/BufferOverflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1098
    .end local v7    # "e":Ljava/nio/BufferOverflowException;
    :catch_2
    move-exception v7

    .line 1099
    .local v7, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Error while scheduling TimerTask"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1101
    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1102
    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_0
.end method

.method private stopCallInProgressDisplayTimer()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    .line 1114
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1116
    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    .line 1117
    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    .line 1121
    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    .line 1122
    return-void

    .line 1119
    :cond_0
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Call duration should not be null in stop"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private tryStartLedCover()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 533
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v3, :cond_2

    .line 538
    iget v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    if-nez v3, :cond_0

    .line 540
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Disable Wireless Charger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v1}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    .line 544
    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->StartLedCover()[B

    move-result-object v0

    .line 546
    .local v0, "coverStartData":[B
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 549
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Started NFC LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iput v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    .line 551
    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .end local v0    # "coverStartData":[B
    :goto_0
    move v1, v2

    .line 560
    :goto_1
    return v1

    .line 553
    .restart local v0    # "coverStartData":[B
    :cond_1
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Failed to start NFC LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 557
    .end local v0    # "coverStartData":[B
    :cond_2
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v3, "NFC LED Cover already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1281
    const-string v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    const-string v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1284
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    const-string v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1289
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 1291
    .local v1, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    .line 1292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1297
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1296
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    return-void
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    if-ltz p1, :cond_1

    const/4 v1, 0x3

    if-le p1, v1, :cond_2

    .line 423
    :cond_1
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported touch listener type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_1
    return-void

    .line 418
    :catch_0
    move-exception v7

    .line 419
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 428
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v9, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 429
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 430
    .local v0, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_3

    .line 431
    iget-object v1, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string/jumbo v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    monitor-exit v9

    goto :goto_1

    .line 443
    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v8    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 438
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v0, 0x0

    .line 439
    .restart local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_2
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 441
    .restart local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 442
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 7
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 256
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_1

    .line 258
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string/jumbo v3, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDataToNfcLedCover: command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const v2, 0xffff

    if-ne p1, v2, :cond_2

    .line 269
    iget v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_3

    .line 270
    const/16 p1, 0xf

    .line 280
    :cond_2
    const/16 v2, 0xc

    if-ne p1, v2, :cond_4

    iget v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 281
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Ignore battery chargin, battery low already shown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_3
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Time tick: clock not displayed, ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_5

    .line 287
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 294
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 295
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    const v2, 0xfff0

    if-ne p1, v2, :cond_6

    .line 298
    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    .line 299
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 300
    aget-byte v2, p2, v6

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 301
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 302
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 289
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_6
    const/16 v2, 0x13

    if-ne p1, v2, :cond_7

    .line 305
    iput v5, v1, Landroid/os/Message;->what:I

    .line 306
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 307
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 310
    :cond_7
    iput v6, v1, Landroid/os/Message;->what:I

    .line 312
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    .line 313
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 14

    .prologue
    .line 469
    const/4 v10, 0x1

    new-array v5, v10, [B

    .line 470
    .local v5, "data":[B
    const/4 v10, 0x0

    const/4 v11, 0x0

    aput-byte v11, v5, v10

    .line 472
    iget-boolean v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v10, :cond_0

    .line 475
    const-string v10, "CoverManager.NfcLedCoverController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mIsLedOn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". should be off"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/16 v10, 0x12

    invoke-virtual {p0, v10, v5}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    .line 524
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v10, "CoverManager.NfcLedCoverController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mIsLedOn : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". should be on"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v10, "CoverManager.NfcLedCoverController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mOngoingEvent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v10, :cond_1

    .line 488
    iget-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v10, v10, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    iget-object v11, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget-object v11, v11, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v10, v11}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_0

    .line 490
    :cond_1
    const/4 v4, 0x0

    .line 491
    .local v4, "curTimeStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 493
    .local v7, "locale":Ljava/util/Locale;
    iget-object v10, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 494
    .local v0, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 495
    .local v2, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 496
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 498
    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 499
    .local v6, "hours":I
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 501
    .local v8, "minutes":I
    if-eqz v0, :cond_2

    .line 504
    const-string v10, "%02d%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 517
    :goto_1
    const-string v10, "CoverManager.NfcLedCoverController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sendPowerKeyToCover : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 521
    .local v9, "timeData":[B
    const/16 v10, 0xf

    invoke-virtual {p0, v10, v9}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto/16 :goto_0

    .line 507
    .end local v9    # "timeData":[B
    :cond_2
    rem-int/lit8 v6, v6, 0xc

    .line 508
    if-nez v6, :cond_3

    .line 509
    const/16 v6, 0xc

    .line 513
    :cond_3
    const-string v10, "%2d%02d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 448
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 453
    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .line 454
    .local v1, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    .line 455
    iget-object v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 458
    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 459
    const/4 v2, 0x1

    monitor-exit v3

    .line 465
    .end local v1    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :goto_0
    return v2

    .line 463
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 463
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "attached"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x0

    .line 245
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 246
    .local v0, "isCoverAttached":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, v0, :cond_0

    .line 247
    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "nfc_led_cover_test"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    .line 253
    return-void

    .end local v0    # "isCoverAttached":Z
    :cond_1
    move v0, v1

    .line 245
    goto :goto_0
.end method
