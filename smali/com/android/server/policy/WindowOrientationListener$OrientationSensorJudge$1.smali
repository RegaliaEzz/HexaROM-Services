.class Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    iget-object v1, v1, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z
    invoke-static {v1, v3}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->access$902(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;Z)Z

    .line 723
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-virtual {v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result v0

    .line 724
    .local v0, "newRotation":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    if-ltz v0, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    # invokes: Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->checkFace()Z
    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->access$1000(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    const-string v1, "WindowOrientationListener"

    const-string/jumbo v2, "skip rotation  "

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 724
    .end local v0    # "newRotation":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 729
    .restart local v0    # "newRotation":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;->this$1:Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    iget-object v1, v1, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_0
.end method
