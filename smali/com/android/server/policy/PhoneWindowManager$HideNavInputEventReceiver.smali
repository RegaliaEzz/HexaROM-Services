.class final Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 6127
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 6128
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 6129
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 6133
    const/4 v4, 0x0

    .line 6135
    .local v4, "handled":Z
    :try_start_0
    instance-of v8, p1, Landroid/view/MotionEvent;

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 6137
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    .line 6138
    .local v5, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_2

    .line 6140
    const/4 v2, 0x0

    .line 6141
    .local v2, "changed":Z
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6156
    :try_start_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v7, v8, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 6157
    .local v7, "resettingSystemUiFlags":I
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v8, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 6159
    .local v3, "forceClearedSystemUiFlags":I
    or-int/lit8 v8, v7, 0x2

    or-int/lit8 v8, v8, 0x1

    or-int/lit8 v6, v8, 0x4

    .line 6163
    .local v6, "newVal":I
    if-eq v7, v6, :cond_0

    .line 6167
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput v6, v8, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 6169
    const/4 v2, 0x1

    .line 6174
    :cond_0
    or-int/lit8 v6, v3, 0x2

    .line 6176
    if-eq v3, v6, :cond_1

    .line 6183
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput v6, v8, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 6184
    const/4 v2, 0x1

    .line 6185
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/policy/PhoneWindowManager;->access$3500(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    invoke-virtual {v8, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6188
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6189
    if-eqz v2, :cond_2

    .line 6190
    :try_start_2
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v8, v8, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6195
    .end local v2    # "changed":Z
    .end local v3    # "forceClearedSystemUiFlags":I
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newVal":I
    .end local v7    # "resettingSystemUiFlags":I
    :cond_2
    invoke-virtual {p0, p1, v4}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 6197
    return-void

    .line 6188
    .restart local v2    # "changed":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6195
    .end local v2    # "changed":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_1
    move-exception v8

    invoke-virtual {p0, p1, v4}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v8
.end method
