.class Lcom/android/server/power/PowerManagerService$12;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->dumpDebugLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 7368
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$12;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 7370
    const/4 v2, 0x0

    .line 7373
    .local v2, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v5, "/data/log"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7374
    .local v0, "dataLogDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 7375
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 7378
    :cond_0
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/bin/sh"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "-c"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "logcat -v threadtime -d -b events -b system -b main > /data/log/dumpState_LastAutoPowerOff.log"

    aput-object v6, v4, v5

    .line 7380
    .local v4, "shellCommandForLogcat":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 7381
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 7383
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/bin/sh"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "-c"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "dumpsys power >> /data/log/dumpState_LastAutoPowerOff.log"

    aput-object v6, v3, v5

    .line 7384
    .local v3, "shellCommandForDumpsys":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 7385
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 7394
    .end local v0    # "dataLogDirectory":Ljava/io/File;
    .end local v3    # "shellCommandForDumpsys":[Ljava/lang/String;
    .end local v4    # "shellCommandForLogcat":[Ljava/lang/String;
    :goto_0
    const-string v5, "PowerManagerService"

    const-string/jumbo v6, "dumpDebugLog -"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7395
    return-void

    .line 7386
    :catch_0
    move-exception v1

    .line 7387
    .local v1, "exception":Ljava/io/IOException;
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dumpDebugLog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7388
    .end local v1    # "exception":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 7389
    .local v1, "exception":Ljava/lang/SecurityException;
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dumpDebugLog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7390
    .end local v1    # "exception":Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    .line 7391
    .local v1, "exception":Ljava/lang/InterruptedException;
    const-string v5, "PowerManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dumpDebugLog : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
