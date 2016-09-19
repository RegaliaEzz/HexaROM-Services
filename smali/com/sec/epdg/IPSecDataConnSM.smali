.class public Lcom/sec/epdg/IPSecDataConnSM;
.super Lcom/android/internal/util/StateMachine;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IPSecDataConnSM$1;,
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;,
        Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;,
        Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;,
        Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;,
        Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    }
.end annotation


# static fields
.field private static final CHECK_HO_W2L_DELAY:I = 0x1388

.field private static final DPD_DELAYED_MASSAGE_TIMEOUT:I = 0x1

.field private static final MAX_DNS_AND_L2W_TIMEOUT:I = 0xea60

.field private static final MAX_L2W_TIMEOUT:I = 0x4e20

.field private static final MAX_W2L_TIMEOUT:I = 0x27100

.field private static final TAG:Ljava/lang/String; = "[IPSECDATACONNSM]"

.field private static mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

.field private static mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

.field private static mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;


# instance fields
.field private final mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSsid:Ljava/lang/String;

.field private final mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

.field private final mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

.field private mExpiredTimeTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

.field private final mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

.field private final mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

.field private final mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

.field private final mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

.field private mIsHandOver:Z

.field private mIsNeededL2WHO:Z

.field private mIsW2LRequested:Z

.field private mIsWifiConnected:Z

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

.field private mRetryCount:I

.field private mRilCid:I

.field private final mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

.field private final mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

.field private final mePdgHandler:Landroid/os/Handler;

.field private final smHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/sec/epdg/IWlanState;

    invoke-direct {v0}, Lcom/sec/epdg/IWlanState;-><init>()V

    sput-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "apnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p4, "hdlr"    # Landroid/os/Handler;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 215
    invoke-direct {p0, p1, p5}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 62
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$InactiveState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    .line 63
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    .line 65
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    .line 67
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    .line 68
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    .line 70
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    .line 72
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    .line 73
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    .line 75
    new-instance v1, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-direct {v1, p0, v2}, Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    .line 85
    iput-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsHandOver:Z

    .line 86
    iput-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z

    .line 87
    iput-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z

    .line 88
    iput-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    .line 216
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->smHandler:Landroid/os/Handler;

    .line 217
    iput-object p2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    .line 218
    iput-object p4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    .line 220
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/IPSecAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/IPSecAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    .line 221
    iput-object p3, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    .line 222
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    .line 224
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->getCurrentSSID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mCurrentSsid:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 227
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 228
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 229
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 230
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 231
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 232
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 233
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 234
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->addState(Lcom/android/internal/util/State;)V

    .line 236
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 237
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 238
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 239
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    .line 240
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/handover/EpdgImsListener;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v1

    sput-object v1, Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    .line 241
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/sec/epdg/smartwifi/SmartWifiAdapter;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    move-result-object v1

    sput-object v1, Lcom/sec/epdg/IPSecDataConnSM;->mSmartWifiAdapter:Lcom/sec/epdg/smartwifi/SmartWifiAdapter;

    .line 242
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->configureApnContext(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->checkDnsRetryRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/epdg/IPSecDataConnSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->handleConnectRequest()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/epdg/IPSecDataConnSM;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->updatePermanentFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$InactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInactiveState:Lcom/sec/epdg/IPSecDataConnSM$InactiveState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/epdg/IPSecDataConnSM;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecDataConnSM;->setEpdgInterfaceDropRule(ZI)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->resetThrottleState()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/epdg/IPSecDataConnSM;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mW2MInProgressState:Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/epdg/IPSecDataConnSM;III)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/IPSecDataConnSM;->handleEnableEpdgFailure(III)V

    return-void
.end method

.method static synthetic access$4300(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/epdg/IPSecDataConnSM;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4800()Lcom/sec/epdg/handover/EpdgImsListener;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/epdg/IPSecDataConnSM;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->sendWifiRssiIntentDelayToEpdg(Z)V

    return-void
.end method

.method static synthetic access$5000(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/epdg/IPSecDataConnSM;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->checkConnection()V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->sendKeepAlive()V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    return v0
.end method

.method static synthetic access$6902(Lcom/sec/epdg/IPSecDataConnSM;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z

    return p1
.end method

.method static synthetic access$7000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/epdg/IPSecDataConnSM;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic access$7200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/epdg/IPSecDataConnSM;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectedState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectedState;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    return-void
.end method

.method private checkConnection()V
    .locals 4

    .prologue
    .line 1456
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1457
    .local v0, "conncid":I
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    sget v2, Lcom/sec/epdg/EpdgOperatorConstants;->PDPD_CHECK_TIMEOUT:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecAdapter;->postCheckConnectionMessage(IILjava/lang/Object;)V

    .line 1458
    return-void
.end method

.method private checkDnsRetryRequired()Z
    .locals 4

    .prologue
    .line 1431
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Enter checkDnsRetryRequired"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/epdg/throttle/ThrottleController;->getThrottleCount(Ljava/lang/String;)I

    move-result v0

    .line 1434
    .local v0, "count":I
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throttle Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 1436
    const-string v1, "[IPSECDATACONNSM]"

    const-string/jumbo v2, "mCurrentTimer not correctly updated inside Throttle Manager."

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    :cond_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 1439
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "DNS RESET might be REQUIRED.Posting Message to EPDG service for additional checks"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgCommands;->postDnsRetryRequest(I)V

    .line 1442
    const/4 v1, 0x1

    .line 1445
    :goto_0
    return v1

    .line 1444
    :cond_1
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Exit checkDnsRetryRequired: DNS RESET NOT REQUIRED"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private configureApnContext(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1491
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1492
    .local v2, "cid":I
    const/4 v0, 0x0

    .line 1495
    .local v0, "apnName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/epdg/IPSecDataConnSM;->initConnectionParams()V

    .line 1500
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1501
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "apnName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1513
    .restart local v0    # "apnName":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1514
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed Connect request for Cid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(no apnname)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :cond_1
    :goto_1
    return-void

    .line 1502
    :cond_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/AsyncResult;

    if-eqz v4, :cond_0

    .line 1503
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1504
    .local v1, "asyncRes":Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;

    .line 1505
    .local v3, "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    if-eqz v3, :cond_0

    .line 1506
    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getApnName()Ljava/lang/String;

    move-result-object v0

    .line 1507
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4, v2}, Lcom/sec/epdg/IWlanApnContext;->setmRilCid(I)V

    .line 1508
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getIpv6Addr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;->getIpv4Addr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/epdg/IWlanApnContext;->setRequestIpAddress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1518
    .end local v1    # "asyncRes":Landroid/os/AsyncResult;
    .end local v3    # "connReq":Lcom/sec/epdg/EpdgRilInterface$ApnAttachRequest;
    :cond_3
    const-string v4, "[IPSECDATACONNSM]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connect request is received for cid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/sec/epdg/IWlanApnContext;->configureAPNSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v4}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 1523
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0.0.0.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v4

    const-string v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1528
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    goto/16 :goto_1
.end method

.method private disconnectEpdgConnection()V
    .locals 4

    .prologue
    .line 1449
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1450
    .local v0, "conncid":I
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/epdg/IPSecAdapter;->postDisconnectMessage(IILjava/lang/Object;)V

    .line 1451
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Moving to Disconnecting State"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mDisConnectingState:Lcom/sec/epdg/IPSecDataConnSM$DisconnectingState;

    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    .line 1453
    return-void
.end method

.method public static getNewStateMachineInstance(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)Lcom/sec/epdg/IPSecDataConnSM;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mApnContext"    # Lcom/sec/epdg/IWlanApnContext;
    .param p3, "mEpdgHandler"    # Landroid/os/Handler;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 247
    new-instance v0, Lcom/sec/epdg/IPSecDataConnSM;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/IPSecDataConnSM;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/sec/epdg/IWlanApnContext;Landroid/os/Handler;Landroid/os/Looper;)V

    return-object v0
.end method

.method private handleConnectRequest()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1533
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter handleConnectRequest()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1535
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, " No APN settings to drive the State machine in Inactive state. Critical Failure !!"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    move v4, v3

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 1586
    :goto_0
    return v3

    .line 1540
    :cond_0
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->isThrottleTimerRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1543
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1544
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "HandOver Request Received"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1549
    .local v7, "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0.0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1552
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v4"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1558
    sget-object v0, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_4:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    if-eq v7, v0, :cond_4

    .line 1559
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v6"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    .line 1566
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/epdg/IWlanApnSetting;->setmIpSecIpType(Lcom/sec/epdg/IWlanEnum$IPSecIpType;)V

    .line 1570
    .end local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    :cond_3
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->clone()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v4

    .line 1572
    .local v4, "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1573
    .local v2, "conncid":I
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv4addr()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getmReqIpv6addr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/epdg/IPSecAdapter;->postConnectMessage(IILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1577
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mHandoverConnectingState:Lcom/sec/epdg/IPSecDataConnSM$HandoverConnectingState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1562
    .end local v2    # "conncid":I
    .end local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    .restart local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    :cond_4
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Setting IP type as v4v6"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    sget-object v7, Lcom/sec/epdg/IWlanEnum$IPSecIpType;->IP_VERSION_V4V6:Lcom/sec/epdg/IWlanEnum$IPSecIpType;

    goto :goto_1

    .line 1579
    .end local v7    # "mIpSecIpType":Lcom/sec/epdg/IWlanEnum$IPSecIpType;
    .restart local v2    # "conncid":I
    .restart local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_5
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mInitialConnectingState:Lcom/sec/epdg/IPSecDataConnSM$InitialConnectingState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0

    .line 1582
    .end local v2    # "conncid":I
    .end local v4    # "wlanSetting":Lcom/sec/epdg/IWlanApnSetting;
    :cond_6
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Connect Request is Throttled in InActive State."

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->informHandoverFailureToRilAndFramework(I)V

    .line 1584
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mThrottleState:Lcom/sec/epdg/IPSecDataConnSM$ThrottleState;

    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto/16 :goto_0
.end method

.method private handleEnableEpdgFailure(III)V
    .locals 3
    .param p1, "cid"    # I
    .param p2, "handoverAct"    # I
    .param p3, "handoverState"    # I

    .prologue
    .line 206
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside handleEnableEpdgFailure, cid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "handoverAct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "handoverState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z

    .line 210
    invoke-static {p1}, Lcom/sec/epdg/EpdgCommands;->postEnableEpdgFailure(I)V

    .line 211
    return-void
.end method

.method private handleTCRules(ZI)Z
    .locals 6
    .param p1, "enable"    # Z
    .param p2, "cid"    # I

    .prologue
    const/4 v5, 0x1

    .line 1618
    const/4 v1, 0x0

    .line 1619
    .local v1, "error":Z
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-nez v2, :cond_0

    .line 1620
    const-string v2, "[IPSECDATACONNSM]"

    const-string/jumbo v3, "mIWlanApnContext null"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    :goto_0
    return v1

    .line 1622
    :cond_0
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending iptables rules mIWlanApnContext.getbIprulesStatus() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v4}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    if-ne v5, p1, :cond_2

    .line 1627
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v2

    if-ne v2, v5, :cond_1

    .line 1628
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "TCRules are enable"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1630
    :cond_1
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling enable EPDG for cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    :try_start_0
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 1633
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->enableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IllegalStateException while enabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1637
    const/4 v1, 0x1

    .line 1640
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 1641
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 1642
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "RemoteException while enabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1643
    const/4 v1, 0x1

    .line 1646
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1652
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2}, Lcom/sec/epdg/IWlanApnContext;->getTCRulesStatus()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1653
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "TCRules are not enable"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1655
    :cond_3
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling disable EPDG for cid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    :try_start_1
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v2, p1}, Lcom/sec/epdg/IWlanApnContext;->setTCRulesStatus(Z)V

    .line 1658
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v3, p2, -0x1

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Lcom/sec/epdg/EpdgUtils;->getIwlanInterfaceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->disableEpdg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 1660
    :catch_2
    move-exception v0

    .line 1661
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "IllegalStateException while disabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1662
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .line 1663
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 1664
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "[IPSECDATACONNSM]"

    const-string v3, "RemoteException while disabling epdg routes"

    invoke-static {v2, v3, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1665
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private handleWifiConnect(ZLjava/lang/String;)V
    .locals 4
    .param p1, "isSsidChanged"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1471
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWifiConnect: SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isSsidChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1473
    if-eqz p1, :cond_0

    .line 1474
    iput-object p2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mCurrentSsid:Ljava/lang/String;

    .line 1475
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSID changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mCurrentSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/epdg/Log;->d(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_0
    return-void
.end method

.method private handleWifiStateChange(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1480
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 1481
    .local v1, "isWifiConnected":Z
    :goto_0
    iput-boolean v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z

    .line 1482
    if-nez v1, :cond_1

    .line 1488
    :goto_1
    return-void

    .end local v1    # "isWifiConnected":Z
    :cond_0
    move v1, v3

    .line 1480
    goto :goto_0

    .line 1485
    .restart local v1    # "isWifiConnected":Z
    :cond_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 1486
    .local v0, "isSsidChanged":Z
    :goto_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/sec/epdg/IPSecDataConnSM;->handleWifiConnect(ZLjava/lang/String;)V

    goto :goto_1

    .end local v0    # "isSsidChanged":Z
    :cond_2
    move v0, v3

    .line 1485
    goto :goto_2
.end method

.method private informHandoverFailureToRilAndFramework(I)V
    .locals 6
    .param p1, "cid"    # I

    .prologue
    const/4 v3, 0x0

    .line 185
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Enter informHandoverFailureToRilAndFramework:  Sending Call Status failed to RIL"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v4

    const/4 v5, 0x0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;-><init>(ILjava/lang/String;ZZLcom/sec/epdg/EpdgRilInterface$IWlanLinkProperties;)V

    invoke-virtual {v0}, Lcom/sec/epdg/EpdgCommands$ApnConnStatusData;->post()V

    .line 188
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->isHandOver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V

    .line 190
    invoke-direct {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V

    .line 194
    invoke-virtual {p0, v3}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 196
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Exit informHandoverFailureToRilAndFramework"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method private initConnectionParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 251
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRilCid(I)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/sec/epdg/IPSecDataConnSM;->setmRetryCount(I)V

    .line 253
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 254
    invoke-virtual {p0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->setIsW2LRequested(Z)V

    .line 255
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setIWlanSetting(Lcom/sec/epdg/IWlanApnSetting;)V

    .line 256
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 257
    return-void
.end method

.method private notifyL2WRegistrant(Z)V
    .locals 4
    .param p1, "result"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1597
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyL2WRegistrant : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrants(IILjava/lang/String;)V

    .line 1601
    return-void

    .line 1598
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyW2LRegistrant(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 1590
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyW2LRegistrant : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgCommands;->postNotifyRegistrants(IILjava/lang/String;)V

    .line 1594
    return-void

    .line 1591
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetThrottleState()V
    .locals 2

    .prologue
    .line 1466
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "Reset throttle state of State Machine"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-static {}, Lcom/sec/epdg/throttle/ThrottleController;->getInstance()Lcom/sec/epdg/throttle/ThrottleController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/epdg/throttle/ThrottleController;->resetThrottleState(Ljava/lang/String;)V

    .line 1468
    return-void
.end method

.method private sendKeepAlive()V
    .locals 3

    .prologue
    .line 1461
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1462
    .local v0, "conncid":I
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIPSecAdapter:Lcom/sec/epdg/IPSecAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/epdg/IPSecAdapter;->postSendKeepAliveMessage(I)V

    .line 1463
    return-void
.end method

.method private sendWifiRssiIntentDelayToEpdg(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 1687
    sget v1, Lcom/sec/epdg/EpdgOperatorConstants;->WIFI_RSSI_INTENT_DELAY_TIMER:I

    if-lez v1, :cond_0

    .line 1688
    invoke-virtual {p0}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgUtils;->isAlwaysOnApn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1689
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendWifiRssiIntentDelayToEpdg: value is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 1691
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x49

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1692
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1693
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1696
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 1692
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setEpdgInterfaceDropRule(ZI)V
    .locals 3
    .param p1, "add"    # Z
    .param p2, "cid"    # I

    .prologue
    .line 1678
    :try_start_0
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mNMService:Landroid/os/INetworkManagementService;

    add-int/lit8 v2, p2, -0x1

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getMobileInterfaceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/os/INetworkManagementService;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    :goto_0
    return-void

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "[IPSECDATACONNSM]"

    const-string v2, "Exception while setEpdgInterfaceDropRule"

    invoke-static {v1, v2, v0}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1681
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private transition(Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 181
    return-void
.end method

.method private updatePermanentFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 1604
    const-string v0, "[IPSECDATACONNSM]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermanentFail, apnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-static {p1}, Lcom/sec/epdg/EpdgCommands;->postEpdgNotAvailableForOnDemandFailure(Ljava/lang/String;)V

    .line 1608
    :cond_0
    return-void
.end method


# virtual methods
.method public IsExistExpiredTimeTable(I)Z
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    .local v0, "isExist":Z
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return v0
.end method

.method public IsTimerExpired(I)Z
    .locals 8
    .param p1, "key"    # I

    .prologue
    .line 124
    iget-object v1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 125
    .local v2, "leftTime":J
    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 126
    .local v0, "isExpired":Z
    :goto_0
    const-string v1, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " leftTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isExpired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return v0

    .line 125
    .end local v0    # "isExpired":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected deferTransitionTo(Lcom/android/internal/util/State;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/State;

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 177
    return-void
.end method

.method public getApnContextDump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getmIpsecRemoteUri()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 165
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getApnName(), mIWlanApnContext.getIWlanSetting() is null, returning apn name as null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getmApnType()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 155
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getApnType(), mIWlanApnContext.getIWlanSetting() is null, returning apn type as null"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentIWlanState()Lcom/sec/epdg/IWlanState;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanState()Lcom/sec/epdg/IWlanState;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 134
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getCurrentIWlanState: mIWlanApnContext  is null, IWanState as Inactive"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanState;->setState(I)V

    .line 137
    sget-object v0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanInactiveState:Lcom/sec/epdg/IWlanState;

    goto :goto_0
.end method

.method public getDataConnectionHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->smHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getExpiredTime(I)J
    .locals 5
    .param p1, "key"    # I

    .prologue
    .line 112
    iget-object v2, p0, Lcom/sec/epdg/IPSecDataConnSM;->mExpiredTimeTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 113
    .local v0, "expiredTime":J
    const-string v2, "[IPSECDATACONNSM]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expiredTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-wide v0
.end method

.method public declared-synchronized getIsW2LRequested()Z
    .locals 1

    .prologue
    .line 1611
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeriodicDpdTimer()I
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnContext;->getIWlanSetting()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/epdg/IWlanApnSetting;->getPeriodicDpdTimer()I

    move-result v0

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_0
    const-string v0, "[IPSECDATACONNSM]"

    const-string/jumbo v1, "getPeriodicDpdTimer: mIWlanApnContext.getIWlanSetting()  is null, dpd value as 0"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getmRetryCount()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRetryCount:I

    return v0
.end method

.method public getmRilCid()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    return v0
.end method

.method public isHandOver()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsHandOver:Z

    return v0
.end method

.method public setIsHandOver(Z)V
    .locals 0
    .param p1, "isHandOver"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsHandOver:Z

    .line 109
    return-void
.end method

.method public declared-synchronized setIsW2LRequested(Z)V
    .locals 1
    .param p1, "mIsW2LRequested"    # Z

    .prologue
    .line 1615
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mIsW2LRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    monitor-exit p0

    return-void

    .line 1615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setmRetryCount(I)V
    .locals 0
    .param p1, "mRetryCount"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRetryCount:I

    .line 101
    return-void
.end method

.method public setmRilCid(I)V
    .locals 0
    .param p1, "mRilCid"    # I

    .prologue
    .line 264
    iput p1, p0, Lcom/sec/epdg/IPSecDataConnSM;->mRilCid:I

    .line 265
    return-void
.end method
