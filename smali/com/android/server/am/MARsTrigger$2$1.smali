.class Lcom/android/server/am/MARsTrigger$2$1;
.super Ljava/lang/Object;
.source "MARsTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsTrigger$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MARsTrigger$2;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger$2;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$2$1;->this$1:Lcom/android/server/am/MARsTrigger$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2$1;->this$1:Lcom/android/server/am/MARsTrigger$2;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getAppUsedRecentlyState()Z

    move-result v0

    .line 346
    .local v0, "appUsedRecently":Z
    if-eqz v0, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2$1;->this$1:Lcom/android/server/am/MARsTrigger$2;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v2, "MARS_AUTO_RUN_POLICY_TRAFFIC_STAT_ALARM"

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$2$1;->this$1:Lcom/android/server/am/MARsTrigger$2;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J
    invoke-static {v3}, Lcom/android/server/am/MARsTrigger;->access$400(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$2$1;->this$1:Lcom/android/server/am/MARsTrigger$2;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v6, v3, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    sub-long/2addr v4, v6

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2$1;->this$1:Lcom/android/server/am/MARsTrigger$2;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->setAppUsedRecentlyState(Z)V

    .line 352
    return-void

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MARsTrigger$2$1;->this$1:Lcom/android/server/am/MARsTrigger$2;

    iget-object v1, v1, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string v2, "MARS_AUTO_RUN_TRAFFIC_STAT_REPEAT_ALARM"

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$2$1;->this$1:Lcom/android/server/am/MARsTrigger$2;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    # getter for: Lcom/android/server/am/MARsTrigger;->mAutoRunRepeatAlarmInterval:J
    invoke-static {v3}, Lcom/android/server/am/MARsTrigger;->access$2100(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/android/server/am/MARsTrigger$2$1;->this$1:Lcom/android/server/am/MARsTrigger$2;

    iget-object v3, v3, Lcom/android/server/am/MARsTrigger$2;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v6, v3, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    sub-long/2addr v4, v6

    # invokes: Lcom/android/server/am/MARsTrigger;->setAlarm(Ljava/lang/String;J)V
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/am/MARsTrigger;->access$100(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto :goto_0
.end method
