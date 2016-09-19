.class Lcom/android/server/pm/UserManagerService$3$1;
.super Ljava/lang/Thread;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/UserManagerService$3;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService$3;)V
    .locals 0

    .prologue
    .line 2042
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2044
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mInstallLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2045
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2046
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUserExistsLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2047
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    iget-object v0, v0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$3$1;->this$1:Lcom/android/server/pm/UserManagerService$3;

    iget v4, v4, Lcom/android/server/pm/UserManagerService$3;->val$userHandle:I

    # invokes: Lcom/android/server/pm/UserManagerService;->removeUserStateLocked(I)V
    invoke-static {v0, v4}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;I)V

    .line 2048
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2049
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2050
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2051
    return-void

    .line 2048
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 2049
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    .line 2050
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method
