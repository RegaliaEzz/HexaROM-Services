.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field private mIsStartEvent:Z

.field private mStylusButtonDownAtStart:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 1155
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    .line 1156
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 1160
    const/4 v4, 0x0

    .line 1162
    .local v4, "handled":Z
    :try_start_0
    instance-of v10, p1, Landroid/view/MotionEvent;

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v10, :cond_3

    .line 1165
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v6, v0

    .line 1166
    .local v6, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 1167
    .local v2, "endDrag":Z
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_4

    move v5, v3

    .line 1170
    .local v5, "isStylusButtonDown":Z
    :goto_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 1171
    .local v7, "newX":F
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 1172
    .local v8, "newY":F
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v10

    if-eqz v10, :cond_5

    .line 1174
    .local v3, "externalDisplay":Z
    :goto_1
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    .line 1175
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    .line 1178
    iget-boolean v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v9, :cond_1

    .line 1179
    if-eqz v5, :cond_0

    .line 1182
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 1184
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    .line 1187
    :cond_1
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1223
    :goto_2
    :pswitch_0
    if-eqz v2, :cond_2

    .line 1226
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1227
    :try_start_1
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 1228
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1229
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 1230
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1233
    :cond_2
    const/4 v4, 0x1

    .line 1238
    .end local v2    # "endDrag":Z
    .end local v3    # "externalDisplay":Z
    .end local v5    # "isStylusButtonDown":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v7    # "newX":F
    .end local v8    # "newY":F
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1240
    :goto_3
    return-void

    .restart local v2    # "endDrag":Z
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    :cond_4
    move v5, v9

    .line 1167
    goto :goto_0

    .restart local v5    # "isStylusButtonDown":Z
    .restart local v7    # "newX":F
    .restart local v8    # "newY":F
    :cond_5
    move v3, v9

    .line 1172
    goto :goto_1

    .line 1195
    .restart local v3    # "externalDisplay":Z
    :pswitch_1
    :try_start_3
    iget-boolean v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v9, :cond_6

    if-nez v5, :cond_6

    .line 1198
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1199
    :try_start_4
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v2

    .line 1200
    monitor-exit v10

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1235
    .end local v2    # "endDrag":Z
    .end local v3    # "externalDisplay":Z
    .end local v5    # "isStylusButtonDown":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v7    # "newX":F
    .end local v8    # "newY":F
    :catch_0
    move-exception v1

    .line 1236
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v9, "WindowManager"

    const-string v10, "Exception caught by drag handleMotion"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1238
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_3

    .line 1202
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "endDrag":Z
    .restart local v3    # "externalDisplay":Z
    .restart local v5    # "isStylusButtonDown":Z
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v7    # "newX":F
    .restart local v8    # "newY":F
    :cond_6
    :try_start_7
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1204
    :try_start_8
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9, v7, v8, v3}, Lcom/android/server/wm/DragState;->notifyMoveLw(FFZ)V

    .line 1205
    monitor-exit v10

    goto :goto_2

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1238
    .end local v2    # "endDrag":Z
    .end local v3    # "externalDisplay":Z
    .end local v5    # "isStylusButtonDown":Z
    .end local v6    # "motionEvent":Landroid/view/MotionEvent;
    .end local v7    # "newX":F
    .end local v8    # "newY":F
    :catchall_2
    move-exception v9

    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v9

    .line 1212
    .restart local v2    # "endDrag":Z
    .restart local v3    # "externalDisplay":Z
    .restart local v5    # "isStylusButtonDown":Z
    .restart local v6    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v7    # "newX":F
    .restart local v8    # "newY":F
    :pswitch_2
    :try_start_a
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v9, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1213
    :try_start_b
    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v9, v7, v8, v3}, Lcom/android/server/wm/DragState;->notifyDropLw(FFZ)Z

    move-result v2

    .line 1214
    monitor-exit v10

    goto :goto_2

    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1219
    :pswitch_3
    const/4 v2, 0x1

    goto :goto_2

    .line 1228
    :catchall_4
    move-exception v9

    :try_start_d
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
