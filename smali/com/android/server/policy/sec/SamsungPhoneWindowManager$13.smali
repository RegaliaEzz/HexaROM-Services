.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 3159
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3161
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$400(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    .line 3162
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3163
    return-void
.end method
