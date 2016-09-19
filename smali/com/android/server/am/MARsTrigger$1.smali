.class Lcom/android/server/am/MARsTrigger$1;
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
    .line 207
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "action":Ljava/lang/String;
    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    sget-object v14, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 214
    :cond_1
    const-string v14, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 219
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 220
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v15, "MARS_GCM_LOCKER_POLICY_ALARM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/am/MARsTrigger;->mGcmLockerPolicyInterval:J
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/MARsTrigger;->access$000(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v16

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static/range {v14 .. v17}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    .line 223
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 224
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v15, "MARS_APP_LOCKER_POLICY_ALARM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/MARsTrigger;->access$200(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v16

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static/range {v14 .. v17}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    .line 227
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v14, v14, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    iget-boolean v14, v14, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v14, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mTriggerAutoRunPolicyImmediately:Z
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$300(Lcom/android/server/am/MARsTrigger;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    .line 232
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v15, "MARS_AUTO_RUN_POLICY_ALARM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    move-wide/from16 v16, v0

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static/range {v14 .. v17}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    .line 300
    :cond_5
    :goto_1
    return-void

    .line 216
    :cond_6
    sget-object v14, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto/16 :goto_0

    .line 234
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v15, "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/MARsTrigger;->access$400(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static/range {v14 .. v17}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto :goto_1

    .line 238
    :cond_8
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    sget-object v14, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 240
    :cond_9
    const-string v14, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 241
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 245
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_b

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/am/MARsTrigger;->access$500(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 247
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$700(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsGCMLockerRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/am/MARsTrigger;->access$700(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 251
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v15, 0x0

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$800(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAppLockerPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/am/MARsTrigger;->access$800(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 256
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$900(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_e

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAppLockerRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/am/MARsTrigger;->access$900(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 259
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$1000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/am/MARsTrigger;->access$1000(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 262
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$1100(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_10

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/am/MARsTrigger;->access$1100(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 265
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$1200(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_11

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunPolicyTrafficStatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/am/MARsTrigger;->access$1200(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 268
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAlarm:Landroid/app/AlarmManager;
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$600(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mMARsAutoRunTrafficStatRepeatAlarmIntent:Landroid/app/PendingIntent;
    invoke-static {v15}, Lcom/android/server/am/MARsTrigger;->access$1300(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 242
    :cond_12
    sget-object v14, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto/16 :goto_2

    .line 271
    :cond_13
    const-string v14, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 274
    .local v3, "extras":Landroid/os/Bundle;
    const/4 v12, 0x0

    .line 275
    .local v12, "onUpgrade":Z
    if-eqz v3, :cond_14

    .line 276
    const-string v14, "MARS_EXTRA"

    const-string v15, ""

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 277
    .local v13, "tmp":Ljava/lang/String;
    const-string/jumbo v14, "update"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 278
    const/4 v12, 0x1

    .line 281
    .end local v13    # "tmp":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v14, v14, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v14, v12}, Lcom/android/server/am/MARsDBManager;->requestFillInDB(Z)V

    goto/16 :goto_1

    .line 283
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v12    # "onUpgrade":Z
    :cond_15
    const-string v14, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPolicyManager;->setDataConnectionConnected()V

    goto/16 :goto_1

    .line 286
    :cond_16
    const-string v14, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 288
    .local v10, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 290
    .local v8, "nowELAPSED":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J
    invoke-static {v14}, Lcom/android/server/am/MARsTrigger;->access$1400(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/MARsTrigger;->access$1500(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v16

    sub-long v16, v8, v16

    add-long v6, v14, v16

    .line 293
    .local v6, "expectedClockTime":J
    sub-long v4, v10, v6

    .line 295
    .local v4, "changedTime":J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v14, v14, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v14, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->updateDBResetTimeForTimeChanged(J)V

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # setter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeClockTime:J
    invoke-static {v14, v10, v11}, Lcom/android/server/am/MARsTrigger;->access$1402(Lcom/android/server/am/MARsTrigger;J)J

    .line 298
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    # setter for: Lcom/android/server/am/MARsTrigger;->mLastTimeChangeRealtime:J
    invoke-static {v14, v8, v9}, Lcom/android/server/am/MARsTrigger;->access$1502(Lcom/android/server/am/MARsTrigger;J)J

    goto/16 :goto_1
.end method
