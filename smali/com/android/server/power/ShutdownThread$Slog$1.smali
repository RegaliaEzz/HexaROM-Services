.class final Lcom/android/server/power/ShutdownThread$Slog$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$Slog;->startState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2077
    const/4 v0, 0x0

    # setter for: Lcom/android/server/power/ShutdownThread$Slog;->delayDumpRaunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$Slog;->access$1802(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2078
    # getter for: Lcom/android/server/power/ShutdownThread;->BIN_TYPE_PRODUCTSHIP:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1900()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "recovery"

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2079
    :cond_0
    const-string v0, "ShutdownDelay"

    const-string v1, "!@ShutdownThread.run() : Checking timeout, done. Try force shutdown again."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()Lcom/android/server/power/ShutdownThread;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$1100(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    # getter for: Lcom/android/server/power/ShutdownThread;->mReboot:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Z

    move-result v1

    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootReason:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 2091
    :goto_0
    return-void

    .line 2083
    :cond_1
    :try_start_0
    # getter for: Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2084
    const-string v0, "ShutdownDelay"

    const-string v1, "!@ShutdownThread.run() : checking timeout, done."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const-string v0, "-k -z -d -o /data/log/dumpstate_shutdownthread"

    invoke-static {v0}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 2086
    const-string v0, "ShutdownDelay"

    const-string/jumbo v1, "delayDumpLock released"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2088
    # getter for: Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    # getter for: Lcom/android/server/power/ShutdownThread;->delayDumpLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$2100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
