.class Lcom/android/server/pm/PackageManagerService$15;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .locals 0

    .prologue
    .line 15821
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$15;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$15;->val$currentStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 15823
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15824
    const/4 v13, 0x0

    .line 15825
    .local v13, "ob":Landroid/content/pm/IPackageInstallObserver2;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v1, :cond_0

    .line 15826
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15828
    :cond_0
    const-string v2, "PackageManager"

    const-string v3, "MSG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PROCESS_PENDING_INSTALL: observer{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "}\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "currentStatus{"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/pm/PackageManagerService$15;->val$currentStatus:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "}"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15833
    new-instance v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v15, v1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 15834
    .local v15, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/pm/PackageManagerService$15;->val$currentStatus:I

    iput v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    .line 15835
    const/4 v1, -0x1

    iput v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 15836
    const/4 v1, 0x0

    iput-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 15837
    new-instance v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    iput-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 15838
    iget v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 15839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 15840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 15841
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$15;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    # invokes: Lcom/android/server/pm/PackageManagerService;->installPackageLI(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V
    invoke-static {v1, v3, v15}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15842
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15846
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$Package;->isForwardLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$1200(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15850
    :cond_1
    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    iget-object v2, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v2, v5, v1

    .line 15851
    .local v5, "uidArray":[I
    new-instance v4, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15852
    .local v4, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 15855
    .end local v4    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "uidArray":[I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v3, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    .line 15861
    :cond_3
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_a

    const/16 v17, 0x1

    .line 15862
    .local v17, "update":Z
    :goto_1
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_b

    const/4 v11, 0x0

    .line 15863
    .local v11, "flags":I
    :goto_2
    if-nez v17, :cond_c

    const v1, 0x8000

    and-int/2addr v1, v11

    if-eqz v1, :cond_c

    const/4 v9, 0x1

    .line 15867
    .local v9, "doRestore":Z
    :goto_3
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_5

    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 15868
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 15869
    .local v14, "pList":Ljava/util/List;
    const-string v1, "com.samsung.android.permission.SAMSUNG_OVERLAY_THEME"

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.android.permission.SAMSUNG_OVERLAY_COMPONENT"

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15871
    :cond_4
    const/4 v9, 0x0

    .line 15879
    .end local v14    # "pList":Ljava/util/List;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 15880
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v0, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    move/from16 v16, v0

    add-int/lit8 v2, v16, 0x1

    iput v2, v1, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 15882
    .local v16, "token":I
    new-instance v8, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$15;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v8, v1, v2, v15}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15883
    .local v8, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v1, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15886
    iget v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    if-eqz v9, :cond_7

    .line 15891
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v7

    .line 15893
    .local v7, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v7, :cond_e

    .line 15894
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to BM for possible restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15897
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v7, v1}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 15898
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v0, v16

    invoke-interface {v7, v1, v0}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 15914
    .end local v7    # "bm":Landroid/app/backup/IBackupManager;
    :cond_7
    :goto_4
    if-nez v9, :cond_8

    .line 15918
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v12

    .line 15919
    .local v12, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v12}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 15922
    .end local v12    # "msg":Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$15;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 15923
    return-void

    .line 15828
    .end local v8    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v9    # "doRestore":Z
    .end local v11    # "flags":I
    .end local v15    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v16    # "token":I
    .end local v17    # "update":Z
    :cond_9
    const-string/jumbo v1, "null"

    goto/16 :goto_0

    .line 15842
    .restart local v15    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 15861
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 15862
    .restart local v17    # "update":Z
    :cond_b
    iget-object v1, v15, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    goto/16 :goto_2

    .line 15863
    .restart local v11    # "flags":I
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 15900
    .restart local v7    # "bm":Landroid/app/backup/IBackupManager;
    .restart local v8    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .restart local v9    # "doRestore":Z
    .restart local v16    # "token":I
    :cond_d
    const/4 v9, 0x0

    goto :goto_4

    .line 15904
    :catch_0
    move-exception v10

    .line 15905
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "PackageManager"

    const-string v2, "Exception trying to enqueue restore"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15906
    const/4 v9, 0x0

    .line 15907
    goto :goto_4

    .line 15909
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v1, "PackageManager"

    const-string v2, "Backup Manager not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15910
    const/4 v9, 0x0

    goto :goto_4

    .line 15902
    :catch_1
    move-exception v1

    goto :goto_4
.end method
