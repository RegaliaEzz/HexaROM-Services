.class Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndRestoreRunnable"
.end annotation


# instance fields
.field mBackupManager:Lcom/android/server/backup/BackupManagerService;

.field mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V
    .locals 0
    .param p2, "manager"    # Lcom/android/server/backup/BackupManagerService;
    .param p3, "session"    # Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .prologue
    .line 10175
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10176
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/BackupManagerService;

    .line 10177
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    .line 10178
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 10182
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    monitor-enter v1

    .line 10183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreTransport:Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v0, v2}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->access$3402(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 10184
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mEnded:Z

    .line 10185
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10189
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->clearRestoreSession(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    .line 10190
    return-void

    .line 10185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
