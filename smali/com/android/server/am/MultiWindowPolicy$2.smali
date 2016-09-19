.class Lcom/android/server/am/MultiWindowPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MultiWindowPolicy;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$2;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$2;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy$2;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const-string v1, "com.sec.android.app.clockpackage.timer.TIMER_STARTED_IN_ALERT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$2;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy$2;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 339
    :cond_2
    const-string v1, "com.android.settings.LaunchGlanceView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 340
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$2;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy$2;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 341
    :cond_3
    const-string v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$2;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, v1, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    iget-object v2, p0, Lcom/android/server/am/MultiWindowPolicy$2;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowPolicy;->mHandler:Lcom/android/server/am/MultiWindowPolicy$H;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MultiWindowPolicy$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
