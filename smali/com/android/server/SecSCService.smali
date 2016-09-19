.class public Lcom/android/server/SecSCService;
.super Landroid/app/Service;
.source "SecSCService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecSCService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final SEC_SC_BOOT_COMPLETE:I = 0x1

.field public static final SEC_SC_GOT_DATA_CONNECTION:I = 0x2

.field public static final SEC_SC_GOT_NITZ:I = 0x3

.field private static final SEC_SC_LIMIT_TIME:I = 0x1388

.field private static final SEC_SC_NTP_SERVER:Ljava/lang/String; = "pool.ntp.org"

.field private static final TAG:Ljava/lang/String; = "SecSCService"

.field private static mIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SecSCService;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 243
    new-instance v0, Lcom/android/server/SecSCService$3;

    invoke-direct {v0, p0}, Lcom/android/server/SecSCService$3;-><init>(Lcom/android/server/SecSCService;)V

    iput-object v0, p0, Lcom/android/server/SecSCService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static native SecSC_bootComplete()V
.end method

.method private static native SecSC_createTempFile()V
.end method

.method private static native SecSC_deleteFile()V
.end method

.method private static native SecSC_deleteTempFile()V
.end method

.method private SecSC_handleConnectivityStateChanged()V
    .locals 3

    .prologue
    .line 200
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 201
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 203
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/SecSCService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SecSCService$1;-><init>(Lcom/android/server/SecSCService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method private static native SecSC_nitzReceived(JJ)V
.end method

.method private static native SecSC_ntpReceived(JJ)V
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_bootComplete()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_createTempFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/SecSCService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SecSCService;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/server/SecSCService;->SecSC_handleConnectivityStateChanged()V

    return-void
.end method

.method static synthetic access$300(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/SecSCService;->SecSC_nitzReceived(JJ)V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_deleteFile()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/SecSCService;)Lcom/android/server/SecSCService$ServiceHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecSCService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    return-object v0
.end method


# virtual methods
.method public SecSC_handleNitzTimeUpdation()V
    .locals 4

    .prologue
    .line 228
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 229
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/SecSCService$2;

    invoke-direct {v1, p0}, Lcom/android/server/SecSCService$2;-><init>(Lcom/android/server/SecSCService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    return-void
.end method

.method public SecSC_onNetworkStateChanged(JJ)V
    .locals 5
    .param p1, "networktime"    # J
    .param p3, "recvelapsedtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 223
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    .line 224
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/SecSCService;->SecSC_ntpReceived(JJ)V

    .line 226
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 136
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SecSCService;->mServiceLooper:Landroid/os/Looper;

    .line 139
    new-instance v1, Lcom/android/server/SecSCService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/SecSCService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/SecSCService$ServiceHandler;-><init>(Lcom/android/server/SecSCService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    .line 140
    const-string v1, "SecSC"

    const-string v2, "SecSCService oncreate call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sput-object v1, Lcom/android/server/SecSCService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 144
    sget-object v1, Lcom/android/server/SecSCService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "SecSCService"

    const-string v2, "SecSCService...register receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/android/server/SecSCService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/SecSCService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SecSCService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_deleteFile()V

    .line 149
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 184
    const-string v1, "SecSCService"

    const-string v2, "SecSCService...unregister receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SecSCService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/server/SecSCService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 192
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecSCService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterReceiver Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 196
    const-string v0, "SecSCService"

    const-string v1, "SecSCService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 198
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x1

    .line 155
    const-string v2, "SecSC"

    const-string v3, "SecSCService onStartCommand call"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_deleteFile()V

    .line 159
    iget-object v2, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/server/SecSCService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 160
    .local v1, "msg":Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "action":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_0
    if-eqz v0, :cond_2

    .line 166
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    iput v4, v1, Landroid/os/Message;->what:I

    .line 171
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/SecSCService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 175
    :cond_2
    return v4

    .line 168
    :cond_3
    const-string v2, "com.samsung.intent.action.NITZ_SET_TIME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0
.end method
