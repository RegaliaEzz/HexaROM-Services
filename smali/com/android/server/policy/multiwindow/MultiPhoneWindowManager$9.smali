.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->startMultiWindowRecentsActivity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field final synthetic val$extra:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Z)V
    .locals 0

    .prologue
    .line 1302
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;->val$extra:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 1304
    const-string v0, "com.samsung.android.systemui.recents.SHOW_SPLIT"

    .line 1305
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.android.systemui"

    .line 1306
    .local v4, "pkg":Ljava/lang/String;
    const-string v1, "com.android.systemui.multiwindow.RecentsMultiWindowActivity"

    .line 1308
    .local v1, "activity":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1309
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    const/high16 v6, 0x10800000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1312
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 1313
    .local v5, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v6}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$600(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mTopApplicationWindowMode:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v6}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$600(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 1315
    invoke-virtual {v5, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1319
    :goto_0
    const/high16 v6, 0x2000000

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1320
    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1321
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 1322
    const-string/jumbo v6, "fromNormal"

    iget-boolean v7, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;->val$extra:Z

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1324
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    :goto_1
    iget-object v6, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$9;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "RCLP"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    return-void

    .line 1317
    :cond_0
    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_0

    .line 1325
    :catch_0
    move-exception v2

    .line 1326
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
