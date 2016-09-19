.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VpnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)V
    .locals 0

    .prologue
    .line 2909
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2912
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2913
    .local v0, "action":Ljava/lang/String;
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Vpn Receiver : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2915
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->isInitialStickyBroadcast()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2916
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2918
    .local v2, "map":Landroid/os/Bundle;
    const-string v8, "com.sec.knox.migrationagent.START_VPN_MIGRATION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2919
    const-string v8, "KnoxVpnEngineService"

    const-string v9, "KnoxVpnMigration : Receive a migration intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isFail()Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2921
    const-string v8, "KnoxVpnEngineService"

    const-string v9, "KnoxVpnMigration : Have to do a migration"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2924
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v8

    if-nez v8, :cond_0

    .line 2925
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    invoke-static {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v10

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1200()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$902(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 2927
    :cond_0
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isAlive()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2928
    const-string v8, "KnoxVpnEngineService"

    const-string v9, "KnoxVpnMigration : have received a multiple request for a migration"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    .end local v2    # "map":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 2931
    .restart local v2    # "map":Landroid/os/Bundle;
    :cond_2
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KnoxVpnMigration : start migration : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getState()Ljava/lang/Thread$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getState()Ljava/lang/Thread$State;

    move-result-object v8

    const-string v9, "NEW"

    invoke-static {v9}, Ljava/lang/Thread$State;->valueOf(Ljava/lang/String;)Ljava/lang/Thread$State;

    move-result-object v9

    if-ne v8, v9, :cond_3

    .line 2933
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->start()V

    goto :goto_0

    .line 2936
    :cond_3
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    invoke-static {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v10

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1200()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$902(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 2937
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->start()V

    goto :goto_0

    .line 2943
    :cond_4
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v8

    if-nez v8, :cond_5

    .line 2944
    new-instance v8, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    invoke-static {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-result-object v10

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mKnoxEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1200()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$902(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    .line 2946
    :cond_5
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->mMigration:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$900()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    move-result-object v8

    const/4 v9, 0x1

    const-string v10, "Successful"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2951
    :cond_6
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2952
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 2953
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 2954
    .local v4, "packageName":Ljava/lang/String;
    :goto_1
    const-string v8, "android.intent.extra.REPLACING"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2955
    .local v1, "extra_replacing":Z
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Vpn Receiver : The extra value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :cond_7
    const-string v8, "android.intent.extra.UID"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2957
    .local v6, "uid":I
    const/4 v8, -0x1

    if-le v6, v8, :cond_1

    .line 2958
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Vpn Receiver : Package Added = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    :cond_8
    const-string/jumbo v8, "uid"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2960
    const-string/jumbo v8, "package"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    const-string/jumbo v8, "new_install_or_update"

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2962
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v9, 0x2

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2953
    .end local v1    # "extra_replacing":Z
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    .line 2965
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_a
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2966
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 2967
    .restart local v7    # "uri":Landroid/net/Uri;
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 2968
    .restart local v4    # "packageName":Ljava/lang/String;
    :goto_2
    const-string v8, "android.intent.extra.UID"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2969
    .restart local v6    # "uid":I
    const-string v8, "android.intent.extra.REPLACING"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 2970
    .restart local v1    # "extra_replacing":Z
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Vpn Receiver : Package Removed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_b
    const-string/jumbo v8, "uid"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2972
    const-string/jumbo v8, "package"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    const-string/jumbo v8, "new_install_or_update"

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2974
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v9, 0x3

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2967
    .end local v1    # "extra_replacing":Z
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_c
    const/4 v4, 0x0

    goto :goto_2

    .line 2977
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_d
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2978
    const-string v8, "KnoxVpnEngineService"

    const-string v9, "Airplane Event received."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    const-string/jumbo v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 2980
    .local v5, "state":Z
    if-eqz v5, :cond_1

    .line 2981
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v9, 0x14

    const/4 v10, 0x0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2984
    .end local v5    # "state":Z
    :cond_e
    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 2985
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v9, 0x15

    const/4 v10, 0x0

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2987
    :cond_f
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 2988
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2989
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v9, 0xf

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2991
    :cond_10
    const-string v8, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 2992
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2993
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v9, 0x9

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2995
    :cond_11
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 2996
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2997
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v9, 0xd

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2999
    :cond_12
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 3000
    const-string/jumbo v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 3001
    .local v3, "ni":Landroid/net/NetworkInfo;
    const-string v8, "KnoxVpnEngineService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "change in connectivity has occured  for the network type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    const/16 v9, 0x11

    if-eq v8, v9, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    .line 3003
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3004
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v9, 0x4

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3007
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    :cond_13
    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 3008
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3009
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v9, 0x6

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3012
    :cond_14
    const-string v8, "com.sec.enterprise.mdm.services.vpn.INTERFACE_STATUS"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 3013
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3014
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/4 v9, 0x1

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3026
    :cond_15
    const-string v8, "com.sec.enterprise.mdm.services.vpn.RETRY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 3027
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3028
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v9, 0xb

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3029
    :cond_16
    const-string/jumbo v8, "enterprise.container.admin.changed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 3030
    const-string v8, "android.intent.extra.user_handle"

    const-string v9, "containerid"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3031
    const-string v8, "android.intent.extra.UID"

    const-string v9, "android.intent.extra.UID"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3032
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v9, 0xc

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 3033
    :cond_17
    const-string/jumbo v8, "send_knoxvpn_proxy_broadcast"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3034
    const-string v8, "caller"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3035
    .restart local v6    # "uid":I
    const-string/jumbo v8, "uid"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3036
    iget-object v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnReceiver;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    const/16 v9, 0x12

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    invoke-static {v8, v9, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILandroid/os/Bundle;)V

    goto/16 :goto_0
.end method
