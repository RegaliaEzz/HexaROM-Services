.class Lcom/sec/epdg/EpdgService$DatabaseAccessTask;
.super Landroid/os/AsyncTask;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseAccessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 5518
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5519
    iput-object p2, p0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->mHandler:Landroid/os/Handler;

    .line 5520
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    .line 5521
    return-void
.end method

.method private doExec()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 5524
    const-class v3, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;

    monitor-enter v3

    .line 5525
    const/4 v1, 0x0

    .line 5527
    .local v1, "error":Z
    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgContentReader;->getInstance()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    # setter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {v2}, Lcom/sec/epdg/EpdgService;->access$702(Lcom/sec/epdg/EpdgContentReader;)Lcom/sec/epdg/EpdgContentReader;

    .line 5528
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgContentReader;->createIWlanApnList(Landroid/content/Context;)V

    .line 5529
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgRead:Lcom/sec/epdg/EpdgContentReader;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$700()Lcom/sec/epdg/EpdgContentReader;

    move-result-object v2

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2200()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/epdg/EpdgContentReader;->readEpdgSettings(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5540
    :goto_0
    :try_start_1
    const-string v2, "[EPDGService]"

    const-string v4, "DatabaseAccessTask:doInBackground - completed"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5541
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    monitor-exit v3

    return-object v2

    .line 5530
    :catch_0
    move-exception v0

    .line 5531
    .local v0, "e":Landroid/database/CursorIndexOutOfBoundsException;
    const-string v2, "[EPDGService]"

    const-string v4, "DatabaseAccessTask:doInBackground - CursorIndexOutOfBoundsException"

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5533
    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    .line 5534
    const/4 v1, 0x1

    .line 5539
    goto :goto_0

    .line 5535
    .end local v0    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 5536
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 5537
    const-string v2, "[EPDGService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled exception in reading Content Provider objects:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/epdg/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 5538
    const/4 v1, 0x1

    goto :goto_0

    .line 5542
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 5547
    const-string v0, "[EPDGService]"

    const-string v1, "DatabaseAccessTask:doInBackground - started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5548
    invoke-direct {p0}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->doExec()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 5515
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 5553
    const-string v0, "[EPDGService]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DatabaseAccessTask:onPostExecute: result is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5557
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5558
    iget-object v0, p0, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->onDbAccessCompleted()V
    invoke-static {v0}, Lcom/sec/epdg/EpdgService;->access$10300(Lcom/sec/epdg/EpdgService;)V

    .line 5563
    :goto_0
    return-void

    .line 5560
    :cond_0
    const-string v0, "[EPDGService]"

    const-string v1, "CRITICAL FAILURE!!! DB IS NOT INITIALIZED"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5561
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgReady:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$10400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5515
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgService$DatabaseAccessTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
