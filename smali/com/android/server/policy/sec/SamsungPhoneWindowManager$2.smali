.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 498
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput-boolean v2, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 502
    invoke-static {p1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v1

    .line 504
    .local v1, "penState":I
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    if-eq v1, v3, :cond_0

    .line 505
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const-wide/16 v4, 0x0

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->notifyPenSwitchChanged(JZ)V

    .line 509
    .end local v1    # "penState":I
    :cond_0
    return-void

    .line 505
    .restart local v1    # "penState":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
