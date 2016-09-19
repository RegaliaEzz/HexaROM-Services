.class Lcom/android/server/policy/PhoneWindowManager$4;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2148
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2151
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 2153
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2158
    :cond_0
    const-string v0, "WindowManager"

    const-string/jumbo v1, "mEndCallLongPress on FactoryTest conditions"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2160
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v1, "globalactions"

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 2161
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    .line 2175
    :cond_1
    :goto_0
    return-void

    .line 2164
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isCombinationKeyTriggered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2166
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->ignorePowerKeyInEncrypting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2169
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2170
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$2300(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 2172
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$4;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0
.end method
