.class Lcom/android/server/policy/GlobalActions$35;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 4200
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "ignored"    # Ljava/lang/String;

    .prologue
    .line 4203
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$7900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4204
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mEmergency:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$7900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$8000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4205
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4206
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v1, v1, Lcom/android/server/policy/GlobalActions;->mEmergencyStringId:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mEmergencyState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$8000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v2

    # invokes: Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->access$8100(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4209
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$8200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4210
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDataModeToggle:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$8200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$8300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4211
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4212
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v1, v1, Lcom/android/server/policy/GlobalActions;->mDataNetworkStringId:I

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDataNetworkState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$8300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v2

    # invokes: Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;->access$8100(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4215
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4216
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$35;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 4218
    :cond_2
    return-void
.end method
