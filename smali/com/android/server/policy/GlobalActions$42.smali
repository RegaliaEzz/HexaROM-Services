.class Lcom/android/server/policy/GlobalActions$42;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 5180
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x3

    const/4 v4, 0x0

    .line 5183
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v6, p0, Lcom/android/server/policy/GlobalActions$42;->mSubId:I

    # invokes: Lcom/android/server/policy/GlobalActions;->getPhoneId(I)I
    invoke-static {v5, v6}, Lcom/android/server/policy/GlobalActions;->access$9600(Lcom/android/server/policy/GlobalActions;I)I

    move-result v3

    .line 5186
    .local v3, "phoneId":I
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$2700(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    .line 5187
    :cond_0
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mHasTelephony : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$2700(Lcom/android/server/policy/GlobalActions;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    :cond_1
    :goto_0
    return-void

    .line 5190
    :cond_2
    const-string v5, "GlobalActions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onServiceStateChanged("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " MSim "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isMSim()Z
    invoke-static {v7}, Lcom/android/server/policy/GlobalActions;->access$1700(Lcom/android/server/policy/GlobalActions;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5191
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$9700(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    aput v6, v5, v3

    .line 5192
    const/4 v1, 0x0

    .line 5194
    .local v1, "inAirplaneMode":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mPhoneCount:I
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$9800(Lcom/android/server/policy/GlobalActions;)I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 5195
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isMSim()Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$1700(Lcom/android/server/policy/GlobalActions;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5196
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z
    invoke-static {v5, v4}, Lcom/android/server/policy/GlobalActions;->access$9900(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z
    invoke-static {v5, v2}, Lcom/android/server/policy/GlobalActions;->access$9900(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5198
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$9700(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v5

    aget v5, v5, v4

    if-ne v5, v8, :cond_3

    .line 5199
    const/4 v1, 0x1

    .line 5194
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5202
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isSimCardInserted(I)Z
    invoke-static {v5, v0}, Lcom/android/server/policy/GlobalActions;->access$9900(Lcom/android/server/policy/GlobalActions;I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$9700(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v5

    aget v5, v5, v0

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 5205
    const/4 v1, 0x1

    goto :goto_2

    .line 5209
    :cond_5
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mMSimServiceState:[I
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$9700(Lcom/android/server/policy/GlobalActions;)[I

    move-result-object v5

    aget v5, v5, v4

    if-ne v5, v8, :cond_3

    .line 5210
    const/4 v1, 0x1

    goto :goto_2

    .line 5215
    :cond_6
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    .line 5216
    .local v2, "inAirplaneModeOn":Z
    :goto_3
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " inAirplaneModeOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    if-ne v1, v2, :cond_1

    .line 5222
    iget-object v5, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    if-eqz v1, :cond_8

    sget-object v4, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_4
    # setter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v5, v4}, Lcom/android/server/policy/GlobalActions;->access$2502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 5224
    const-string v4, "GlobalActions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onServiceStateChanged inAirplaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAirplaneState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$42;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .end local v2    # "inAirplaneModeOn":Z
    :cond_7
    move v2, v4

    .line 5215
    goto :goto_3

    .line 5222
    .restart local v2    # "inAirplaneModeOn":Z
    :cond_8
    sget-object v4, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_4
.end method
