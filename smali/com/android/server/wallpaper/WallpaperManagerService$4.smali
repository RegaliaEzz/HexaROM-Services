.class Lcom/android/server/wallpaper/WallpaperManagerService$4;
.super Landroid/os/Handler;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .prologue
    .line 2508
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 2512
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 2547
    :cond_0
    :goto_0
    return-void

    .line 2515
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2516
    .local v2, "userId":I
    const/16 v4, 0x64

    if-lt v2, v4, :cond_1

    .line 2517
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INITIALIZE_KNOX_WALLPAPER userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2519
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(I)V
    invoke-static {v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 2520
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2522
    :cond_1
    const-string v4, "WallpaperManagerService"

    const-string v5, "INITIALIZE_KNOX_WALLPAPER userId is not container"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2527
    .end local v2    # "userId":I
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2528
    .local v1, "personaId":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v0, :cond_3

    .line 2529
    .local v0, "forced":Z
    :goto_1
    const-string v4, "WallpaperManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " force update = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; persona id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; current user ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; current persona = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I
    invoke-static {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # getter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I
    invoke-static {v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v4, v5, :cond_0

    .line 2532
    :cond_2
    const-string v4, "WallpaperManagerService"

    const-string v5, " show wallpaper now "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    # setter for: Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentPersonaId:I
    invoke-static {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1102(Lcom/android/server/wallpaper/WallpaperManagerService;I)I

    .line 2534
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2535
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2536
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 2537
    monitor-exit v5

    goto/16 :goto_0

    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 2528
    .end local v0    # "forced":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2542
    .end local v1    # "personaId":I
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2543
    .restart local v1    # "personaId":I
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$4;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->setKnoxWallpaperMessage(I)V
    invoke-static {v4, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    goto/16 :goto_0

    .line 2512
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
