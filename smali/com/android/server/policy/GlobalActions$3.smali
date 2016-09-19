.class Lcom/android/server/policy/GlobalActions$3;
.super Lcom/android/server/policy/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;IIIII)V
    .locals 6
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 1035
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 2
    .param p1, "buttonOn"    # Z

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$2700(Lcom/android/server/policy/GlobalActions;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1170
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_1
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$3;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1171
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$3;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    # setter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->access$2502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0

    .line 1170
    :cond_2
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1198
    invoke-super {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onPress()V
    .locals 12

    .prologue
    const v11, 0x1040a3e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1041
    const-string v5, "GlobalActions"

    const-string/jumbo v8, "in onPress of AirplaneMode"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string v8, "com.android.service.GlobalAction"

    const-string v9, "0002"

    const-string v10, "AirplaneMode"

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/policy/GlobalActions;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isTSafeLock()Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1200(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsSecureKeyguard:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1300(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1044
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUnableAirplanemode:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$1400(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1141
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-boolean v5, v5, Lcom/android/server/policy/GlobalActions;->isShopDemo:Z

    if-eqz v5, :cond_1

    .line 1049
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLDUWarning:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$1500(Lcom/android/server/policy/GlobalActions;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1054
    :cond_1
    const-string v5, "CTC"

    # getter for: Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1600()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isMSim()Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1700(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1055
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "DSNETWORK"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 1056
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v5, v11}, Lcom/android/server/policy/GlobalActions;->showErrorMessage(I)V

    goto :goto_0

    .line 1058
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "DUALMODE_SETTING"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1059
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v5, v11}, Lcom/android/server/policy/GlobalActions;->showErrorMessage(I)V

    goto :goto_0

    .line 1064
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    const-string v8, "VZW"

    # getter for: Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1600()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    # setter for: Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5, v8}, Lcom/android/server/policy/GlobalActions;->access$1802(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1065
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1066
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v9, "usb"

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/usb/UsbManager;

    # setter for: Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v8, v5}, Lcom/android/server/policy/GlobalActions;->access$1902(Lcom/android/server/policy/GlobalActions;Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbManager;

    .line 1067
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1900(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1069
    iget-object v8, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1900(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1900(Lcom/android/server/policy/GlobalActions;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    # setter for: Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v8, v5}, Lcom/android/server/policy/GlobalActions;->access$1802(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1073
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v7, "enterprise_policy"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1075
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_7

    .line 1076
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1079
    :cond_5
    const-string v5, "GlobalActions"

    const-string/jumbo v6, "restricted by MDM "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_6
    move v5, v7

    .line 1069
    goto :goto_1

    .line 1085
    .restart local v0    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_7
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v7, "phone"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1088
    .local v4, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v3, -0x1

    .line 1089
    .local v3, "resTitleId":I
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v7, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v5, v7, :cond_d

    .line 1090
    const v3, 0x1040990

    .line 1091
    const-string v5, "VZW"

    # getter for: Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1600()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1092
    const v3, 0x1040a4d

    .line 1103
    :cond_8
    :goto_2
    const/4 v2, -0x1

    .line 1105
    .local v2, "resOnMessageId":I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_BT_EnableSeparateSettingWithAirplainMode"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1106
    const v2, 0x1040993

    .line 1118
    :goto_3
    const-string v5, "VZW"

    # getter for: Lcom/android/server/policy/GlobalActions;->mSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$1600()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1122
    const v2, 0x1040a4e

    .line 1124
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageVZW:Z
    invoke-static {v5, v6}, Lcom/android/server/policy/GlobalActions;->access$2302(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1128
    :cond_9
    const/4 v1, -0x1

    .line 1129
    .local v1, "resOffMessageId":I
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1130
    const v1, 0x1040995

    .line 1135
    :goto_4
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isUSA()Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$2400(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isCHINA()Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$2100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v5

    sget-object v7, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v5, v7, :cond_c

    :cond_b
    const-string v5, "americano"

    # getter for: Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$2600()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string/jumbo v5, "mocha"

    # getter for: Lcom/android/server/policy/GlobalActions;->mScafe:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$2600()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1137
    :cond_c
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->confirmDialog(Lcom/android/server/policy/GlobalActions$ToggleAction;III)V
    invoke-static {v5, p0, v3, v2, v1}, Lcom/android/server/policy/GlobalActions;->access$900(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction;III)V

    goto/16 :goto_0

    .line 1095
    .end local v1    # "resOffMessageId":I
    .end local v2    # "resOnMessageId":I
    :cond_d
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->isVZWOperatorAirplaneModeONReasonUSB3:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1096
    const v3, 0x1040991

    goto :goto_2

    .line 1098
    :cond_e
    const v3, 0x1040125

    goto :goto_2

    .line 1107
    .restart local v2    # "resOnMessageId":I
    :cond_f
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isVoiceCapable()Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$2000(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1108
    const v2, 0x1040997

    goto :goto_3

    .line 1110
    :cond_10
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isCHINA()Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$2100(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1111
    const v2, 0x1040a50

    .line 1112
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsSetAirplaneOnMessageCHINA:Z
    invoke-static {v5, v6}, Lcom/android/server/policy/GlobalActions;->access$2202(Lcom/android/server/policy/GlobalActions;Z)Z

    goto/16 :goto_3

    .line 1114
    :cond_11
    const v2, 0x1040992

    goto/16 :goto_3

    .line 1132
    .restart local v1    # "resOffMessageId":I
    :cond_12
    const v1, 0x1040994

    goto :goto_4

    .line 1139
    :cond_13
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    goto/16 :goto_0
.end method

.method onToggle(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 1145
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$2700(Lcom/android/server/policy/GlobalActions;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsWaitingForEcmExit:Z
    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->access$2802(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 1149
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1151
    .local v1, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1153
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    .end local v1    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1154
    .restart local v1    # "ecmDialogIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "GlobalActions"

    const-string v3, "ActivityNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1158
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "ecmDialogIntent":Landroid/content/Intent;
    :cond_0
    const-string v2, "GlobalActions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mAirplaneModeOn : onToggle : changeAirplaneModeSystemSetting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->changeAirplaneModeSystemSetting(Z)V
    invoke-static {v2, p1}, Lcom/android/server/policy/GlobalActions;->access$2900(Lcom/android/server/policy/GlobalActions;Z)V

    goto :goto_0
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1180
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1185
    const-string/jumbo v1, "lock"

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$3;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return v0

    .line 1189
    :cond_1
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1192
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1176
    const/4 v0, 0x1

    return v0
.end method
