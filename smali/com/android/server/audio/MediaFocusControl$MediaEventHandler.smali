.class Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    .line 397
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 398
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 402
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 446
    :goto_0
    :pswitch_0
    return-void

    .line 404
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayClear()V
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$900(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/PlayerRecord;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayUpdate(Lcom/android/server/audio/PlayerRecord;I)V
    invoke-static {v2, v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$1000(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/PlayerRecord;I)V

    goto :goto_0

    .line 413
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemote()V
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$1100(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 417
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteVolumeObserver;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRegisterVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    invoke-static {v2, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->access$1200(Lcom/android/server/audio/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V

    goto :goto_0

    .line 423
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteControlDisplay;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onRcDisplayInitInfo(Landroid/media/IRemoteControlDisplay;II)V
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->access$1300(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    goto :goto_0

    .line 428
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # invokes: Lcom/android/server/audio/MediaFocusControl;->onReevaluateRemoteControlDisplays()V
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$1400(Lcom/android/server/audio/MediaFocusControl;)V

    goto :goto_0

    .line 432
    :pswitch_7
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;->this$0:Lcom/android/server/audio/MediaFocusControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 436
    :pswitch_8
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1500()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 438
    :try_start_0
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$1500()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "MediaFocusControl"

    const-string v3, "EXCEPTION : mAudioFocusLock didn\'t notified and will be notified automatically"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
