.class Lcom/sec/epdg/EpdgService$7;
.super Lcom/sec/epdg/EpdgBroadcastReceiver;
.source "EpdgService.java"


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
    .line 1269
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$7;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Lcom/sec/epdg/EpdgBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public processFastPath(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public processSlowPath(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0x10

    .line 1278
    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 1279
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "[EPDGService]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent received."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/epdg/EpdgSettings;->getAlwaysOnApn()Ljava/lang/String;

    move-result-object v0

    .line 1281
    .local v0, "apnType":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/epdg/EpdgService$7;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->getSMForApnType(Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;
    invoke-static {v5, v0}, Lcom/sec/epdg/EpdgService;->access$1600(Lcom/sec/epdg/EpdgService;Ljava/lang/String;)Lcom/sec/epdg/IPSecDataConnSM;

    move-result-object v4

    .line 1282
    .local v4, "sm":Lcom/sec/epdg/IPSecDataConnSM;
    if-eqz v4, :cond_0

    .line 1283
    const-string v5, "[EPDGService]"

    const-string v6, "NATT KEEP ALIVE TIMER EXPIRED"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->isPdnConnectedOverWifi(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1285
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 1286
    .local v3, "msg":Landroid/os/Message;
    const/16 v5, 0x12

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1287
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1289
    invoke-virtual {v4, v8}, Lcom/sec/epdg/IPSecDataConnSM;->IsExistExpiredTimeTable(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1290
    invoke-virtual {v4, v8}, Lcom/sec/epdg/IPSecDataConnSM;->IsTimerExpired(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1291
    invoke-virtual {v4}, Lcom/sec/epdg/IPSecDataConnSM;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1292
    .local v1, "dpdmsg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1297
    .end local v1    # "dpdmsg":Landroid/os/Message;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
