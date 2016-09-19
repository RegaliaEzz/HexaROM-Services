.class Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LcdOffDisableListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/StateNotifier;

.field final token:Landroid/os/IBinder;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p2, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    .line 578
    iput-object p3, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->component:Landroid/content/ComponentName;

    .line 579
    iput p4, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->pid:I

    .line 580
    iput p5, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->uid:I

    .line 581
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 585
    const-string v0, "CoverManager.StateNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$500(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mLcdOffDisableListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$500(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 589
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->this$0:Lcom/android/server/cover/StateNotifier;

    # invokes: Lcom/android/server/cover/StateNotifier;->enableLcdOffByCoverIfPossibleLocked()V
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$600(Lcom/android/server/cover/StateNotifier;)V

    .line 590
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    iget-object v0, p0, Lcom/android/server/cover/StateNotifier$LcdOffDisableListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 592
    return-void

    .line 590
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
