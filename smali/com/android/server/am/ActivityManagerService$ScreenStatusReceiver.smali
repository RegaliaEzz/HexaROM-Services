.class Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 17323
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 17327
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 17365
    :cond_0
    :goto_0
    return-void

    .line 17330
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.stk.check_screen_idle"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17331
    const-string v5, "ActivityManager"

    const-string v6, "ICC has requested idle screen status"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17332
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.stk.idle_screen"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17333
    .local v1, "idleScreenIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17334
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    .line 17335
    .local v2, "isIdle":Z
    const-string v5, "SCREEN_IDLE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17336
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Broadcasting Home idle screen Intent SCREEN_IDLE is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17338
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 17341
    .end local v1    # "idleScreenIntent":Landroid/content/Intent;
    .end local v2    # "isIdle":Z
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 17342
    const/4 v4, -0x1

    .line 17343
    .local v4, "siopLevel":I
    const/4 v0, -0x1

    .line 17344
    .local v0, "battOverheatLevel":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 17345
    .local v3, "mExtras":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 17346
    const-string v5, "check_cooldown_level"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 17347
    if-eq v4, v8, :cond_3

    .line 17348
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I
    invoke-static {v5, v4}, Lcom/android/server/am/ActivityManagerService;->access$2402(Lcom/android/server/am/ActivityManagerService;I)I

    .line 17350
    :cond_3
    const-string v5, "batt_temp_level"

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 17351
    if-eq v0, v8, :cond_4

    .line 17352
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mBatteryOverheatLevel:I
    invoke-static {v5, v0}, Lcom/android/server/am/ActivityManagerService;->access$2502(Lcom/android/server/am/ActivityManagerService;I)I

    .line 17354
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "overheat_id"

    const v7, 0x10408ba

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->access$1102(Lcom/android/server/am/ActivityManagerService;I)I

    .line 17355
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2400(Lcom/android/server/am/ActivityManagerService;)I

    move-result v5

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBatteryOverheatLevel:I
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;)I

    move-result v5

    if-eq v5, v8, :cond_6

    .line 17356
    :cond_5
    const-string v5, "check_cooldown_list"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 17357
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$2600(Lcom/android/server/am/ActivityManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 17358
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "check_cooldown_list"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mCheckSIOPLevelList:Ljava/util/HashMap;
    invoke-static {v6, v5}, Lcom/android/server/am/ActivityManagerService;->access$2602(Lcom/android/server/am/ActivityManagerService;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 17361
    :cond_6
    const-string v5, "checkingSIOP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VZWLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSIOPLevel:I
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$2400(Lcom/android/server/am/ActivityManagerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", OverheatLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$ScreenStatusReceiver;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mBatteryOverheatLevel:I
    invoke-static {v7}, Lcom/android/server/am/ActivityManagerService;->access$2500(Lcom/android/server/am/ActivityManagerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
