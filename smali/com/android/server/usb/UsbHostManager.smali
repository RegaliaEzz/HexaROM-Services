.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# static fields
.field private static final CABLE_UPDATE_STATE:I = 0x0

.field private static final DEBUG:Z = true

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_DELAY:I = 0xbb8

.field private static final USBDEVICE_UPDATE_STATE:I = 0x1

.field private static final USB_HOST_DEVICE_UEVENT:Ljava/lang/String; = "DEVTYPE=usb_interface"

.field private static final USB_HOST_PATH:Ljava/lang/String; = "/devices/virtual/host_notify"

.field private static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static final mStringConverter:Lcom/android/server/usb/UsbStringTable;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBootCompleted:Z

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/usb/UsbNotificationHandler;

.field private final mHostBlacklist:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

.field private mNewConfigurations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/usb/UsbConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mNewDevice:Landroid/hardware/usb/UsbDevice;

.field private mNewEndpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mNewInterface:Landroid/hardware/usb/UsbInterface;

.field private mNewInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/usb/UsbInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mUEventHostDeviceObserver:Landroid/os/UEventObserver;

.field private final mUEventHostObserver:Landroid/os/UEventObserver;

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mUsbKeyboardDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbMouseDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Lcom/android/server/usb/UsbStringTable;

    invoke-direct {v0}, Lcom/android/server/usb/UsbStringTable;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    .line 89
    sput-object v1, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    .line 90
    sput-object v1, Lcom/android/server/usb/UsbHostManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbNotificationHandler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p3, "notificationHandler"    # Lcom/android/server/usb/UsbNotificationHandler;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    .line 414
    new-instance v0, Lcom/android/server/usb/UsbHostManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$2;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 474
    new-instance v0, Lcom/android/server/usb/UsbHostManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$3;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostObserver:Landroid/os/UEventObserver;

    .line 568
    new-instance v0, Lcom/android/server/usb/UsbHostManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$4;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    .line 726
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    .line 727
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    .line 107
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 112
    iput-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    .line 114
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/host_notify"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUEventHostDeviceObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVTYPE=usb_interface"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->dealWithDevicesOnBootComplete()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getPowerManager()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbNotificationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbHostManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbHostManager;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private addUsbConfiguration(ILjava/lang/String;II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # I
    .param p4, "maxPower"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string v1, "configure :: id : %d, name : %s, attribute : %d, maxpower : %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 234
    :cond_0
    new-instance v0, Landroid/hardware/usb/UsbConfiguration;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    .line 235
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method private addUsbEndpoint(IIII)V
    .locals 5
    .param p1, "address"    # I
    .param p2, "attributes"    # I
    .param p3, "maxPacketSize"    # I
    .param p4, "interval"    # I

    .prologue
    .line 261
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string/jumbo v1, "endpoint :: addr : %d, attributes : %d, max packet size : %d, interval : %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    return-void
.end method

.method private addUsbInterface(ILjava/lang/String;IIII)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "altSetting"    # I
    .param p4, "Class"    # I
    .param p5, "subClass"    # I
    .param p6, "protocol"    # I

    .prologue
    .line 243
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string/jumbo v1, "interface :: id : %d, name : %s, alt %d [%04xh:%04xh:%04xh] %s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    invoke-virtual {v4, p4, p5, p6}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 253
    :cond_0
    new-instance v0, Landroid/hardware/usb/UsbInterface;

    move v1, p1

    move v2, p3

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbInterface;-><init>(IILjava/lang/String;III)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    .line 254
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method private attachedUsbHostDock(Ljava/lang/String;III)V
    .locals 15
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "clazz"    # I
    .param p3, "subClass"    # I
    .param p4, "protocol"    # I

    .prologue
    .line 766
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_2

    .line 767
    new-instance v11, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 768
    .local v11, "keyboardfunctions":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    monitor-enter v14

    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v2, "add"

    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V

    .line 773
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 774
    .local v10, "keyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 777
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 778
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 780
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 783
    .local v9, "kbdIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 784
    const-string v1, "android.intent.extra.device_name"

    move-object/from16 v0, p1

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v1, "android.intent.extra.device_state"

    const/4 v2, 0x1

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    const-string v1, "android.intent.extra.device_counter"

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 787
    const-string v1, "android.intent.extra.device_functions"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v1, v9, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 790
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send keyboard intent (attached) : DEVICE_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_COUNTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v9    # "kbdIntent":Landroid/content/Intent;
    .end local v10    # "keyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v11    # "keyboardfunctions":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x3

    move/from16 v0, p2

    if-ne v0, v1, :cond_5

    const/4 v1, 0x2

    move/from16 v0, p4

    if-ne v0, v1, :cond_5

    .line 798
    new-instance v13, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v13, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 799
    .local v13, "mousefunctions":Ljava/lang/String;
    iget-object v14, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    monitor-enter v14

    .line 800
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const-string v2, "add"

    const/4 v6, 0x1

    move-object v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V

    .line 804
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 805
    .local v12, "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 806
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 808
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 809
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    goto :goto_1

    .line 780
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v12    # "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v13    # "mousefunctions":Ljava/lang/String;
    .restart local v11    # "keyboardfunctions":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 811
    .end local v11    # "keyboardfunctions":Ljava/lang/String;
    .restart local v12    # "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .restart local v13    # "mousefunctions":Ljava/lang/String;
    :cond_4
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 813
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .local v7, "MouseIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 815
    const-string v1, "android.intent.extra.device_name"

    move-object/from16 v0, p1

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v1, "android.intent.extra.device_state"

    const/4 v2, 0x1

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    const-string v1, "android.intent.extra.device_counter"

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    const-string v1, "android.intent.extra.device_functions"

    invoke-virtual {v7, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 821
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v1, v7, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 822
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send mouse intent (attached) : DEVICE_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_COUNTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    .end local v7    # "MouseIntent":Landroid/content/Intent;
    .end local v12    # "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v13    # "mousefunctions":Ljava/lang/String;
    :cond_5
    return-void

    .line 811
    .restart local v13    # "mousefunctions":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private beginUsbDeviceAdded(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 15
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "vendorID"    # I
    .param p3, "productID"    # I
    .param p4, "deviceClass"    # I
    .param p5, "deviceSubclass"    # I
    .param p6, "deviceProtocol"    # I
    .param p7, "manufacturerName"    # Ljava/lang/String;
    .param p8, "productName"    # Ljava/lang/String;
    .param p9, "version"    # I
    .param p10, "serialNumber"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "usb:UsbHostManager.beginUsbDeviceAdded("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "usb: nm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vnd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cls:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sub:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " proto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    const-string v4, "+ device :: %s [%04xh:%04xh] [%02xh,%02xh,%02xh] %s (%s/%s/%s/%s)"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    sget-object v7, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    aput-object p7, v5, v6

    const/16 v6, 0x8

    aput-object p8, v5, v6

    const/16 v6, 0x9

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xa

    aput-object p10, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(III)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    :cond_0
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginUsbDeviceAdded("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is blacklisted."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v3, 0x0

    .line 219
    :goto_0
    return v3

    .line 196
    :cond_1
    iget-object v14, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 197
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 198
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device already on mDevices list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v3, 0x0

    monitor-exit v14

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v3

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 202
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v3, :cond_3

    .line 203
    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "mNewDevice is not null in endUsbDeviceAdded"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v3, 0x0

    monitor-exit v14

    goto :goto_0

    .line 208
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v4, p9, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, "versionString":Ljava/lang/String;
    new-instance v3, Landroid/hardware/usb/UsbDevice;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v13, p10

    invoke-direct/range {v3 .. v13}, Landroid/hardware/usb/UsbDevice;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    .line 217
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private dealWithDevicesOnBootComplete()V
    .locals 11

    .prologue
    .line 425
    iget-object v10, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 426
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    .line 427
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 428
    .local v9, "name":Ljava/lang/String;
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dealWithDevicesOnBootComplete :: deviceName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 430
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v6}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    .line 432
    .local v8, "iface":Landroid/hardware/usb/UsbInterface;
    const-string v1, "add"

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v2

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V

    .line 430
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 435
    .end local v6    # "i":I
    .end local v8    # "iface":Landroid/hardware/usb/UsbInterface;
    .end local v9    # "name":Ljava/lang/String;
    :cond_1
    monitor-exit v10

    .line 436
    return-void

    .line 435
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private detachedUsbHostDock(Ljava/lang/String;)V
    .locals 17
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 832
    new-instance v11, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 833
    .local v11, "keyboardfunctions":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 834
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 835
    .local v14, "nkeyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 836
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 837
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    const-string/jumbo v2, "remove"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V

    goto :goto_0

    .line 850
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14    # "nkeyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 842
    .restart local v14    # "nkeyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 844
    .local v10, "keyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 845
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 847
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 848
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 850
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.intent.action.USBHID_KEYBOARD_EVENT"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .local v9, "kbdIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 854
    const-string v1, "android.intent.extra.device_name"

    move-object/from16 v0, p1

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 855
    const-string v1, "android.intent.extra.device_state"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 856
    const-string v1, "android.intent.extra.device_counter"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 857
    const-string v1, "android.intent.extra.device_functions"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v1, v9, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 860
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send keyboard intent (dettached) : DEVICE_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_COUNTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .end local v9    # "kbdIntent":Landroid/content/Intent;
    .end local v10    # "keyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v11    # "keyboardfunctions":Ljava/lang/String;
    .end local v14    # "nkeyboard":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 870
    new-instance v13, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v13, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 871
    .local v13, "mousefunctions":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 873
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 874
    .local v15, "nmouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_5
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 875
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 876
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 877
    const-string/jumbo v2, "remove"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V

    goto :goto_2

    .line 888
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v15    # "nmouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :catchall_1
    move-exception v1

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 880
    .restart local v15    # "nmouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 882
    .local v12, "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_7
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 883
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 885
    .restart local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 886
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    .line 888
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_8
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 890
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v7, "MouseIntent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 892
    const-string v1, "android.intent.extra.device_name"

    move-object/from16 v0, p1

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string v1, "android.intent.extra.device_state"

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    const-string v1, "android.intent.extra.device_counter"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 895
    const-string v1, "android.intent.extra.device_functions"

    invoke-virtual {v7, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_USB"

    invoke-virtual {v1, v7, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 898
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send mouse intent (dettached) : DEVICE_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_COUNTER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DEVICE_FUNCTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    .end local v7    # "MouseIntent":Landroid/content/Intent;
    .end local v12    # "mouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    .end local v13    # "mousefunctions":Ljava/lang/String;
    .end local v15    # "nmouse":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :cond_9
    return-void
.end method

.method private endUsbDeviceAdded()V
    .locals 4

    .prologue
    .line 269
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "usb:UsbHostManager.endUsbDeviceAdded()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    if-eqz v0, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_3

    .line 283
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/hardware/usb/UsbConfiguration;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->setConfigurations([Landroid/os/Parcelable;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbHostManager;->findUsbHostDevice(Landroid/hardware/usb/UsbDevice;)V

    .line 289
    iget-boolean v0, p0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAdded(Landroid/hardware/usb/UsbDevice;)V

    .line 294
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewDevice:Landroid/hardware/usb/UsbDevice;

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfigurations:Ljava/util/ArrayList;

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterfaces:Ljava/util/ArrayList;

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewEndpoints:Ljava/util/ArrayList;

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewConfiguration:Landroid/hardware/usb/UsbConfiguration;

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mNewInterface:Landroid/hardware/usb/UsbInterface;

    .line 301
    monitor-exit v1

    .line 302
    return-void

    .line 292
    :cond_3
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mNewDevice is null in endUsbDeviceAdded"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findUsbHostDevice(Landroid/hardware/usb/UsbDevice;)V
    .locals 10
    .param p1, "usbdevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 744
    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 747
    const/4 v4, 0x0

    .local v4, "ival":I
    const/4 v1, 0x0

    .line 748
    .local v1, "eval":I
    const/4 v2, 0x0

    .local v2, "intf":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 749
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v3

    .line 751
    .local v3, "intface":Landroid/hardware/usb/UsbInterface;
    if-eqz v3, :cond_0

    .line 752
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v7

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v8

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v9

    invoke-direct {p0, v5, v7, v8, v9}, Lcom/android/server/usb/UsbHostManager;->attachedUsbHostDock(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    .end local v3    # "intface":Landroid/hardware/usb/UsbInterface;
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "findUsbHIDDevice : error parsing USB descriptors"

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    monitor-exit v6

    .line 763
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 762
    :cond_1
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPowerManager()V
    .locals 3

    .prologue
    .line 456
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    .line 458
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UsbHost"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 459
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 461
    :cond_0
    return-void
.end method

.method private isBlackListed(II)Z
    .locals 7
    .param p1, "vendorID"    # I
    .param p2, "productID"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 439
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v5

    .line 440
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 442
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "tok":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v5, p1, :cond_1

    :cond_0
    const/4 v5, 0x1

    aget-object v5, v2, v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, p2, :cond_2

    .line 451
    .end local v2    # "tok":[Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 448
    :catch_0
    move-exception v5

    .line 440
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    .line 451
    goto :goto_1
.end method

.method private isBlackListed(III)Z
    .locals 2
    .param p1, "clazz"    # I
    .param p2, "subClass"    # I
    .param p3, "protocol"    # I

    .prologue
    const/4 v0, 0x1

    .line 146
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    if-eq p2, v0, :cond_0

    .line 154
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v2

    .line 135
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const/4 v2, 0x1

    .line 140
    :goto_1
    return v2

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private turnOnLcd()V
    .locals 4

    .prologue
    .line 464
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "turnOnLcd :: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getPowerManager()V

    .line 466
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 467
    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/usb/UsbHostManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 468
    :cond_1
    return-void
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 307
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "usbDeviceRemoved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 310
    :try_start_0
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usbDeviceRemoved :: deviceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->detachedUsbHostDock(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 313
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-eqz v0, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 315
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->deviceDetached(Landroid/hardware/usb/UsbDevice;)V

    .line 317
    :cond_0
    monitor-exit v2

    .line 318
    return-void

    .line 317
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public countKeyBoardConnectedviaUsbHost()I
    .locals 2

    .prologue
    .line 730
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    monitor-enter v1

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbKeyboardDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countMouseConnectedviaUsbHost()I
    .locals 2

    .prologue
    .line 737
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    monitor-enter v1

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbMouseDevice:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method displayNotification(Ljava/lang/String;IIIZ)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "deviceClass"    # I
    .param p3, "deviceSubclass"    # I
    .param p4, "deviceProtocol"    # I
    .param p5, "display"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const v3, 0x10807a8

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 612
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const-string/jumbo v1, "displayNotification : [%02xh,%02xh,%02xh]"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v0, "add"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 615
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 616
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    .line 617
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x1040bde

    const-string v6, "UsbDevices"

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    if-ne p5, v5, :cond_2

    if-ne p2, v7, :cond_2

    if-ne p3, v5, :cond_2

    if-ne p4, v5, :cond_2

    .line 630
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    .line 631
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x1040bdf

    const-string v6, "UsbDevices"

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_2
    if-ne p5, v5, :cond_3

    if-ne p2, v7, :cond_3

    if-ne p3, v5, :cond_3

    if-ne p4, v8, :cond_3

    .line 643
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    .line 644
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x1040be0

    const-string v6, "UsbDevices"

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_3
    const/16 v0, 0x8

    if-ne p2, v0, :cond_4

    .line 653
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    .line 656
    :cond_4
    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    .line 669
    :cond_5
    const-string/jumbo v0, "remove"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const/4 v0, 0x6

    if-ne p2, v0, :cond_6

    .line 672
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    .line 673
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x1040be1

    const-string v6, "UsbDevices"

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_6
    if-ne p5, v5, :cond_7

    if-ne p2, v7, :cond_7

    if-ne p3, v5, :cond_7

    if-ne p4, v5, :cond_7

    .line 685
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    .line 686
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x1040be2

    const-string v6, "UsbDevices"

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto :goto_0

    .line 694
    :cond_7
    if-ne p5, v5, :cond_8

    if-ne p2, v7, :cond_8

    if-ne p3, v5, :cond_8

    if-ne p4, v8, :cond_8

    .line 698
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    .line 699
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandler:Lcom/android/server/usb/UsbNotificationHandler;

    const v1, 0x1040be3

    const-string v6, "UsbDevices"

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLjava/lang/String;)V

    goto/16 :goto_0

    .line 707
    :cond_8
    const/16 v0, 0x8

    if-ne p2, v0, :cond_9

    .line 708
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->turnOnLcd()V

    .line 711
    :cond_9
    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    goto/16 :goto_0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 17
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 363
    :try_start_0
    const-string v12, "  USB Host State:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 365
    .local v6, "name":Ljava/lang/String;
    sget-object v14, Lcom/android/server/usb/UsbHostManager;->mStringConverter:Lcom/android/server/usb/UsbStringTable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v12}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v12

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v12}, Lcom/android/server/usb/UsbStringTable;->findString(III)Ljava/lang/String;

    move-result-object v10

    .line 369
    .local v10, "szdevice":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ": "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 395
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "name":Ljava/lang/String;
    .end local v10    # "szdevice":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 374
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    new-instance v7, Ljava/io/File;

    const-string v12, "/dev/bus/usb/"

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v7, "root":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  files : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 378
    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 379
    .local v5, "list":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v12, v5

    if-ge v2, v12, :cond_2

    .line 380
    new-instance v9, Ljava/io/File;

    aget-object v12, v5, v2

    invoke-direct {v9, v7, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .local v9, "sub":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 382
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 383
    .local v8, "slist":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    array-length v12, v8

    if-ge v4, v12, :cond_1

    .line 384
    new-instance v11, Ljava/io/File;

    aget-object v12, v8, v4

    invoke-direct {v11, v9, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    .local v11, "tmp":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "      "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 379
    .end local v4    # "j":I
    .end local v8    # "slist":[Ljava/lang/String;
    .end local v11    # "tmp":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 391
    .end local v2    # "i":I
    .end local v5    # "list":[Ljava/lang/String;
    .end local v7    # "root":Ljava/io/File;
    .end local v9    # "sub":Ljava/io/File;
    :catch_0
    move-exception v12

    .line 395
    :cond_2
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 397
    const-string v12, "  USB Host black list:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    monitor-enter v13

    .line 399
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v1, v12

    .line 400
    .local v1, "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 401
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v14, v14, v2

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 403
    :cond_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 406
    return-void

    .line 403
    .end local v1    # "count":I
    .end local v2    # "i":I
    :catchall_1
    move-exception v12

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v12
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "devices"    # Landroid/os/Bundle;

    .prologue
    .line 336
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 338
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 340
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    return-void
.end method

.method public openDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 346
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    new-instance v1, Ljava/lang/SecurityException;

    const-string v3, "USB device is on a restricted bus"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 349
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 350
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    if-nez v0, :cond_1

    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentSettings()Lcom/android/server/usb/UsbSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1
.end method

.method public setCurrentSettings(Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 2
    .param p1, "settings"    # Lcom/android/server/usb/UsbSettingsManager;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbSettingsManager;

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 321
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    :try_start_0
    new-instance v0, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 330
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v1, v3, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 331
    monitor-exit v2

    .line 332
    return-void

    .line 331
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
