.class public Lcom/android/server/power/PowerManagerUtil$TraceDumper;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceDumper"
.end annotation


# static fields
.field private static initialized:Z

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;


# instance fields
.field private mDelay:I

.field private final mDumpTraceRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;-><init>(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)V

    iput-object v0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    .line 244
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->initialized:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PmsTraceDumper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 246
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 247
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    .line 248
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->initialized:Z

    .line 250
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    .prologue
    .line 235
    iget v0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDelay:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 272
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_0

    .line 273
    const-string v0, "PowerManagerUtil"

    const-string v1, "Clear trace dumper jobs."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    :cond_0
    return-void
.end method

.method public dumpTrace()V
    .locals 2

    .prologue
    .line 255
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "PowerManagerUtil"

    const-string v1, "Scheduled to dump trace now!"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    :cond_0
    return-void
.end method

.method public dumpTraceWithDelay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 263
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_0

    .line 264
    iput p1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDelay:I

    .line 265
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 266
    sget-object v0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDumpTraceRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->mDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    :cond_0
    return-void
.end method
