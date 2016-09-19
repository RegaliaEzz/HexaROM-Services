.class Lcom/android/server/policy/PhoneWindowManager$28;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 9786
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 9788
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 9789
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 9790
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9791
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    if-eq v2, v5, :cond_0

    .line 9792
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    .line 9789
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9795
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 9796
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9797
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    if-eqz v2, :cond_2

    .line 9798
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v6, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    .line 9795
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9801
    :cond_3
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALARM Received.status  :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9802
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    if-ne v2, v5, :cond_5

    .line 9803
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    if-ne v2, v5, :cond_4

    .line 9804
    const-string v2, "WindowManager"

    const-string v3, "SmartDock Alarm Started"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9805
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 9806
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v6, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 9813
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 9814
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 9816
    return-void

    .line 9808
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAlarmReceivedFlag:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    if-eqz v2, :cond_4

    .line 9809
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mMouseDockedFlag:Z

    .line 9810
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$28;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v6, v2, Lcom/android/server/policy/PhoneWindowManager;->mOldMouseDockedValue:Z

    .line 9811
    const-string v2, "WindowManager"

    const-string v3, "SmartDock ALARM Stopped"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
