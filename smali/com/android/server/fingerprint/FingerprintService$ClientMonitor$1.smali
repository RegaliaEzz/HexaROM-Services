.class Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 0

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1134
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v5, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v5}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 1135
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v2, :cond_1

    .line 1136
    const-string v5, "FingerprintService"

    const-string v6, "ClientMonitor binderDied: no fingeprintd!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iput-object v10, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 1148
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v5, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    invoke-static {v5, v6}, Lcom/android/server/fingerprint/FingerprintService;->access$1300(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 1149
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iput-object v10, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1150
    return-void

    .line 1138
    :cond_1
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v5, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    invoke-static {v5}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v5, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    invoke-static {v5}, Lcom/android/server/fingerprint/FingerprintService;->access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v5, v6, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v5, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    invoke-static {v5}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v5, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    invoke-static {v5}, Lcom/android/server/fingerprint/FingerprintService;->access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor$1;->this$1:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-ne v5, v6, :cond_0

    .line 1140
    :cond_3
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1141
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v4

    .line 1142
    .local v4, "result":I
    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientMonitor binderDied: cancel() FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1143
    .end local v0    # "begin":J
    .end local v4    # "result":I
    :catch_0
    move-exception v3

    .line 1144
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "ClientMonitor binderDied: cancel()"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
