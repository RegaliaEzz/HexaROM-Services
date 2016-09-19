.class Lcom/android/server/usb/UsbHostRestrictor$2;
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
    .line 267
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Subscription Receiver onReceive"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$100(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    .line 285
    .local v1, "cardCount":I
    if-lez v1, :cond_0

    .line 286
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Subscription Receiver NEW SIM CARD is recognized properly."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    if-lez v1, :cond_5

    .line 293
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ON_ALL_SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v3, "OFF"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/usb/UsbDeviceManager;->updateUsbNotificationRefresh()V

    .line 315
    .end local v1    # "cardCount":I
    :cond_1
    :goto_0
    return-void

    .line 298
    .restart local v1    # "cardCount":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ON_ALL_BOTH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    const-string v2, "UsbHostRestrictor"

    const-string v3, "USB is blocked by both. Unblock by SIM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v3, "ON_ALL_UPSM"

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbHostRestrictor;->access$400(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # getter for: Lcom/android/server/usb/UsbHostRestrictor;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object v2

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_3
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$300(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Subscription Receiver USB is already UNBLOCKED"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_4
    iget-object v2, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z
    invoke-static {v2}, Lcom/android/server/usb/UsbHostRestrictor;->access$200(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Subscription Receiver Cannot write for USB DISABLE"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :cond_5
    const-string v2, "UsbHostRestrictor"

    const-string v3, "Subscription Receiver SIM is not recognized properly. Needs to check the SIM CARD"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
