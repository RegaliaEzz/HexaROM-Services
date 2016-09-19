.class Lcom/android/server/am/ActivityManagerService$20;
.super Landroid/os/CountDownTimer;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 17258
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 17283
    const-string v0, "BootTimer"

    const-string/jumbo v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17284
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->cpuCheckTimer:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2300(Lcom/android/server/am/ActivityManagerService;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 17285
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/am/ActivityManagerService;->cpuCheckTimer:Landroid/os/CountDownTimer;
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$2302(Lcom/android/server/am/ActivityManagerService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 17286
    return-void
.end method

.method public onTick(J)V
    .locals 8
    .param p1, "duration"    # J

    .prologue
    .line 17260
    const/4 v1, 0x0

    .line 17261
    .local v1, "freq":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 17263
    .local v3, "online":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17264
    .end local v1    # "freq":Ljava/io/BufferedReader;
    .local v2, "freq":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/cpu/online"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17265
    .end local v3    # "online":Ljava/io/BufferedReader;
    .local v4, "online":Ljava/io/BufferedReader;
    :try_start_2
    const-string v5, "BootTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17270
    if-eqz v2, :cond_0

    .line 17271
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 17273
    :cond_0
    if-eqz v4, :cond_1

    .line 17274
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v3, v4

    .end local v4    # "online":Ljava/io/BufferedReader;
    .restart local v3    # "online":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 17280
    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return-void

    .line 17276
    .end local v1    # "freq":Ljava/io/BufferedReader;
    .end local v3    # "online":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v4    # "online":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 17277
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "BootTimer"

    const-string v6, "close() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .end local v4    # "online":Ljava/io/BufferedReader;
    .restart local v3    # "online":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 17279
    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_0

    .line 17266
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 17267
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v5, "BootTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BootTimer Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 17270
    if-eqz v1, :cond_3

    .line 17271
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 17273
    :cond_3
    if-eqz v3, :cond_2

    .line 17274
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 17276
    :catch_2
    move-exception v0

    .line 17277
    const-string v5, "BootTimer"

    const-string v6, "close() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 17269
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 17270
    :goto_2
    if-eqz v1, :cond_4

    .line 17271
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 17273
    :cond_4
    if-eqz v3, :cond_5

    .line 17274
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 17278
    :cond_5
    :goto_3
    throw v5

    .line 17276
    :catch_3
    move-exception v0

    .line 17277
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "BootTimer"

    const-string v7, "close() failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 17269
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "freq":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "freq":Ljava/io/BufferedReader;
    .end local v3    # "online":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v4    # "online":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4    # "online":Ljava/io/BufferedReader;
    .restart local v3    # "online":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_2

    .line 17266
    .end local v1    # "freq":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v1    # "freq":Ljava/io/BufferedReader;
    .end local v3    # "online":Ljava/io/BufferedReader;
    .restart local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v4    # "online":Ljava/io/BufferedReader;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "online":Ljava/io/BufferedReader;
    .restart local v3    # "online":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "freq":Ljava/io/BufferedReader;
    .restart local v1    # "freq":Ljava/io/BufferedReader;
    goto :goto_1
.end method
