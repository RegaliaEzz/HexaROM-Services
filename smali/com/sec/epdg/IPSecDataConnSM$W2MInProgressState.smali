.class Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;
.super Lcom/android/internal/util/State;
.source "IPSecDataConnSM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecDataConnSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "W2MInProgressState"
.end annotation


# instance fields
.field private isHOResumeReceived:Z

.field final synthetic this$0:Lcom/sec/epdg/IPSecDataConnSM;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;)V
    .locals 1

    .prologue
    .line 980
    iput-object p1, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecDataConnSM;Lcom/sec/epdg/IPSecDataConnSM$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecDataConnSM;
    .param p2, "x1"    # Lcom/sec/epdg/IPSecDataConnSM$1;

    .prologue
    .line 980
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;-><init>(Lcom/sec/epdg/IPSecDataConnSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 985
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in W2MInProgressState state : Entered W2MInProgressState "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIWlanApnContext:Lcom/sec/epdg/IWlanApnContext;
    invoke-static {v0}, Lcom/sec/epdg/IPSecDataConnSM;->access$1000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IWlanApnContext;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/epdg/IWlanApnContext;->setState(I)V

    .line 988
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    const-wide/32 v2, 0x27100

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessageDelayed(IJ)V

    .line 989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    .line 990
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 994
    const-string v0, "[IPSECDATACONNSM]"

    const-string v1, "SM in W2MInProgressState state : Exiting W2MInProgressState "

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    const/16 v1, 0xb

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/sec/epdg/IPSecDataConnSM;->access$6700(Lcom/sec/epdg/IPSecDataConnSM;I)V

    .line 996
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1000
    const/4 v2, 0x0

    .line 1001
    .local v2, "status":Z
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$6800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Message:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1124
    :pswitch_0
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    :goto_0
    return v2

    .line 1005
    :pswitch_1
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$6902(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    goto :goto_0

    .line 1008
    :pswitch_2
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Waiting response from RIL in W2M case for 160 secs"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$6902(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1010
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    goto :goto_0

    .line 1015
    :pswitch_3
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v3, v6, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 1016
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7000(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Disconnection Happened, move to peer disconnect state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mPeerDisconnectedState:Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$5900(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$PeerDisconnectedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_0

    .line 1022
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1023
    .local v1, "pdnType":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1024
    .local v0, "act":I
    iput-boolean v7, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    .line 1025
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On handover resume, received act is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cid is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const/16 v3, 0x21

    if-ne v0, v3, :cond_1

    .line 1030
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v8, v1}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    .line 1032
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1033
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1061
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgCommands;->postDelayedRegister(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1034
    :cond_1
    const/16 v3, 0x30

    if-ne v0, v3, :cond_6

    .line 1035
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$6902(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1036
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsWifiConnected:Z
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$7100(Lcom/sec/epdg/IPSecDataConnSM;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mImsListener:Lcom/sec/epdg/handover/EpdgImsListener;
    invoke-static {}, Lcom/sec/epdg/IPSecDataConnSM;->access$4800()Lcom/sec/epdg/handover/EpdgImsListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/epdg/handover/EpdgImsListener;->getCallStatus()Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_IDLE:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-eq v3, v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->isW2LRecommended(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1039
    :cond_3
    sget-boolean v3, Lcom/sec/epdg/EpdgOperatorConstants;->DISCONNECT_AFTER_DEREGI:Z

    if-eqz v3, :cond_4

    .line 1041
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/sec/epdg/EpdgCommands;->postDeregister(Ljava/lang/String;I)V

    .line 1046
    :goto_2
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1047
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    goto :goto_1

    .line 1043
    :cond_4
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v8, v1}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    goto :goto_2

    .line 1049
    :cond_5
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1050
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1051
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v7}, Lcom/sec/epdg/IPSecDataConnSM;->setIsHandOver(Z)V

    .line 1052
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget-object v4, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # getter for: Lcom/sec/epdg/IPSecDataConnSM;->mConnectedState:Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;
    invoke-static {v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$2800(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/sec/epdg/IPSecDataConnSM$ConnectedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/epdg/IPSecDataConnSM;->deferTransitionTo(Lcom/android/internal/util/State;)V

    goto :goto_1

    .line 1054
    :cond_6
    const/16 v3, 0xff

    if-ne v0, v3, :cond_0

    .line 1055
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "IP is changed during handover"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # setter for: Lcom/sec/epdg/IPSecDataConnSM;->mIsNeededL2WHO:Z
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$6902(Lcom/sec/epdg/IPSecDataConnSM;Z)Z

    .line 1057
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyW2LRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4000(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1058
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->notifyL2WRegistrant(Z)V
    invoke-static {v3, v6}, Lcom/sec/epdg/IPSecDataConnSM;->access$4100(Lcom/sec/epdg/IPSecDataConnSM;Z)V

    .line 1059
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3, v8, v1}, Lcom/sec/epdg/IPSecDataConnSM;->sendMessage(II)V

    goto/16 :goto_1

    .line 1066
    .end local v0    # "act":I
    .end local v1    # "pdnType":I
    :pswitch_5
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7200(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Disconnection Request Received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    iget-boolean v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->isHOResumeReceived:Z

    if-nez v3, :cond_7

    .line 1071
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    invoke-virtual {v3}, Lcom/sec/epdg/IPSecDataConnSM;->getmRilCid()I

    move-result v3

    invoke-static {v3}, Lcom/sec/epdg/EpdgUtils;->shouldEpdgSupressW2LToRil(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1072
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "APN_DETACH req received and cellular unavailable"

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :cond_7
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v3, v6, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 1090
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 1074
    :cond_8
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "APN_DETACH req received  before HO_RESUME. Unexpected event."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1094
    :pswitch_6
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7300(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Force Disconnection Request Received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    iget v4, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleTCRules(ZI)Z
    invoke-static {v3, v6, v4}, Lcom/sec/epdg/IPSecDataConnSM;->access$3600(Lcom/sec/epdg/IPSecDataConnSM;ZI)Z

    .line 1107
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->disconnectEpdgConnection()V
    invoke-static {v3}, Lcom/sec/epdg/IPSecDataConnSM;->access$2000(Lcom/sec/epdg/IPSecDataConnSM;)V

    goto/16 :goto_0

    .line 1112
    :pswitch_7
    const-string v3, "[IPSECDATACONNSM]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SM Current State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v5}, Lcom/sec/epdg/IPSecDataConnSM;->access$7400(Lcom/sec/epdg/IPSecDataConnSM;)Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Unexpected event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1117
    :pswitch_8
    iget-object v3, p0, Lcom/sec/epdg/IPSecDataConnSM$W2MInProgressState;->this$0:Lcom/sec/epdg/IPSecDataConnSM;

    # invokes: Lcom/sec/epdg/IPSecDataConnSM;->handleWifiStateChange(Landroid/os/Message;)V
    invoke-static {v3, p1}, Lcom/sec/epdg/IPSecDataConnSM;->access$2100(Lcom/sec/epdg/IPSecDataConnSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1120
    :pswitch_9
    const-string v3, "[IPSECDATACONNSM]"

    const-string v4, "Ignoring the Interface UP event as SM is in W2LInProgress state. "

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
