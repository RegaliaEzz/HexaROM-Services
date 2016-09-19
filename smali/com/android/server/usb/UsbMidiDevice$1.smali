.class Lcom/android/server/usb/UsbMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 7
    .param p1, "server"    # Landroid/media/midi/MidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 80
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v3

    .line 81
    .local v3, "inputPorts":I
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v4

    .line 82
    .local v4, "outputPorts":I
    const/4 v1, 0x0

    .line 84
    .local v1, "hasOpenPorts":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 85
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    const/4 v1, 0x1

    .line 91
    :cond_0
    if-nez v1, :cond_1

    .line 92
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 93
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v5

    if-lez v5, :cond_4

    .line 94
    const/4 v1, 0x1

    .line 100
    :cond_1
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 101
    if-eqz v1, :cond_5

    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 102
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # invokes: Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$200(Lcom/android/server/usb/UsbMidiDevice;)Z

    .line 106
    :cond_2
    :goto_2
    monitor-exit v6

    .line 107
    return-void

    .line 84
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_5
    if-nez v1, :cond_2

    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice$1;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # invokes: Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V
    invoke-static {v5}, Lcom/android/server/usb/UsbMidiDevice;->access$300(Lcom/android/server/usb/UsbMidiDevice;)V

    goto :goto_2

    .line 106
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
