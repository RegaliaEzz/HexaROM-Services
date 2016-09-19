.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;
.super Ljava/lang/Thread;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeKeyLongPressControlThread"
.end annotation


# instance fields
.field private final DURATION_LONG_PRESS:I

.field private final DURATION_REPEAT:I

.field private final MAX_REPEAT:I

.field private mDirection:I

.field private mFlags:I

.field private mNeedToRun:Z

.field private mSleepDuration:I

.field private mStream:I

.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V
    .locals 1

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 841
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->DURATION_LONG_PRESS:I

    .line 842
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->DURATION_REPEAT:I

    .line 843
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->MAX_REPEAT:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p2, "x1"    # Lcom/android/server/media/MediaSessionService$1;

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 857
    const/4 v0, 0x0

    .line 860
    .local v0, "repeat":I
    :goto_0
    :try_start_0
    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    :goto_1
    monitor-enter p0

    .line 865
    :try_start_1
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    if-eqz v4, :cond_0

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_1

    .line 866
    :cond_0
    monitor-exit p0

    .line 886
    return-void

    .line 868
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 869
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "volumekey long press repeat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_2

    .line 872
    const/16 v4, 0x32

    iput v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 874
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 876
    .local v2, "token":J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v4, v4, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 877
    :try_start_3
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v4, v4, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mPriorityStack:Lcom/android/server/media/MediaSessionStack;
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v6, v6, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    .line 879
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    iget v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    iget v8, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(IIILcom/android/server/media/MediaSessionRecord;)V
    invoke-static {v4, v6, v7, v8, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$2200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;IIILcom/android/server/media/MediaSessionRecord;)V

    .line 880
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 882
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 884
    monitor-exit p0

    goto :goto_0

    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    .end local v2    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 880
    .restart local v2    # "token":J
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 882
    :catchall_2
    move-exception v4

    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 861
    .end local v2    # "token":J
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public updateInfo(IIIZ)V
    .locals 1
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "down"    # Z

    .prologue
    .line 846
    monitor-enter p0

    .line 847
    :try_start_0
    iput p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mStream:I

    .line 848
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mDirection:I

    .line 849
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mSleepDuration:I

    .line 850
    iput-boolean p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mNeedToRun:Z

    .line 851
    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$VolumeKeyLongPressControlThread;->mFlags:I

    .line 852
    monitor-exit p0

    .line 853
    return-void

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
