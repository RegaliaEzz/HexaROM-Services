.class Lcom/android/server/pm/PackageManagerService$24;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0

    .prologue
    .line 20600
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$24;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$24;->val$userId:I

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$24;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 20602
    const-string v7, "PackageManager"

    const-string v8, "MSG"

    const-string v9, "DELETE_APPLICATION_CACHE_FILES"

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20603
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v7, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20605
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v7, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v8

    .line 20606
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$24;->val$packageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$24;->val$userId:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesLI(Ljava/lang/String;I)Z
    invoke-static {v7, v9, v10}, Lcom/android/server/pm/PackageManagerService;->access$6700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v6

    .line 20607
    .local v6, "succeded":Z
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20608
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$24;->val$packageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$24;->val$userId:I

    const/4 v10, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->clearExternalStorageDataSync(Ljava/lang/String;IZ)V
    invoke-static {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->access$6600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    .line 20611
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$24;->val$packageName:Ljava/lang/String;

    const/16 v9, 0x80

    iget v10, p0, Lcom/android/server/pm/PackageManagerService$24;->val$userId:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 20612
    .local v3, "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 20613
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 20614
    .local v1, "infoBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string/jumbo v7, "sdp"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 20615
    const-string/jumbo v7, "sdp"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20616
    .local v4, "sdpMetadata":Ljava/lang/String;
    const-string/jumbo v7, "enabled"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 20618
    :try_start_1
    const-string/jumbo v7, "sdp"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v5

    .line 20620
    .local v5, "sdpService":Lcom/sec/sdp/ISdpManagerService;
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$24;->val$userId:I

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$24;->val$packageName:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Lcom/sec/sdp/ISdpManagerService;->clearEncPkgCache(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 20621
    const-string v7, "PackageManager"

    const-string v8, "Failed to clear cache for enc pkg.."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20631
    .end local v1    # "infoBundle":Landroid/os/Bundle;
    .end local v4    # "sdpMetadata":Ljava/lang/String;
    .end local v5    # "sdpService":Lcom/sec/sdp/ISdpManagerService;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$24;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v7, :cond_1

    .line 20633
    :try_start_2
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resultl of deleteCacheFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$24;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20635
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$24;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$24;->val$packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v6}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 20640
    :cond_1
    :goto_1
    return-void

    .line 20607
    .end local v3    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "succeded":Z
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 20623
    .restart local v1    # "infoBundle":Landroid/os/Bundle;
    .restart local v3    # "sdpAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "sdpMetadata":Ljava/lang/String;
    .restart local v6    # "succeded":Z
    :catch_0
    move-exception v2

    .line 20624
    .local v2, "re":Landroid/os/RemoteException;
    const-string v7, "PackageManager"

    const-string v8, "RemoteException from call unregisterListener"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 20636
    .end local v1    # "infoBundle":Landroid/os/Bundle;
    .end local v2    # "re":Landroid/os/RemoteException;
    .end local v4    # "sdpMetadata":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 20637
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "PackageManager"

    const-string v8, "Observer no longer exists."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
