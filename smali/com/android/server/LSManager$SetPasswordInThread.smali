.class Lcom/android/server/LSManager$SetPasswordInThread;
.super Ljava/lang/Object;
.source "LSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPasswordInThread"
.end annotation


# instance fields
.field private pass:[B

.field final synthetic this$0:Lcom/android/server/LSManager;


# direct methods
.method constructor <init>(Lcom/android/server/LSManager;[B)V
    .locals 3
    .param p2, "inPass"    # [B

    .prologue
    const/4 v2, 0x0

    .line 762
    iput-object p1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    .line 763
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    .line 764
    iget-object v0, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 765
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 769
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "SetPasswordInThread.run()"

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    array-length v1, v1

    if-nez v1, :cond_2

    .line 772
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsProtected()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$500(Lcom/android/server/LSManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 773
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Already deleted."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string/jumbo v2, "p:Going to wait 1111 ms..."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 781
    const-wide/16 v2, 0x457

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_1
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p:mSetPasswordExecutor.getQueue().size() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 787
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p:mSetPasswordExecutor.getActiveCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 788
    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 789
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Skip this thread."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 792
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    array-length v1, v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    iget-object v2, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    # invokes: Lcom/android/server/LSManager;->passwordIsNumeric([B)Z
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$900(Lcom/android/server/LSManager;[B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 794
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsProtected()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$500(Lcom/android/server/LSManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 795
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Initiating password delete procedure..."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 796
    # getter for: Lcom/android/server/LSManager;->mSetPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$100()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/android/server/LSManager$SetPasswordInThread;

    iget-object v3, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    new-array v4, v4, [B

    invoke-direct {v2, v3, v4}, Lcom/android/server/LSManager$SetPasswordInThread;-><init>(Lcom/android/server/LSManager;[B)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 799
    :cond_3
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Skip incoming pass."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 803
    :cond_4
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->isReady()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$1000(Lcom/android/server/LSManager;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 804
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->isLockedState()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$300(Lcom/android/server/LSManager;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 805
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Not locked."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 806
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    array-length v1, v1

    if-nez v1, :cond_5

    .line 807
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsProtected()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$500(Lcom/android/server/LSManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 816
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string/jumbo v2, "re_encrypt with def pass.."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 817
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # getter for: Lcom/android/server/LSManager;->mDefaultPassword:[B
    invoke-static {}, Lcom/android/server/LSManager;->access$1100()[B

    move-result-object v2

    # invokes: Lcom/android/server/LSManager;->reEncryptSecretWithPassword([B)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$1200(Lcom/android/server/LSManager;[B)V

    .line 818
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setPasswordProtected(Z)V
    invoke-static {v1, v4}, Lcom/android/server/LSManager;->access$1300(Lcom/android/server/LSManager;Z)V

    goto/16 :goto_0

    .line 822
    :cond_5
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Incomming pass."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 823
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsReady()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$1400(Lcom/android/server/LSManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 824
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    iget-object v2, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    # invokes: Lcom/android/server/LSManager;->reEncryptSecretWithPassword([B)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$1200(Lcom/android/server/LSManager;[B)V

    .line 840
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->secretIsReady()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$600(Lcom/android/server/LSManager;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 841
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Looks like first password."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 842
    # getter for: Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;
    invoke-static {}, Lcom/android/server/LSManager;->access$700()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([B[BI)I

    .line 843
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->generateSecret()V
    invoke-static {v1}, Lcom/android/server/LSManager;->access$1600(Lcom/android/server/LSManager;)V

    .line 846
    :cond_7
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsReady()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$1400(Lcom/android/server/LSManager;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 847
    # getter for: Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;
    invoke-static {}, Lcom/android/server/LSManager;->access$700()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    iget-object v3, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # getter for: Lcom/android/server/LSManager;->dkek:[B
    invoke-static {v3}, Lcom/android/server/LSManager;->access$1500(Lcom/android/server/LSManager;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([B[BI)I

    .line 848
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setPasswordReady(Z)V
    invoke-static {v1, v5}, Lcom/android/server/LSManager;->access$400(Lcom/android/server/LSManager;Z)V

    .line 853
    :cond_8
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setPasswordProtected(Z)V
    invoke-static {v1, v5}, Lcom/android/server/LSManager;->access$1300(Lcom/android/server/LSManager;Z)V

    .line 854
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setLockedState(Z)V
    invoke-static {v1, v4}, Lcom/android/server/LSManager;->access$200(Lcom/android/server/LSManager;Z)V

    .line 858
    :goto_3
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([BB)V

    goto/16 :goto_0

    .line 828
    :cond_9
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    array-length v1, v1

    if-nez v1, :cond_a

    .line 829
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "First launch?.."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 832
    :cond_a
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->secretIsReady()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$600(Lcom/android/server/LSManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsProtected()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$500(Lcom/android/server/LSManager;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 833
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Back to work!"

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    .line 834
    # getter for: Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;
    invoke-static {}, Lcom/android/server/LSManager;->access$700()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v1

    # getter for: Lcom/android/server/LSManager;->mDefaultPassword:[B
    invoke-static {}, Lcom/android/server/LSManager;->access$1100()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # getter for: Lcom/android/server/LSManager;->dkek:[B
    invoke-static {v3}, Lcom/android/server/LSManager;->access$1500(Lcom/android/server/LSManager;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([B[BI)I

    .line 835
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    iget-object v2, p0, Lcom/android/server/LSManager$SetPasswordInThread;->pass:[B

    # invokes: Lcom/android/server/LSManager;->reEncryptSecretWithPassword([B)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$1200(Lcom/android/server/LSManager;[B)V

    goto/16 :goto_2

    .line 856
    :cond_b
    iget-object v1, p0, Lcom/android/server/LSManager$SetPasswordInThread;->this$0:Lcom/android/server/LSManager;

    # getter for: Lcom/android/server/LSManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/LSManager;->access$1700(Lcom/android/server/LSManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SS is not ready..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
