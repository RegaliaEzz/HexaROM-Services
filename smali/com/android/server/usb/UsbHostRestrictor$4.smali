.class Lcom/android/server/usb/UsbHostRestrictor$4;
.super Landroid/os/UEventObserver;
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
    .line 642
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    const/4 v9, 0x1

    .line 646
    const-string v6, "UsbHostRestrictor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB HOST UEVENT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v6, "ACTION"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "action":Ljava/lang/String;
    const-string v6, "DEVPATH"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 650
    .local v1, "devPath":Ljava/lang/String;
    const-string v6, "STATE"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, "state":Ljava/lang/String;
    const-string v6, "SWITCH_NAME"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "name":Ljava/lang/String;
    const-string v6, "SWITCH_STATE"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 654
    .local v5, "switchState":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 655
    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->turnOnLcd()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$700(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 657
    const-string v6, "change"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    const-string v6, "/devices/virtual/host_notify"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 659
    :try_start_0
    const-string v6, "BLOCK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 661
    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$100(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "user_setup_complete"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v9, :cond_1

    .line 662
    const-string v6, "UsbHostRestrictor"

    const-string v7, "UEventObserver SETUP WIZARD SCREEN. So skip about showing USB BLOCK Popup"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ON_ALL_SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 666
    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$900(Lcom/android/server/usb/UsbHostRestrictor;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v2

    .line 682
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v6, "UsbHostRestrictor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse state or devPath from event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ON_ALL_UPSM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 669
    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showToast()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_0

    .line 670
    :cond_3
    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mCurrentSysNodeValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ON_ALL_BOTH"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 672
    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$900(Lcom/android/server/usb/UsbHostRestrictor;)V

    .line 673
    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$4;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showToast()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$1000(Lcom/android/server/usb/UsbHostRestrictor;)V

    goto :goto_0

    .line 675
    :cond_4
    const-string v6, "UsbHostRestrictor"

    const-string v7, "USB HOST is BLOCKED by UNKNOWN. Do Nothing!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
