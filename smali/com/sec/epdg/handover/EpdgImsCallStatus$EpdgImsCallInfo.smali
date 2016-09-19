.class Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;
.super Ljava/lang/Object;
.source "EpdgImsCallStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsCallStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgImsCallInfo"
.end annotation


# instance fields
.field mCallType:Ljava/lang/Integer;

.field mIsAckRecvd:Z

.field mIsDowngradedVideoCall:Z

.field mVideoDedicatedBearerUp:Z

.field mVoiceDedicatedBearerUp:Z

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsCallStatus;Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 1
    .param p2, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    const/4 v0, -0x1

    .line 51
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p2}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->update(Lcom/sec/ims/volte2/data/ImsCallInfo;)V

    .line 53
    invoke-virtual {p0}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->resetAckRcvd()V

    .line 54
    invoke-virtual {p0, v0, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->storeDedicatedBearerState(II)V

    .line 55
    return-void
.end method


# virtual methods
.method getCallType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mCallType:Ljava/lang/Integer;

    return-object v0
.end method

.method isDownGradedVideoCall()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsDowngradedVideoCall:Z

    return v0
.end method

.method isHandoverReady()Z
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mCallType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    .local v0, "callType":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsAckRecvd:Z

    .line 107
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsAckRecvd:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsCallStatus;->isVideoCall(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->access$100(Lcom/sec/epdg/handover/EpdgImsCallStatus;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVideoDedicatedBearerUp:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVoiceDedicatedBearerUp:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsDowngradedVideoCall:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVoiceDedicatedBearerUp:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    # invokes: Lcom/sec/epdg/handover/EpdgImsCallStatus;->isVideoCall(I)Z
    invoke-static {v1, v0}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->access$100(Lcom/sec/epdg/handover/EpdgImsCallStatus;I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVoiceDedicatedBearerUp:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->this$0:Lcom/sec/epdg/handover/EpdgImsCallStatus;

    # getter for: Lcom/sec/epdg/handover/EpdgImsCallStatus;->mCallStatus:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;
    invoke-static {v1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->access$200(Lcom/sec/epdg/handover/EpdgImsCallStatus;)Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;->CALL_VOICEONLY:Lcom/sec/epdg/handover/EpdgImsConstants$EpdgCallStatus;

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method resetAckRcvd()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsAckRecvd:Z

    .line 72
    return-void
.end method

.method storeDedicatedBearerState(II)V
    .locals 3
    .param p1, "dedicatedBearerState"    # I
    .param p2, "qci"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    sparse-switch p2, :sswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 77
    :sswitch_0
    if-eq p1, v2, :cond_0

    :goto_1
    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVoiceDedicatedBearerUp:Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 82
    :sswitch_1
    if-eq p1, v2, :cond_1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVideoDedicatedBearerUp:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 86
    :sswitch_2
    iput-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVoiceDedicatedBearerUp:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVideoDedicatedBearerUp:Z

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mCallType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mCallType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsDowngradedVideoCall : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVideoDedicatedBearerUp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVideoDedicatedBearerUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsAckRecvd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsAckRecvd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .locals 5
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 59
    :try_start_0
    # invokes: Lcom/sec/epdg/handover/EpdgImsCallStatus;->getCallType(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;
    invoke-static {p1}, Lcom/sec/epdg/handover/EpdgImsCallStatus;->access$000(Lcom/sec/ims/volte2/data/ImsCallInfo;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mCallType:Ljava/lang/Integer;

    .line 60
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->isDowngradedVideoCall()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsDowngradedVideoCall:Z

    .line 61
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mIsAckRecvd:Z

    .line 62
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getDedicatedBearerState(I)I

    move-result v3

    if-eq v3, v4, :cond_2

    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVoiceDedicatedBearerUp:Z

    .line 63
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getDedicatedBearerState(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/sec/ims/volte2/data/ImsCallInfo;->getDedicatedBearerState(I)I

    move-result v3

    if-eq v3, v4, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/sec/epdg/handover/EpdgImsCallStatus$EpdgImsCallInfo;->mVideoDedicatedBearerUp:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_1
    return-void

    :cond_2
    move v3, v1

    .line 62
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
