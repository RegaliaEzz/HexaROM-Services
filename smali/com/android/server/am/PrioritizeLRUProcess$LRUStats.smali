.class Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;
.super Ljava/lang/Object;
.source "PrioritizeLRUProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PrioritizeLRUProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LRUStats"
.end annotation


# instance fields
.field basePackage:I

.field iLruWeight:I

.field launchCount:I

.field final synthetic this$0:Lcom/android/server/am/PrioritizeLRUProcess;


# direct methods
.method constructor <init>(Lcom/android/server/am/PrioritizeLRUProcess;)V
    .locals 1

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->this$0:Lcom/android/server/am/PrioritizeLRUProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->basePackage:I

    .line 322
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->iLruWeight:I

    .line 323
    return-void
.end method


# virtual methods
.method public getBasePackage()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->basePackage:I

    return v0
.end method

.method public getILruWeight()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->iLruWeight:I

    return v0
.end method

.method public getLaunchCount()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    return v0
.end method

.method public setBasePackage(I)V
    .locals 0
    .param p1, "basePackage"    # I

    .prologue
    .line 339
    iput p1, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->basePackage:I

    .line 341
    return-void
.end method

.method public setILruWeight()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public setILruWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->iLruWeight:I

    .line 365
    return-void
.end method

.method public setLaunchCount(I)V
    .locals 0
    .param p1, "launchCount"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    .line 331
    invoke-virtual {p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setILruWeight()V

    .line 332
    return-void
.end method

.method public updateLaunchCount()V
    .locals 2

    .prologue
    .line 345
    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->basePackage:I

    if-nez v0, :cond_0

    .line 346
    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    .line 347
    iget v0, p0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 348
    const/4 v0, 0x1

    # setter for: Lcom/android/server/am/PrioritizeLRUProcess;->doNormalize:Z
    invoke-static {v0}, Lcom/android/server/am/PrioritizeLRUProcess;->access$002(Z)Z

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setILruWeight()V

    .line 353
    return-void
.end method
