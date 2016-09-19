.class Lcom/android/server/usb/UsbHostRestrictor$3;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 321
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUPSMReceiver onReceive"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "mCurrentFunction":Ljava/lang/String;
    const-string v3, "UsbHostRestrictor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUPSMReceiver Check currnet USB Mode ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    const-string/jumbo v3, "reason"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 333
    .local v2, "reason":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 334
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUPSMReceiver Ultra Power Saving Mode is ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 337
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUPSMReceiver set USB BLOCK as ON_ALL_UPSM"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v4, "ON_ALL_UPSM"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 384
    .end local v2    # "reason":I
    :cond_0
    :goto_0
    return-void

    .line 343
    .restart local v2    # "reason":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON_ALL_SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUPSMReceiver set USB BLOCK as ON_ALL_BOTH"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v4, "ON_ALL_BOTH"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    .line 348
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON_ALL_UPSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON_ALL_BOTH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    :cond_3
    const-string v3, "UsbHostRestrictor"

    const-string v4, "UPSM Receiver USB is already DISABLED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    const-string v3, "UsbHostRestrictor"

    const-string v4, "UPSM Receiver Cannot write for USB DISABLE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :cond_5
    const/4 v3, 0x5

    if-ne v2, v3, :cond_a

    .line 356
    const-string v3, "UsbHostRestrictor"

    const-string/jumbo v4, "mUPSMReceiver Ultra Power Saving Mode is OFF."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 359
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON_ALL_UPSM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 361
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v4, "OFF"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    goto/16 :goto_0

    .line 366
    :cond_6
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON_ALL_BOTH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 368
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/usb/UsbDeviceManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    .line 370
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v4, "ON_ALL_SIM"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :cond_7
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "OFF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ON_ALL_SIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 372
    :cond_8
    const-string v3, "UsbHostRestrictor"

    const-string v4, "UPSM Receiver USB is already ENABLED"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 374
    :cond_9
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 375
    const-string v3, "UsbHostRestrictor"

    const-string v4, "UPSM Receiver Cannot write for USB ENABLE"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 379
    :cond_a
    const-string v3, "UsbHostRestrictor"

    const-string v4, "UPSM state is unknown."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
