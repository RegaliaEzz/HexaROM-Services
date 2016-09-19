.class Lcom/android/server/display/WifiDisplayAdapter$13;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 988
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.server.display.wfd.DISCONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 991
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 992
    monitor-exit v2

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 992
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 996
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 997
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 998
    .local v12, "wfdSessionState":I
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wifidisplay Session state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 1000
    if-nez v12, :cond_4

    .line 1001
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->requestClearConnectedDisplayInfo()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1000(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1005
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1006
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, v12}, Lcom/android/server/display/WifiDisplayAdapter;->setSourceState(I)V

    .line 1058
    .end local v12    # "wfdSessionState":I
    :cond_3
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.WIFI_DISPLAY_SINK_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1060
    .local v13, "wfdSinkState":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1, v13}, Lcom/android/server/display/WifiDisplayAdapter;->setSinkState(I)V

    goto :goto_0

    .line 1002
    .end local v13    # "wfdSinkState":I
    .restart local v12    # "wfdSessionState":I
    :cond_4
    const/4 v1, 0x1

    if-ne v12, v1, :cond_2

    .line 1003
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->requestSaveConnectedDisplayInfo()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1100(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_1

    .line 1005
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1007
    .end local v12    # "wfdSessionState":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1008
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_2

    .line 1009
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.wfd.notification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1010
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 1011
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    .line 1015
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 1016
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleDLNADisconnectReqBroadcastLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1400(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1018
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    .line 1019
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_b

    .line 1020
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisableLocked()V

    .line 1025
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string v3, "DCON"

    const-string v4, "NOTI"

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->insertLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v3, v4}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_a
    monitor-exit v2

    goto/16 :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 1022
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 1028
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.screensharing.DLNA_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1029
    const-string/jumbo v1, "status"

    const/4 v2, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 1030
    .local v11, "status":I
    const/4 v1, 0x3

    if-eq v11, v1, :cond_d

    const/4 v1, 0x1

    if-ne v11, v1, :cond_10

    .line 1032
    :cond_d
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_e

    .line 1033
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v1, Landroid/hardware/display/DLNADevice;

    const-string/jumbo v2, "device_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ipAddress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "p2pMacAddress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string/jumbo v6, "netType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "player_type"

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "resume_request"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    invoke-direct/range {v1 .. v9}, Landroid/hardware/display/DLNADevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v14, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1602(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/DLNADevice;)Landroid/hardware/display/DLNADevice;

    .line 1034
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I
    invoke-static {v1, v11}, Lcom/android/server/display/WifiDisplayAdapter;->access$1302(Lcom/android/server/display/WifiDisplayAdapter;I)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1038
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1039
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DLNADevice;->isSwitchingDevice()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1040
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->setLastConnectedDLNADevice(Landroid/hardware/display/DLNADevice;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1043
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x7

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayEventToExtendedListener(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1700(Lcom/android/server/display/WifiDisplayAdapter;II)V

    goto/16 :goto_2

    .line 1035
    :catch_0
    move-exception v10

    .line 1036
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create mActiveDLNADevice exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1045
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_10
    const/4 v1, 0x2

    if-eq v11, v1, :cond_11

    if-nez v11, :cond_3

    .line 1046
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1300(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 1047
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/DLNADevice;->isSwitchingDevice()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1050
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x7

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->sendDisplayEventToExtendedListener(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1700(Lcom/android/server/display/WifiDisplayAdapter;II)V

    .line 1052
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1602(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/DLNADevice;)Landroid/hardware/display/DLNADevice;

    .line 1053
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNAState:I
    invoke-static {v1, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$1302(Lcom/android/server/display/WifiDisplayAdapter;I)I

    goto/16 :goto_2

    .line 1055
    .end local v11    # "status":I
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.android.screensharing.LOGGING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1056
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter$13;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const-string/jumbo v2, "feature"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "extra"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->insertLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$1500(Lcom/android/server/display/WifiDisplayAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
