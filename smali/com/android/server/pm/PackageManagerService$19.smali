.class Lcom/android/server/pm/PackageManagerService$19;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$flags:I

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;ILandroid/content/pm/IPackageDeleteObserver2;)V
    .locals 0

    .prologue
    .line 19438
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$19;->val$flags:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 19440
    const-string v6, "PackageManager"

    const-string v7, "MSG"

    const-string v8, "DELETE_PACKAGE_AS_USER"

    invoke-static {v7, v8}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19441
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v6, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19442
    const/4 v3, 0x1

    .line 19444
    .local v3, "returnCode":I
    const-string v6, "application_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 19445
    .local v0, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    .line 19446
    .local v2, "edmUserid":I
    const-string v6, "PackageManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deletePackage- pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", edmuserId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19447
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$19;->val$flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 19448
    const/4 v2, -0x1

    .line 19450
    :cond_0
    const-string v6, "PackageManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deletePackage- pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", edmuserId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19451
    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 19453
    const-string v6, "PackageManager"

    const-string v7, "This app uninstallation is not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19454
    const/4 v3, -0x1

    .line 19462
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    if-ltz v3, :cond_2

    move v4, v5

    :cond_2
    iget v7, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    invoke-static {v6, v4, v7}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    .line 19463
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    if-eqz v4, :cond_3

    .line 19465
    :try_start_0
    const-string v4, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "result of delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19467
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$19;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v3, v7}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19472
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    .line 19473
    return-void

    .line 19457
    :cond_4
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$19;->val$userId:I

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$19;->val$flags:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;II)I
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/pm/PackageManagerService;->access$6200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v3

    .line 19458
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$19;->val$packageName:Ljava/lang/String;

    const-string/jumbo v7, "jp.co.mmbi.app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 19459
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$19;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const-string v7, "android.uid.mmbi"

    const/16 v8, 0x2392

    invoke-virtual {v6, v7, v8, v5, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    goto :goto_0

    .line 19468
    :catch_0
    move-exception v1

    .line 19469
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v6, "Observer no longer exists."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
