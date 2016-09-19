.class Lcom/android/server/audio/AudioService$5;
.super Landroid/os/UEventObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    .prologue
    .line 9348
    iput-object p1, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/16 v1, 0x67

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9351
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$6200(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9380
    :cond_0
    :goto_0
    return-void

    .line 9354
    :cond_1
    const-string v0, "USB_CONNECTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9355
    .local v7, "USB_CONNECTION":Ljava/lang/String;
    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUEvent(device) :: USB_CONNECTION = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9356
    const-string v0, "READY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9357
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isUSBCheckStreamActive()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->isInCommunication()Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15500(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mFakeState:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUSBDetected:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9358
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getCurOutDevice()I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 9359
    const-string v0, "AudioService"

    const-string v4, "### set usb check device"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9360
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mFakeState:Z
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;Z)Z

    .line 9361
    const-string v0, ""

    const-string v4, ""

    invoke-static {v6, v2, v0, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 9362
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0xdac

    move v4, v3

    # invokes: Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 9365
    :cond_2
    const-string v0, "CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9366
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mFakeState:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$8400(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9367
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 9368
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mFakeState:Z
    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$8402(Lcom/android/server/audio/AudioService;Z)Z

    .line 9369
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->getCurOutDevice()I
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$5400(Lcom/android/server/audio/AudioService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 9370
    const-string v0, "AudioService"

    const-string v1, "### release usb check device"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9371
    const-string v0, ""

    const-string v1, ""

    invoke-static {v6, v3, v0, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 9375
    :cond_4
    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mUSBDetected:Z
    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$15600(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mUSBDetected:Z
    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->access$15602(Lcom/android/server/audio/AudioService;Z)Z

    .line 9376
    :cond_5
    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$5;->this$0:Lcom/android/server/audio/AudioService;

    # setter for: Lcom/android/server/audio/AudioService;->mUSBDetected:Z
    invoke-static {v0, v3}, Lcom/android/server/audio/AudioService;->access$15602(Lcom/android/server/audio/AudioService;Z)Z

    goto/16 :goto_0

    .line 9378
    :cond_6
    const-string v0, "AudioService"

    const-string v1, "Other USB event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
