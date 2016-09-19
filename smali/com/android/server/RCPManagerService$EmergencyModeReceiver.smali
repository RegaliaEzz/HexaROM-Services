.class public Lcom/android/server/RCPManagerService$EmergencyModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmergencyModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;)V
    .locals 0

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 1386
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " EmergencyModeReceiver onReceive() "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " action = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const-string v7, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1392
    const-string/jumbo v7, "reason"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1393
    .local v6, "reason":I
    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 1395
    :try_start_0
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, " EmergencyModeReceiver : calling scanAndStartRCPProxy EMERGENCY_STATE_CHANGED reason = MODE_DISABLED "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    iget-object v7, v7, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 1399
    .local v5, "personaManager":Landroid/os/PersonaManager;
    if-eqz v5, :cond_0

    .line 1400
    # getter for: Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$1400()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v4

    .line 1402
    .local v4, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 1404
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$1400()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/RCPManagerService;->scanAndStartRCPProxy(I)V

    .line 1407
    .end local v4    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_0
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    const-string v8, "com.sec.knox.bridge.receiver.ACTION_USER_SWITCHED"

    # getter for: Lcom/android/server/RCPManagerService;->OWNER_ID:Ljava/lang/Integer;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$1400()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    # invokes: Lcom/android/server/RCPManagerService;->startKnoxModeSwitcher(Ljava/lang/String;I)V
    invoke-static {v7, v8, v9}, Lcom/android/server/RCPManagerService;->access$600(Lcom/android/server/RCPManagerService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    .end local v5    # "personaManager":Landroid/os/PersonaManager;
    .end local v6    # "reason":I
    :cond_1
    :goto_1
    return-void

    .line 1386
    :cond_2
    const-string v7, " intent is null "

    goto :goto_0

    .line 1410
    .restart local v6    # "reason":I
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " BootReceiver : Exception while scanAndStartRCPProxy() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1415
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1417
    :try_start_1
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, " EmergencyModeReceiver : calling scanAndStartRCPProxy EMERGENCY_STATE_CHANGED reason = MODE_ENABLED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->getAllPersonas()[I
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$2000(Lcom/android/server/RCPManagerService;)[I

    move-result-object v2

    .line 1422
    .local v2, "ids":[I
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeRedesign:Z
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$1500(Lcom/android/server/RCPManagerService;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1423
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1424
    :try_start_2
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1425
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    const/4 v9, 0x0

    # invokes: Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V
    invoke-static {v7, v9}, Lcom/android/server/RCPManagerService;->access$1000(Lcom/android/server/RCPManagerService;I)V

    .line 1426
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    const/4 v9, 0x0

    # invokes: Lcom/android/server/RCPManagerService;->unregisterPacakgeReceiver(I)V
    invoke-static {v7, v9}, Lcom/android/server/RCPManagerService;->access$2100(Lcom/android/server/RCPManagerService;I)V

    .line 1427
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    :cond_4
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1430
    if-eqz v2, :cond_1

    .line 1431
    :try_start_3
    array-length v3, v2

    .line 1432
    .local v3, "idslength":I
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$1600(Lcom/android/server/RCPManagerService;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1433
    const-string v7, "Bridge_PROXY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "personas present size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 1435
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v8

    monitor-enter v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1436
    :try_start_4
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V
    invoke-static {v7, v1}, Lcom/android/server/RCPManagerService;->access$1000(Lcom/android/server/RCPManagerService;I)V

    .line 1437
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # invokes: Lcom/android/server/RCPManagerService;->unregisterPacakgeReceiver(I)V
    invoke-static {v7, v1}, Lcom/android/server/RCPManagerService;->access$2100(Lcom/android/server/RCPManagerService;I)V

    .line 1438
    iget-object v7, p0, Lcom/android/server/RCPManagerService$EmergencyModeReceiver;->this$0:Lcom/android/server/RCPManagerService;

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1434
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1429
    .end local v1    # "i":I
    .end local v3    # "idslength":I
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1444
    .end local v2    # "ids":[I
    :catch_1
    move-exception v0

    .line 1445
    .restart local v0    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1439
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "ids":[I
    .restart local v3    # "idslength":I
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
.end method
