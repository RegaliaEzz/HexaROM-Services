.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;
.super Landroid/database/ContentObserver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WakeupPreventionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4528
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .line 4529
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4530
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 4534
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4536
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "wakeup_prevention"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4537
    const-string/jumbo v1, "wakeup_prevention_packages"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4539
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWakeupPrevention()V

    .line 4540
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 4543
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWakeupPrevention()V

    .line 4544
    return-void
.end method
