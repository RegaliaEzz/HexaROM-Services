.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->stopEasyOneHandervice(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field final synthetic val$stopReason:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0

    .prologue
    .line 3512
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;->val$stopReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3515
    :try_start_0
    iget v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;->val$stopReason:I

    if-nez v2, :cond_0

    .line 3516
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.EASYONEHAND_SERVICE_SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3517
    .local v1, "eohIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyonehand"

    const-string v4, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3518
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3523
    .end local v1    # "eohIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 3520
    :catch_0
    move-exception v0

    .line 3521
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
