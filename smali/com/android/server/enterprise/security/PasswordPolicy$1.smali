.class Lcom/android/server/enterprise/security/PasswordPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 641
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/security/PasswordPolicy$1;->getSendingUserId()I

    move-result v9

    .line 644
    .local v9, "sendingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 645
    .local v10, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 647
    .local v4, "currentUserId":I
    const-string v12, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 649
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnTimeout(I)V
    invoke-static {v12, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$000(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    .line 695
    :cond_0
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    :goto_1
    return-void

    .line 651
    :cond_1
    const-string v12, "android.intent.action.USER_STARTED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 652
    const-string v12, "android.intent.extra.user_handle"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 653
    .local v8, "newCurrentUser":I
    if-ltz v8, :cond_0

    .line 654
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnStart(I)V
    invoke-static {v12, v8}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$100(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_0

    .line 657
    .end local v8    # "newCurrentUser":I
    :cond_2
    const-string v12, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 658
    const-string v12, "android.intent.extra.user_handle"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 659
    .restart local v8    # "newCurrentUser":I
    if-ltz v8, :cond_0

    .line 660
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededOnSwitch(I)V
    invoke-static {v12, v8}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$200(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_0

    .line 663
    .end local v8    # "newCurrentUser":I
    :cond_3
    const-string v12, "android.intent.action.PHONE_STATE"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 664
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # getter for: Lcom/android/server/enterprise/security/PasswordPolicy;->mTelManager:Landroid/telephony/TelephonyManager;
    invoke-static {v12}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$300(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v12

    if-nez v12, :cond_0

    .line 665
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeIfNeededAfterCall(I)V
    invoke-static {v12, v4}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$400(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_0

    .line 668
    :cond_4
    const-string/jumbo v12, "edm.intent.action.internal.NOTIFICATION_PASSWORD_EXPIRED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 669
    const-string v12, "PasswordPolicy"

    const-string v13, "Received MDM_PASSWORD_EXPIRING_NOTIFICATION intent"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    move-object/from16 v0, p2

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->isMDMAdmin(Landroid/content/Intent;I)Z
    invoke-static {v13, v0, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$500(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/Intent;I)Z

    move-result v13

    if-ne v12, v13, :cond_0

    .line 672
    const-string/jumbo v12, "expiration"

    const-wide/16 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 673
    .local v6, "expiration":J
    const-wide/16 v12, -0x1

    cmp-long v12, v6, v12

    if-eqz v12, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v12, v6, v12

    if-lez v12, :cond_6

    .line 674
    :cond_5
    const-string v12, "PasswordPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "In grace period or failed to get "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 677
    :cond_6
    const-string v12, "PasswordPolicy"

    const-string v13, "Password expired already so launching password screen"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/16 v12, 0x64

    if-ge v9, v12, :cond_7

    .line 683
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 684
    .local v3, "am":Landroid/app/IActivityManager;
    const-string v12, "com.android.settings"

    invoke-interface {v3, v12, v9}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .end local v3    # "am":Landroid/app/IActivityManager;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/security/PasswordPolicy$1;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 v13, 0x0

    # invokes: Lcom/android/server/enterprise/security/PasswordPolicy;->enforcePwdChangeForUser(II)Z
    invoke-static {v12, v13, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->access$600(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z

    goto/16 :goto_0

    .line 685
    :catch_0
    move-exception v5

    .line 686
    .local v5, "e":Landroid/os/RemoteException;
    const-string v12, "PasswordPolicy"

    const-string/jumbo v13, "forceStopPackage failed"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
