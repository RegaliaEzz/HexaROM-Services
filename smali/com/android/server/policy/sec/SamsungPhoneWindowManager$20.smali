.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$feature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4354
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;->val$feature:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4358
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4359
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "app_id"

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4360
    const-string/jumbo v3, "feature"

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;->val$feature:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
    const-string/jumbo v3, "extra"

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;->val$extra:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4363
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4364
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4365
    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4366
    const-string v3, "com.samsung.android.providers.context"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4367
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4377
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 4372
    :catch_0
    move-exception v2

    .line 4373
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "insetLog Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4374
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4375
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3
.end method
