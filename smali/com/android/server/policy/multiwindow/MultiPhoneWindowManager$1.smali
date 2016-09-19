.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    iget-object v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mobile_keyboard"

    invoke-static {v4, v5, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 172
    .local v0, "mobileKeyboardEnabled":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "multiwindow_facade"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 173
    .local v1, "mwFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v1, :cond_0

    .line 174
    if-eqz v0, :cond_3

    .line 175
    const-string/jumbo v2, "mobile_keyboard"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V

    .line 181
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "multi_window_enabled"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    # setter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I
    invoke-static {v2, v4}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$002(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;I)I

    .line 183
    iget-object v2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$SettingsObserver;->onChange(Z)V

    .line 185
    .end local v0    # "mobileKeyboardEnabled":Z
    .end local v1    # "mwFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 171
    goto :goto_0

    .line 177
    .restart local v0    # "mobileKeyboardEnabled":Z
    .restart local v1    # "mwFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :cond_3
    const-string/jumbo v4, "mobile_keyboard"

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V

    goto :goto_1
.end method
