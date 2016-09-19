.class Lcom/android/server/power/Notifier$1;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onWakefulnessChangeStarted(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$interactive:Z

.field final synthetic val$wakefulness:I

.field final synthetic val$why:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;ZII)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    iput-boolean p2, p0, Lcom/android/server/power/Notifier$1;->val$interactive:Z

    iput p3, p0, Lcom/android/server/power/Notifier$1;->val$why:I

    iput p4, p0, Lcom/android/server/power/Notifier$1;->val$wakefulness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mInteractiveForNet:Z
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$000(Lcom/android/server/power/Notifier;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier$1;->val$interactive:Z

    if-eq v0, v1, :cond_0

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mNetworkPolicyManager:Landroid/net/INetworkPolicyManager;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier$1;->val$interactive:Z

    iget v2, p0, Lcom/android/server/power/Notifier$1;->val$why:I

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkPolicyManager;->onScreenStateChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    iget-boolean v1, p0, Lcom/android/server/power/Notifier$1;->val$interactive:Z

    # setter for: Lcom/android/server/power/Notifier;->mInteractiveForNet:Z
    invoke-static {v0, v1}, Lcom/android/server/power/Notifier;->access$002(Lcom/android/server/power/Notifier;Z)Z

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$200(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/Notifier$1;->val$wakefulness:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->onWakefulnessChanged(I)V

    .line 406
    return-void

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0
.end method
