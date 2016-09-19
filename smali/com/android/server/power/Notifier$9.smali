.class Lcom/android/server/power/Notifier$9;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onSubScreenStateChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$id:I

.field final synthetic val$reason:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;III)V
    .locals 0

    .prologue
    .line 829
    iput-object p1, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$9;->val$state:I

    iput p3, p0, Lcom/android/server/power/Notifier$9;->val$reason:I

    iput p4, p0, Lcom/android/server/power/Notifier$9;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 832
    iget v0, p0, Lcom/android/server/power/Notifier$9;->val$state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 833
    const-string v0, "PowerManagerNotifier"

    const-string/jumbo v1, "sendBroadcast SubScreen On"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1200(Lcom/android/server/power/Notifier;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mSubScreenOnIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$1100(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 835
    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1300(Lcom/android/server/power/Notifier;)Landroid/hardware/input/InputManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/hardware/input/InputManagerInternal;->setSubInteractive(Z)V

    .line 842
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$200(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/Notifier$9;->val$id:I

    iget v2, p0, Lcom/android/server/power/Notifier$9;->val$state:I

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->onScreenStateChanged(II)V

    .line 843
    return-void

    .line 836
    :cond_1
    iget v0, p0, Lcom/android/server/power/Notifier$9;->val$state:I

    if-ne v0, v3, :cond_0

    .line 837
    const-string v0, "PowerManagerNotifier"

    const-string/jumbo v1, "sendBroadcast SubScreen Off"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mSubScreenOffIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1400(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "why"

    iget v2, p0, Lcom/android/server/power/Notifier$9;->val$reason:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 839
    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1200(Lcom/android/server/power/Notifier;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mSubScreenOffIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$1400(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 840
    iget-object v0, p0, Lcom/android/server/power/Notifier$9;->this$0:Lcom/android/server/power/Notifier;

    # getter for: Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/Notifier;->access$1300(Lcom/android/server/power/Notifier;)Landroid/hardware/input/InputManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerInternal;->setSubInteractive(Z)V

    goto :goto_0
.end method
