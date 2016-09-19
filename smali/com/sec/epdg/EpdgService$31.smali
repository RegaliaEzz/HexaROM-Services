.class Lcom/sec/epdg/EpdgService$31;
.super Ljava/lang/Object;
.source "EpdgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;)V
    .locals 0

    .prologue
    .line 4921
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4925
    const-string v1, "[EPDGService]"

    const-string/jumbo v2, "mWifiCallingOff"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4926
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->startTimersIfNeeded()V
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$9700(Lcom/sec/epdg/EpdgService;)V

    .line 4927
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mRilAdapter:Lcom/sec/epdg/EpdgRilInterface;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$4900(Lcom/sec/epdg/EpdgService;)Lcom/sec/epdg/EpdgRilInterface;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/epdg/EpdgRilInterface;->updateEpdgAvailability(Z)V

    .line 4928
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isVodPreferredMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4929
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->updateCpEpdgHoThreshold(Z)V
    invoke-static {v1, v4}, Lcom/sec/epdg/EpdgService;->access$9800(Lcom/sec/epdg/EpdgService;Z)V

    .line 4930
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4931
    .local v0, "wifiIntent":Landroid/content/Intent;
    const-string v1, "com.sec.epdg.EPDG_NOTAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4932
    const-string v1, "EPDG_NOTAVAILABLE"

    invoke-static {v1}, Lcom/sec/epdg/EpdgDumpState;->dumpLastEpdgState(Ljava/lang/String;)V

    .line 4933
    const-string v1, "EXTRA_WEAK_WIFI"

    iget-object v2, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$9100(Lcom/sec/epdg/EpdgService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4934
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send EPDG Not Available broadcast : EXTRA_WEAK_WIFI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    # getter for: Lcom/sec/epdg/EpdgService;->mWifiMgrState:I
    invoke-static {v3}, Lcom/sec/epdg/EpdgService;->access$9100(Lcom/sec/epdg/EpdgService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4936
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/epdg/EpdgUtils;->sendStickyBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4938
    iget-object v1, p0, Lcom/sec/epdg/EpdgService$31;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->sendWifiStatusChangedNotification(Z)V
    invoke-static {v1, v4}, Lcom/sec/epdg/EpdgService;->access$9900(Lcom/sec/epdg/EpdgService;Z)V

    .line 4940
    return-void
.end method
