.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"    # Lcom/android/server/connectivity/Tethering$1;

    .prologue
    .line 1408
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 46
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1411
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1412
    .local v6, "action":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1776
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1413
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1414
    .local v13, "cr":Landroid/content/ContentResolver;
    const-string v41, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v42

    monitor-enter v42

    .line 1416
    :try_start_0
    const-string v41, "connected"

    const/16 v43, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v38

    .line 1417
    .local v38, "usbConnected":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const-string/jumbo v43, "rndis"

    const/16 v44, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    move-object/from16 v0, v41

    move/from16 v1, v43

    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1419
    if-eqz v38, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1422
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    # setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const-string/jumbo v43, "ncm"

    const/16 v44, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    move-object/from16 v0, v41

    move/from16 v1, v43

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$702(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1425
    if-eqz v38, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_3

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v43

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;Z)V

    .line 1428
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1430
    monitor-exit v42

    goto/16 :goto_0

    .end local v38    # "usbConnected":Z
    :catchall_0
    move-exception v41

    monitor-exit v42
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v41

    .line 1431
    :cond_4
    const-string v41, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5

    .line 1432
    const-string/jumbo v41, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    check-cast v26, Landroid/net/NetworkInfo;

    .line 1434
    .local v26, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v41

    sget-object v42, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    if-eq v0, v1, :cond_0

    .line 1436
    const-string v41, "Tethering"

    const-string v42, "Tethering got CONNECTIVITY_ACTION"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v41

    const/16 v42, 0x3

    move-object/from16 v0, v41

    move/from16 v1, v42

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1439
    .end local v26    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string v41, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_0

    .line 1441
    :cond_6
    const-string v41, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)I

    move-result v42

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1445
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_8

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)I

    move-result v42

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1448
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;)I

    move-result v42

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1452
    :cond_9
    const-string v41, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-nez v41, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_13

    :cond_a
    # getter for: Lcom/android/server/connectivity/Tethering;->mRVFMode:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v41

    if-nez v41, :cond_13

    .line 1454
    const-string v41, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1455
    .local v37, "type":Ljava/lang/String;
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    if-eqz v37, :cond_0

    .line 1457
    const-string v41, "NUM"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 1458
    .local v27, "numExtra":I
    if-gez v27, :cond_b

    const/16 v27, 0x0

    .line 1459
    :cond_b
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    move/from16 v0, v41

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    .line 1461
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mLastClients:I
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2002(I)I

    .line 1462
    # setter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/connectivity/Tethering;->access$1902(I)I

    .line 1463
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "**number of client: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->add_client_event:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$2102(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1468
    const-string v41, "VZW"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "statusbar"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/StatusBarManager;

    .line 1470
    .local v36, "statusBar":Landroid/app/StatusBarManager;
    const/16 v19, 0x0

    .line 1471
    .local v19, "iconId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "wifi"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/net/wifi/WifiManager;

    .line 1472
    .local v40, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v41

    if-eqz v41, :cond_d

    .line 1473
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    sget-object v42, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_c

    .line 1474
    sget-object v41, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget-object v42, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x1

    aget v19, v41, v42

    .line 1478
    :goto_1
    const-string/jumbo v41, "wifi_ap"

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v19

    move/from16 v3, v42

    move-object/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1479
    const-string/jumbo v41, "wifi_ap"

    const/16 v42, 0x1

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const v42, 0x10807e1

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1476
    :cond_c
    sget-object v41, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v42

    aget v19, v41, v42

    goto :goto_1

    .line 1482
    :cond_d
    const-string v41, "Tethering"

    const-string v42, "Wifi Ap is not enabled."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    const-string/jumbo v41, "wifi_ap"

    const/16 v42, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1484
    const-string/jumbo v41, "wifi_ap"

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1486
    .end local v19    # "iconId":I
    .end local v36    # "statusBar":Landroid/app/StatusBarManager;
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :cond_e
    const-string v41, "SPRINT"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_f

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const v42, 0x10807e0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1488
    :cond_f
    const-string v41, "TMO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_10

    const-string v41, "NEWCO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 1490
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const v42, 0x10807dd

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    .line 1494
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const v42, 0x10807df

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    .line 1496
    const-string v41, "ATT"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_0

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v41

    if-nez v41, :cond_0

    .line 1497
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "createMaxApNotification(), clients = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    # getter for: Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v42

    move/from16 v0, v41

    move/from16 v1, v42

    if-lt v0, v1, :cond_12

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->createMaxApNotification()V

    goto/16 :goto_0

    .line 1501
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    .line 1506
    .end local v27    # "numExtra":I
    .end local v37    # "type":Ljava/lang/String;
    :cond_13
    const-string v41, "ATT"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_14

    const-string v41, "com.samsung.android.net.wifi.MAXAP_NOTI"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_14

    .line 1507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    .line 1508
    :cond_14
    const-string v41, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_15

    .line 1509
    const-string/jumbo v41, "wifi_state"

    const/16 v42, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1510
    .local v9, "apState":I
    packed-switch v9, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    .line 1521
    :pswitch_2
    const-string v41, "ATT"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_0

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v41

    if-nez v41, :cond_0

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    .line 1526
    .end local v9    # "apState":I
    :cond_15
    const-string v41, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1d

    .line 1527
    const-string/jumbo v41, "wifiap_power_mode_alarm_option"

    const/16 v42, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 1528
    .local v28, "option":I
    if-nez v28, :cond_19

    .line 1531
    :try_start_1
    const-string/jumbo v41, "wifi_ap_plugged_type"

    move-object/from16 v0, v41

    invoke-static {v13, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v30

    .line 1535
    .local v30, "pluggedType":I
    :goto_2
    const-string v41, "TMO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_16

    if-nez v30, :cond_0

    .line 1536
    :cond_16
    const-string/jumbo v41, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2300()I

    move-result v42

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1537
    .local v32, "powermode_value":I
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "ALARM_START : set "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " sec"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    if-eqz v32, :cond_17

    .line 1539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move/from16 v0, v32

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v44, v0

    add-long v16, v42, v44

    .line 1541
    .local v16, "expireTime":J
    new-instance v7, Landroid/content/Intent;

    const-string v41, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v41

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1542
    .local v7, "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v41, "wifiap_power_mode_alarm_option"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    const/high16 v43, 0x10000000

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 1545
    .local v29, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "alarm"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1546
    .local v8, "am":Landroid/app/AlarmManager;
    const/16 v41, 0x0

    move/from16 v0, v41

    move-wide/from16 v1, v16

    move-object/from16 v3, v29

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1548
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    .line 1549
    const/16 v41, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2502(Z)Z

    goto/16 :goto_0

    .line 1532
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v16    # "expireTime":J
    .end local v29    # "pending":Landroid/app/PendingIntent;
    .end local v30    # "pluggedType":I
    .end local v32    # "powermode_value":I
    :catch_0
    move-exception v14

    .line 1533
    .local v14, "e":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v30, 0x0

    .restart local v30    # "pluggedType":I
    goto/16 :goto_2

    .line 1551
    .end local v14    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v32    # "powermode_value":I
    :cond_17
    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Z

    move-result v41

    if-eqz v41, :cond_18

    .line 1552
    new-instance v7, Landroid/content/Intent;

    const-string v41, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v41

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1553
    .restart local v7    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v41, "wifiap_power_mode_alarm_option"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    const/high16 v43, 0x10000000

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 1556
    .restart local v29    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "alarm"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1557
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1559
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v29    # "pending":Landroid/app/PendingIntent;
    :cond_18
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2502(Z)Z

    goto/16 :goto_0

    .line 1562
    .end local v30    # "pluggedType":I
    .end local v32    # "powermode_value":I
    :cond_19
    const/16 v41, 0x4

    move/from16 v0, v28

    move/from16 v1, v41

    if-ne v0, v1, :cond_1a

    .line 1563
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "WIFIAP_POWER_MODE_VALUE_CHANGED, clients = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    if-nez v41, :cond_0

    .line 1565
    const-string v41, "Tethering"

    const-string v42, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v42, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v42 .. v42}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v42

    const/16 v43, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering;->sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V
    invoke-static/range {v41 .. v43}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1568
    :cond_1a
    const/16 v41, 0x1

    move/from16 v0, v28

    move/from16 v1, v41

    if-ne v0, v1, :cond_1c

    .line 1569
    const-string v41, "Tethering"

    const-string v42, "ALARM_EXPIRE"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/16 v41, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    .line 1571
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2502(Z)Z

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "power"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/PowerManager;

    .line 1575
    .local v31, "pm":Landroid/os/PowerManager;
    const/16 v41, 0x1

    const-string v42, "MobileAPCloseService"

    move-object/from16 v0, v31

    move/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v25

    .line 1577
    .local v25, "mStopService":Landroid/os/PowerManager$WakeLock;
    :try_start_2
    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1582
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "wifi"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/net/wifi/WifiManager;

    .line 1584
    .restart local v40    # "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v39

    .line 1585
    .local v39, "wifiApState":I
    const-string/jumbo v41, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2300()I

    move-result v42

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v32

    .line 1586
    .restart local v32    # "powermode_value":I
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "powermode_value = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1900()I

    move-result v41

    if-nez v41, :cond_1b

    const/16 v41, 0xd

    move/from16 v0, v39

    move/from16 v1, v41

    if-ne v0, v1, :cond_1b

    if-eqz v32, :cond_1b

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "connectivity"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/ConnectivityManager;

    .line 1589
    .local v23, "mCm":Landroid/net/ConnectivityManager;
    const-string v41, "Tethering"

    const-string v42, "--> data disable"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    const-string v41, "Tethering"

    const-string v42, "--> ap disable"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1595
    .end local v23    # "mCm":Landroid/net/ConnectivityManager;
    :cond_1b
    if-eqz v25, :cond_0

    .line 1597
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1598
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1578
    .end local v32    # "powermode_value":I
    .end local v39    # "wifiApState":I
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v14

    .line 1579
    .local v14, "e":Ljava/lang/Throwable;
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1599
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v32    # "powermode_value":I
    .restart local v39    # "wifiApState":I
    .restart local v40    # "wm":Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v14

    .line 1600
    .restart local v14    # "e":Ljava/lang/Throwable;
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Cannot release wake lock ~~"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1603
    .end local v14    # "e":Ljava/lang/Throwable;
    .end local v25    # "mStopService":Landroid/os/PowerManager$WakeLock;
    .end local v31    # "pm":Landroid/os/PowerManager;
    .end local v32    # "powermode_value":I
    .end local v39    # "wifiApState":I
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1c
    const/16 v41, 0x2

    move/from16 v0, v28

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 1604
    const-string v41, "Tethering"

    const-string v42, "ALARM_STOP"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    # getter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v41

    if-nez v41, :cond_0

    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2500()Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1606
    new-instance v7, Landroid/content/Intent;

    const-string v41, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v41

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1607
    .restart local v7    # "alarm_intent":Landroid/content/Intent;
    const-string/jumbo v41, "wifiap_power_mode_alarm_option"

    const/16 v42, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const/16 v42, 0x0

    const/high16 v43, 0x10000000

    move-object/from16 v0, v41

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 1609
    .restart local v29    # "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string v42, "alarm"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 1610
    .restart local v8    # "am":Landroid/app/AlarmManager;
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1611
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2502(Z)Z

    goto/16 :goto_0

    .line 1614
    .end local v7    # "alarm_intent":Landroid/content/Intent;
    .end local v8    # "am":Landroid/app/AlarmManager;
    .end local v28    # "option":I
    .end local v29    # "pending":Landroid/app/PendingIntent;
    :cond_1d
    const-string v41, "android.net.wifi.wifiap_stand_by_mode_start"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1e

    .line 1615
    const-string v41, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 1616
    .restart local v37    # "type":Ljava/lang/String;
    if-eqz v37, :cond_0

    .line 1617
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[WIFI] onReceive() WIFIAP_STAND_BY_MODE_START intent, type of EVENT: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    const-string/jumbo v41, "no_data"

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "wifi"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/net/wifi/WifiManager;

    .line 1620
    .restart local v40    # "wm":Landroid/net/wifi/WifiManager;
    const-string v41, "Tethering"

    const-string v42, "--> ap disable"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 1624
    .end local v37    # "type":Ljava/lang/String;
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1e
    const-string v41, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_27

    .line 1625
    const-string v41, "TMO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_1f

    const-string v41, "NEWCO"

    sget-object v42, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1627
    :cond_1f
    const-string/jumbo v41, "level"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1628
    .local v24, "mLevel":I
    const-string/jumbo v41, "plugged"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 1629
    .restart local v30    # "pluggedType":I
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "BATTERY_CHANGED, level = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "lowBatteryThreshold = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const/16 v43, 0xf

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-nez v41, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_25

    :cond_20
    const/16 v41, 0xf

    move/from16 v0, v24

    move/from16 v1, v41

    if-gt v0, v1, :cond_25

    if-nez v30, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v41

    if-nez v41, :cond_25

    .line 1632
    const-string v41, "Tethering"

    const-string/jumbo v42, "showLowBatteryNotification"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)V

    .line 1641
    :cond_21
    :goto_4
    if-nez v30, :cond_22

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3000()Z

    move-result v41

    if-nez v41, :cond_23

    :cond_22
    if-eqz v30, :cond_0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$3000()Z

    move-result v41

    if-nez v41, :cond_0

    .line 1642
    :cond_23
    const-string/jumbo v41, "wifi_ap_plugged_type"

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1643
    new-instance v15, Landroid/content/Intent;

    const-string v41, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1644
    .local v15, "i":Landroid/content/Intent;
    const-string/jumbo v41, "wifiap_plug_state_changed_option"

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_24

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1648
    :cond_24
    if-nez v30, :cond_26

    .line 1649
    const-string v41, "Tethering"

    const-string v42, "Unplugged"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const/16 v41, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3002(Z)Z

    goto/16 :goto_0

    .line 1635
    .end local v15    # "i":Landroid/content/Intent;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v41

    if-eqz v41, :cond_21

    .line 1636
    const-string v41, "Tethering"

    const-string v42, "clearLowBatteryNotification"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2900(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_4

    .line 1665
    .restart local v15    # "i":Landroid/content/Intent;
    :cond_26
    const-string v41, "Tethering"

    const-string v42, "Plugged"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const/16 v41, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3002(Z)Z

    goto/16 :goto_0

    .line 1679
    .end local v15    # "i":Landroid/content/Intent;
    .end local v24    # "mLevel":I
    .end local v30    # "pluggedType":I
    :cond_27
    const-string v41, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2a

    .line 1680
    const-string v41, "Tethering"

    const-string v42, "Boot complete."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3102(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v41

    if-nez v41, :cond_28

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v42

    # setter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->access$3202(Lcom/android/server/connectivity/Tethering;Landroid/app/enterprise/knoxcustom/SystemManager;)Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 1688
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v41

    if-eqz v41, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetState()Z

    move-result v41

    if-eqz v41, :cond_29

    const-string v41, "adb_enabled"

    const/16 v42, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v41

    if-nez v41, :cond_29

    .line 1692
    const-string v41, "Tethering"

    const-string v42, "Activate USB Net on boot up"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    .line 1697
    :cond_29
    const-string/jumbo v41, "enabled"

    const-string v42, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v42

    invoke-static {v13, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1698
    const-string v41, "Tethering"

    const-string v42, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const-string/jumbo v41, "net.tether.always"

    const-string v42, "1"

    invoke-static/range {v41 .. v42}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    .line 1715
    :cond_2a
    const-string v41, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2d

    .line 1716
    const-string v41, "Tethering"

    const-string v42, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Z

    move-result v41

    if-eqz v41, :cond_2c

    .line 1719
    const-string v41, "Tethering"

    const-string v42, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    const-string/jumbo v41, "network_management"

    invoke-static/range {v41 .. v41}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 1722
    .local v11, "b":Landroid/os/IBinder;
    invoke-static {v11}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v34

    .line 1723
    .local v34, "service":Landroid/os/INetworkManagementService;
    const/16 v41, 0x0

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1726
    .local v21, "ifaces":[Ljava/lang/String;
    :try_start_4
    invoke-interface/range {v34 .. v34}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v21

    .line 1732
    move-object/from16 v10, v21

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v20, v10, v18

    .line 1733
    .local v20, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2b

    .line 1734
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 1737
    .local v35, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v35, :cond_2b

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v41

    if-eqz v41, :cond_2b

    .line 1738
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3600(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    .line 1732
    .end local v35    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_2b
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 1727
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v18    # "i$":I
    .end local v20    # "iface":Ljava/lang/String;
    .end local v22    # "len$":I
    :catch_3
    move-exception v14

    .line 1728
    .local v14, "e":Ljava/lang/Exception;
    const-string v41, "Tethering"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1744
    .end local v11    # "b":Landroid/os/IBinder;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v21    # "ifaces":[Ljava/lang/String;
    .end local v34    # "service":Landroid/os/INetworkManagementService;
    :cond_2c
    const-string v41, "Tethering"

    const-string v42, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1747
    :cond_2d
    const-string v41, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfigNetworkTypeCapability:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v41

    if-eqz v41, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mConfigNetworkTypeCapability:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$3700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "KDI"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_0

    .line 1749
    const-string v41, "Tethering"

    const-string v42, "Tethering Denied"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v21

    .line 1751
    .restart local v21    # "ifaces":[Ljava/lang/String;
    move-object/from16 v10, v21

    .restart local v10    # "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v18, 0x0

    .restart local v18    # "i$":I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v20, v10, v18

    .line 1752
    .restart local v20    # "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_2f

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v41

    const-string/jumbo v42, "wifi"

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/net/wifi/WifiManager;

    .line 1754
    .restart local v40    # "wm":Landroid/net/wifi/WifiManager;
    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1751
    .end local v40    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2e
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1755
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_32

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v41

    if-eqz v41, :cond_31

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v41 .. v41}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/bluetooth/BluetoothPan;

    .line 1758
    .local v12, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v12, :cond_30

    .line 1759
    const-string v41, "Tethering"

    const-string/jumbo v42, "setBluetoothTethering"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/16 v41, 0x0

    move/from16 v0, v41

    invoke-virtual {v12, v0}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_7

    .line 1762
    :cond_30
    const-string v41, "Tethering"

    const-string v42, "bluetoothPan is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1765
    .end local v12    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :cond_31
    const-string v41, "Tethering"

    const-string/jumbo v42, "mBluetoothPan is null"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1768
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v33

    .line 1769
    .local v33, "result":I
    if-eqz v33, :cond_2e

    .line 1770
    const-string v41, "Tethering"

    const-string v42, "Tether off error"

    invoke-static/range {v41 .. v42}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1510
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
