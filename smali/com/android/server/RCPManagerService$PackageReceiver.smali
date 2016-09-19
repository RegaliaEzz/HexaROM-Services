.class public Lcom/android/server/RCPManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RCPManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RCPManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageReceiver"
.end annotation


# instance fields
.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/RCPManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/RCPManagerService;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    .line 1253
    iput-object p1, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    .line 1254
    iput p2, p0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    .line 1255
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1260
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "PackageReceiver onReceive()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1263
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 1264
    .local v3, "addedPackage":Ljava/lang/String;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "App Installed with packageNAme = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    if-nez v3, :cond_1

    .line 1379
    .end local v3    # "addedPackage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1269
    .restart local v3    # "addedPackage":Ljava/lang/String;
    :cond_1
    const/4 v5, -0x1

    .line 1272
    .local v5, "appUid":I
    :try_start_0
    const-string/jumbo v20, "package"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1274
    .local v13, "iPM":Landroid/content/pm/IPackageManager;
    const/16 v20, 0x80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v13, v3, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1276
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1277
    .local v7, "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 1278
    const-string/jumbo v20, "proxyName"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1279
    .local v15, "proxyName":Ljava/lang/String;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeRedesign:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/RCPManagerService;->access$1500(Lcom/android/server/RCPManagerService;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/RCPManagerService;->access$1600(Lcom/android/server/RCPManagerService;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1284
    const-string v20, "Bridge_PROXY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " PackageReceiver onReceive() proxyName "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_2
    if-eqz v15, :cond_0

    const-string v20, "RCPProxy"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1290
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 1291
    .local v19, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RCPProxyForUser"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1293
    .local v17, "rCPProxyScanSP":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v15, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    # invokes: Lcom/android/server/RCPManagerService;->bindToBridgeProxy(ILjava/lang/String;)V
    invoke-static {v0, v1, v3}, Lcom/android/server/RCPManagerService;->access$1700(Lcom/android/server/RCPManagerService;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1299
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v13    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v15    # "proxyName":Ljava/lang/String;
    .end local v17    # "rCPProxyScanSP":Landroid/content/SharedPreferences;
    .end local v19    # "userId":I
    :catch_0
    move-exception v11

    .line 1300
    .local v11, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception trying to get applicationInfo for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1303
    .end local v3    # "addedPackage":Ljava/lang/String;
    .end local v5    # "appUid":I
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1308
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v18

    .line 1310
    .local v18, "removedPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RCPProxyForUser"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1312
    .local v16, "proxyPreferences":Landroid/content/SharedPreferences;
    const-string v20, "RCPProxy"

    const-string v21, "com.samsung.knox.rcp.components"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1315
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "RCPProxy"

    invoke-interface/range {v20 .. v21}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v21

    monitor-enter v21

    .line 1317
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    # invokes: Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V
    invoke-static {v0, v1}, Lcom/android/server/RCPManagerService;->access$1000(Lcom/android/server/RCPManagerService;I)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    # invokes: Lcom/android/server/RCPManagerService;->clearBridgeProxyPrefs(I)V
    invoke-static {v0, v1}, Lcom/android/server/RCPManagerService;->access$1800(Lcom/android/server/RCPManagerService;I)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    monitor-exit v21

    goto/16 :goto_0

    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 1323
    .end local v16    # "proxyPreferences":Landroid/content/SharedPreferences;
    .end local v18    # "removedPackage":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1325
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 1327
    .local v8, "changedPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/RCPManagerService;->access$1600(Lcom/android/server/RCPManagerService;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1328
    const-string v20, "Bridge_PROXY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " PackageReceiver onReceive() ACTION_PACKAGE_CHANGED "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/RCPManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RCPProxyForUser"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1334
    .restart local v16    # "proxyPreferences":Landroid/content/SharedPreferences;
    const-string v20, "RCPProxy"

    const-string v21, "com.samsung.knox.rcp.components"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1337
    const-string v20, "android.intent.extra.changed_component_name_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1339
    .local v10, "components":[Ljava/lang/String;
    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v20, v0

    if-lez v20, :cond_0

    .line 1340
    move-object v6, v10

    .local v6, "arr$":[Ljava/lang/String;
    array-length v14, v6

    .local v14, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_1
    if-ge v12, v14, :cond_0

    aget-object v9, v6, v12

    .line 1341
    .local v9, "component":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1343
    :try_start_2
    const-string/jumbo v20, "package"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v13

    .line 1345
    .restart local v13    # "iPM":Landroid/content/pm/IPackageManager;
    const/16 v20, 0x80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v13, v8, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1347
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/RCPManagerService;->KNOX_DEBUG:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/RCPManagerService;->access$1600(Lcom/android/server/RCPManagerService;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1348
    const-string v20, "Bridge_PROXY"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " PackageReceiver : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " appInfo.enabled = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-boolean v0, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_6
    iget-boolean v0, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 1354
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "Enabled"

    invoke-interface/range {v20 .. v21}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v21, v0

    # invokes: Lcom/android/server/RCPManagerService;->startBridgeProxy(I)V
    invoke-static/range {v20 .. v21}, Lcom/android/server/RCPManagerService;->access$1900(Lcom/android/server/RCPManagerService;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1368
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "iPM":Landroid/content/pm/IPackageManager;
    :catch_1
    move-exception v11

    .line 1369
    .restart local v11    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/RCPManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/RCPManagerService;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, " PacakgeReceiver : received ACTION_PACKAGE_CHANGED - Exception"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1340
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1359
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v13    # "iPM":Landroid/content/pm/IPackageManager;
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v21

    monitor-enter v21
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1360
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    # invokes: Lcom/android/server/RCPManagerService;->unregisterBridgeProxy(I)V
    invoke-static {v0, v1}, Lcom/android/server/RCPManagerService;->access$1000(Lcom/android/server/RCPManagerService;I)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->this$0:Lcom/android/server/RCPManagerService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/RCPManagerService;->mBridgeProxyAliveList:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/RCPManagerService;->access$900(Lcom/android/server/RCPManagerService;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/RCPManagerService$PackageReceiver;->mUserId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v22, "Enabled"

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1365
    monitor-exit v21

    goto/16 :goto_0

    :catchall_1
    move-exception v20

    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v20
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method
