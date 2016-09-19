.class Lcom/android/server/display/WifiDisplayController$29;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$flags:I

.field final synthetic val$height:I

.field final synthetic val$oldDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$oldDisplayHeight:I

.field final synthetic val$oldDisplayWidth:I

.field final synthetic val$oldSurface:Landroid/view/Surface;

.field final synthetic val$requestPendingSetup:Z

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;IIZIII)V
    .locals 0

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldSurface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController$29;->val$surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayController$29;->val$display:Landroid/hardware/display/WifiDisplay;

    iput p6, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplayWidth:I

    iput p7, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplayHeight:I

    iput-boolean p8, p0, Lcom/android/server/display/WifiDisplayController$29;->val$requestPendingSetup:Z

    iput p9, p0, Lcom/android/server/display/WifiDisplayController$29;->val$width:I

    iput p10, p0, Lcom/android/server/display/WifiDisplayController$29;->val$height:I

    iput p11, p0, Lcom/android/server/display/WifiDisplayController$29;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2336
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$29;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplayWidth:I

    if-ne v0, v3, :cond_8

    iget v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplayHeight:I

    if-ne v0, v3, :cond_8

    .line 2338
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayDisconnected()V

    .line 2358
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # setter for: Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z
    invoke-static {v0, v4}, Lcom/android/server/display/WifiDisplayController;->access$5302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2361
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$display:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_7

    .line 2362
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2364
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$29;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnecting(Landroid/hardware/display/WifiDisplay;I)V

    .line 2372
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$surface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$surface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$requestPendingSetup:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$width:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$height:I

    if-ne v0, v3, :cond_6

    .line 2375
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$29;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$29;->val$surface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController$29;->val$width:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController$29;->val$height:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController$29;->val$flags:I

    invoke-interface/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 2378
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mHDMIConnected:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$2800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2379
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    const v1, 0x22074

    # invokes: Lcom/android/server/display/WifiDisplayController;->requestPopup(I)V
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;I)V

    .line 2383
    :cond_7
    return-void

    .line 2339
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$29;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2342
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_9

    .line 2344
    const-string v0, "WifiDisplayController"

    const-string v1, "connected by change player or nfc, disable wifi_display_on"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_display_on"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2349
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mDisconnectByUser:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2350
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$200(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WFD_BROKER_CONNECTION_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2354
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    goto/16 :goto_0

    .line 2367
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$29;->val$oldDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2370
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$29;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayChanged(Landroid/hardware/display/WifiDisplay;)V

    goto/16 :goto_1
.end method
