.class Lcom/android/server/audio/MediaFocusControl$3;
.super Landroid/telephony/PhoneStateListener;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 2483
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 2486
    if-ne p1, v1, :cond_1

    .line 2488
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$2200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2489
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$2302(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 2490
    monitor-exit v2

    .line 2513
    :cond_0
    :goto_0
    return-void

    .line 2490
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2491
    :cond_1
    if-eq p1, v4, :cond_2

    if-nez p1, :cond_0

    .line 2493
    :cond_2
    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$2200()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2494
    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$2302(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 2496
    if-ne p1, v4, :cond_3

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$100(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "sidesync_source_connect"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 2497
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2498
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2499
    const-string/jumbo v1, "enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2500
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$2400(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2501
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mSplitSoundService:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$2502(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 2503
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mSplitSoundService:Z
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$2500(Lcom/android/server/audio/MediaFocusControl;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2504
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2505
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SPLIT_SOUND_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2506
    const-string/jumbo v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2507
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$2400(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2508
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mSplitSoundService:Z
    invoke-static {v1, v3}, Lcom/android/server/audio/MediaFocusControl;->access$2502(Lcom/android/server/audio/MediaFocusControl;Z)Z

    .line 2511
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 2517
    if-eqz p1, :cond_1

    .line 2518
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 2519
    .local v0, "updateState":I
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRilState:I
    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$2600(Lcom/android/server/audio/MediaFocusControl;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 2520
    const-string v1, "MediaFocusControl"

    const-string v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    const-string v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### RIL State is changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRilState:I
    invoke-static {v3}, Lcom/android/server/audio/MediaFocusControl;->access$2600(Lcom/android/server/audio/MediaFocusControl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    const-string v1, "MediaFocusControl"

    const-string v2, "##################################################"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2524
    const-string/jumbo v1, "ril_state_connected=1"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2526
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # setter for: Lcom/android/server/audio/MediaFocusControl;->mRilState:I
    invoke-static {v1, v0}, Lcom/android/server/audio/MediaFocusControl;->access$2602(Lcom/android/server/audio/MediaFocusControl;I)I

    .line 2529
    .end local v0    # "updateState":I
    :cond_1
    return-void
.end method
