.class Lcom/android/server/am/MARsTrigger$2;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MARS_GCM_LOCKER_POLICY_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MARS_GCM_LOCKER_REPEAT_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/server/am/MARsTrigger;->access$1600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v1, v4, v5}, Lcom/android/server/am/MARsTrigger;->access$1700(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v4, "MARS_GCM_LOCKER_REPEAT_ALARM"

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mGcmLockerRepeatAlarmInterval:J
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$1800(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v6

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v1, v4, v6, v7}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    const-string v1, "com.android.server.am.ACTION_MEMROY_NOT_ENOUGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.server.am.ACTION_ADJ14BG_KILLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 316
    .local v2, "currentTime":J
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mLastSPCMWorkingTime:J
    invoke-static {v1}, Lcom/android/server/am/MARsTrigger;->access$1900(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7530

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/server/am/MARsTrigger;->mLastSPCMWorkingTime:J
    invoke-static {v1, v4, v5}, Lcom/android/server/am/MARsTrigger;->access$1902(Lcom/android/server/am/MARsTrigger;J)J

    .line 318
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/server/am/MARsTrigger;->access$1600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v1, v4, v5}, Lcom/android/server/am/MARsTrigger;->access$1700(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v2    # "currentTime":J
    :cond_4
    const-string v1, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.android.server.am.ACTION_SMUI_SETTING_TRUN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/am/MARsTrigger;->access$1600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v1, v5, v4}, Lcom/android/server/am/MARsTrigger;->access$1700(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_6
    const-string v1, "MARS_APP_LOCKER_POLICY_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "MARS_APP_LOCKER_REPEAT_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 329
    :cond_7
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/am/MARsTrigger;->access$1600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v1, v5, v4}, Lcom/android/server/am/MARsTrigger;->access$1700(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v4, "MARS_APP_LOCKER_REPEAT_ALARM"

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAppLockerRepeatAlarmInterval:J
    invoke-static {v5}, Lcom/android/server/am/MARsTrigger;->access$2000(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v6

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v1, v4, v6, v7}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 333
    :cond_8
    const-string v1, "com.android.server.am.ACTION_UI_SET_AUTORUN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 334
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/am/MARsTrigger;->access$1600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v1, v6, v4}, Lcom/android/server/am/MARsTrigger;->access$1700(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :cond_9
    const-string v1, "MARS_AUTO_RUN_POLICY_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "MARS_AUTO_RUN_REPEAT_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 338
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v4, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # invokes: Lcom/android/server/am/MARsTrigger;->actionToString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/am/MARsTrigger;->access$1600(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/am/MARsTrigger;->triggerPolicy(ILjava/lang/String;)V
    invoke-static {v1, v6, v4}, Lcom/android/server/am/MARsTrigger;->access$1700(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    new-instance v4, Lcom/android/server/am/MARsTrigger$2$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/MARsTrigger$2$1;-><init>(Lcom/android/server/am/MARsTrigger$2;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 355
    :cond_b
    const-string v1, "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 356
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    .line 357
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v4, "MARS_AUTO_RUN_POLICY_ALARM"

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v6, v5, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v1, v4, v6, v7}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 359
    :cond_c
    const-string v1, "MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 360
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    .line 361
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v4, "MARS_AUTO_RUN_REPEAT_ALARM"

    iget-object v5, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v6, v5, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v1, v4, v6, v7}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 363
    :cond_d
    const-string v1, "android.intent.action.SET_RUNNING_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1, p2}, Lcom/android/server/am/MARsPolicyManager;->updateRunningLocationPackages(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
