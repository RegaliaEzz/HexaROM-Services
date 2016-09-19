.class Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;
.super Landroid/os/Handler;
.source "KiesUsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/KiesConnectivity/KiesUsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KiesUsbManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;


# direct methods
.method constructor <init>(Lcom/android/server/KiesConnectivity/KiesUsbManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    .line 342
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 347
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 350
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setCDFSInsert()V
    invoke-static {v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$300(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    .line 351
    const-string v1, "KiesUsbManager"

    const-string v2, "KiesUsbManagerHandler -> UsbMode.online"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    const-string v1, "KiesUsbManager"

    const-string v2, "KiesUsbManagerHandler -> UsbMode.offline"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentChargingMode()V
    invoke-static {v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$400(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V

    goto :goto_0

    .line 393
    :sswitch_3
    const-string v1, "KiesUsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isTwiceReset"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sget-boolean v3, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "isbootcomplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sget-boolean v3, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isTwiceReset:Z

    .line 395
    # getter for: Lcom/android/server/KiesConnectivity/KiesUsbManager;->kiesusbobserver:Lcom/android/server/KiesConnectivity/KiesUsbObserver;
    invoke-static {}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$100()Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    sget-boolean v1, Lcom/android/server/KiesConnectivity/KiesUsbObserver;->isbootcomplete:Z

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/server/KiesConnectivity/KiesUsbManager$KiesUsbManagerHandler;->this$0:Lcom/android/server/KiesConnectivity/KiesUsbManager;

    # invokes: Lcom/android/server/KiesConnectivity/KiesUsbManager;->setUsbCurrentSettingMode()V
    invoke-static {v1}, Lcom/android/server/KiesConnectivity/KiesUsbManager;->access$200(Lcom/android/server/KiesConnectivity/KiesUsbManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 347
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x1f40 -> :sswitch_2
        0x2328 -> :sswitch_3
    .end sparse-switch
.end method
