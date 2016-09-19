.class Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 364
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    const/4 v2, 0x0

    .line 369
    .local v2, "speakerOn":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "deviceSpeakerEnabledState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 374
    :goto_0
    if-eqz v2, :cond_0

    .line 375
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # getter for: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 376
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    .line 379
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 381
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V
    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$200(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    .line 382
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    invoke-virtual {v3, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    .line 390
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V
    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$300(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    .line 392
    .end local v2    # "speakerOn":Z
    :cond_2
    return-void

    .line 370
    .restart local v2    # "speakerOn":Z
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSpeaker failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;->this$0:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    # invokes: Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V
    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->access$200(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    goto :goto_1
.end method
