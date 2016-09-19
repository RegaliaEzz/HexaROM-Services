.class Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;
.super Lcom/sec/epdg/EpdgService$HORunnable;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgPdnXferRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;I)V
    .locals 0
    .param p2, "networkType"    # I

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    .line 1122
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService$HORunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    .line 1123
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1127
    invoke-virtual {p0}, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->getNetworkType()I

    move-result v0

    .line 1128
    .local v0, "ratType":I
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger Move for PDN\'s from WIFI networktype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1131
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1132
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1133
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1135
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    .line 1136
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isInternetKeepAliveEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1137
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->isKeepAliveRunning()Z
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$400(Lcom/sec/epdg/EpdgService;)Z

    move-result v1

    if-nez v1, :cond_1

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRilSharedData:Lcom/sec/epdg/EpdgRilSharedData;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$500()Lcom/sec/epdg/EpdgRilSharedData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgRilSharedData;->getSmartWifiState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1139
    const-string v1, "[EPDGService]"

    const-string v2, "InternetKeepAlive:mPdnXferReceiver:RAT=LTE,EPDG=AVAILABLE so send keep alive packet and start the keep alive timer"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->pingAsyncInternet()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$600(Lcom/sec/epdg/EpdgService;)V

    .line 1142
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgContentReader;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getmKeepAliveTimer()I

    move-result v2

    int-to-long v2, v2

    # invokes: Lcom/sec/epdg/EpdgService;->startAlarmForInternetKeepAlive(J)V
    invoke-static {v1, v2, v3}, Lcom/sec/epdg/EpdgService;->access$800(Lcom/sec/epdg/EpdgService;J)V

    .line 1159
    :cond_1
    :goto_0
    return-void

    .line 1145
    :cond_2
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1146
    # invokes: Lcom/sec/epdg/EpdgService;->getIsOnDemandApnConnectionFailed()Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v5, :cond_3

    .line 1147
    # invokes: Lcom/sec/epdg/EpdgService;->setIsOnDemandApnConnectionFailed(Z)V
    invoke-static {v4}, Lcom/sec/epdg/EpdgService;->access$100(Z)V

    .line 1148
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onSystemSelectTimerFinish()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$200(Lcom/sec/epdg/EpdgService;)V

    .line 1150
    :cond_3
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$EpdgPdnXferRunnable;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->moveToLteBasedOnMapcon()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$300(Lcom/sec/epdg/EpdgService;)V

    goto :goto_0

    .line 1151
    :cond_4
    if-nez v0, :cond_5

    .line 1152
    const-string v1, "[EPDGService]"

    const-string v2, "IMS on ePDG and no LTE available allowing IMS to continue"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_5
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Higher priority RAT handling done. No action taken for current N/w Type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
