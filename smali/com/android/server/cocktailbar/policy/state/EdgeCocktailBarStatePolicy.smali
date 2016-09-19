.class public Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;
.super Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.source "EdgeCocktailBarStatePolicy.java"


# static fields
.field private static final COCKTAIL_BAR_STATE_LOCK_INVISIBLE:I = 0x6

.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_APP:I = 0x20000

.field private static final COCKTAIL_BAR_STATE_LOCK_SHOW_BY_SYSTEM:I = 0x10000

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final COCKTAIL_BAR_SHOWING_DURATION:I

.field private final mCocktailSize:I

.field private mCurrentCocktailSize:I

.field private mDimBackground:Z

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 17
    const-class v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    .line 19
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    .line 23
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->COCKTAIL_BAR_SHOWING_DURATION:I

    .line 32
    iput-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    .line 36
    iput v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    .line 40
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCocktailSize:I

    .line 43
    return-void
.end method

.method private canUpdateVisibility(III)Z
    .locals 5
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 315
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 316
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v2, :cond_2

    .line 320
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 321
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string v2, "canUpdateVisibility: visibility is same as the current one"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_1
    :goto_0
    return v0

    .line 325
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 347
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUpdateVisibility: invalide type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    move v0, v1

    .line 328
    goto :goto_0

    .line 329
    :cond_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_1

    move v0, v1

    .line 332
    goto :goto_0

    .line 335
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 337
    const/4 v2, 0x6

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    :cond_4
    move v0, v1

    .line 340
    goto :goto_0

    .line 341
    :cond_5
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v2, p3

    if-nez v2, :cond_1

    move v0, v1

    .line 344
    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I
    .locals 3
    .param p1, "a"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .param p2, "b"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "changeFlag":I
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-eq v1, v2, :cond_0

    .line 424
    or-int/lit8 v0, v0, 0x1

    .line 426
    :cond_0
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    if-eq v1, v2, :cond_1

    .line 427
    or-int/lit8 v0, v0, 0x2

    .line 429
    :cond_1
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    if-eq v1, v2, :cond_2

    .line 430
    or-int/lit8 v0, v0, 0x8

    .line 432
    :cond_2
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    if-eq v1, v2, :cond_3

    .line 433
    or-int/lit8 v0, v0, 0x20

    .line 435
    :cond_3
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    iget v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    if-eq v1, v2, :cond_4

    .line 436
    or-int/lit8 v0, v0, 0x10

    .line 438
    :cond_4
    iget-boolean v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    iget-boolean v2, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, v2, :cond_5

    .line 439
    or-int/lit8 v0, v0, 0x40

    .line 441
    :cond_5
    return v0
.end method

.method private getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 3

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 405
    .local v0, "currentStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 406
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 407
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 408
    return-object v0
.end method

.method private needToRefreshHideTimer(I)Z
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x1

    .line 306
    if-ne p1, v0, :cond_0

    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needToUpdateVisibility(III)Z
    .locals 8
    .param p1, "windowType"    # I
    .param p2, "visibility"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 353
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 354
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needToUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mLockState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v4, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    if-ne p2, v2, :cond_2

    .line 358
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 359
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "needToUpdateVisibility: visibility is same as the current one"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_1
    :goto_0
    return v0

    .line 363
    :cond_2
    packed-switch p2, :pswitch_data_0

    .line 389
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needToUpdateVisibility: invalid type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    move v0, v1

    .line 366
    goto :goto_0

    .line 367
    :cond_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x6

    if-nez v2, :cond_1

    .line 369
    if-eq p1, v7, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    .line 373
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/2addr v2, p3

    if-eqz v2, :cond_1

    move v0, v1

    .line 374
    goto :goto_0

    .line 379
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 381
    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_4

    if-ne p1, v5, :cond_1

    :cond_4
    move v0, v1

    .line 384
    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 3
    .param p1, "oldStateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 413
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 414
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 415
    invoke-direct {p0, v0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->compareStateInfo(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 416
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    if-lez v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 419
    :cond_0
    return-void
.end method

.method private updateCocktailBarVisibility(IJ)V
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 395
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 396
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->sendMessageChangeVisibility(IJ)V

    .line 401
    :goto_0
    return-void

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleChangeVisibility(I)V

    goto :goto_0
.end method

.method private updateSysfsBarLength()V
    .locals 3

    .prologue
    .line 446
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 448
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCocktailSize:I

    div-int/lit8 v0, v1, 0x2

    .line 452
    .local v0, "temp":I
    :goto_0
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    if-eq v0, v1, :cond_0

    .line 453
    iput v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    .line 454
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCurrentCocktailSize:I

    invoke-static {v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateSysfsBarLength(I)V

    .line 456
    :cond_0
    return-void

    .line 450
    .end local v0    # "temp":I
    :cond_1
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mCocktailSize:I

    .restart local v0    # "temp":I
    goto :goto_0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    .prologue
    .line 300
    invoke-super {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDimBackground : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    return-object v0
.end method

.method public getBackgroundType()I
    .locals 4

    .prologue
    .line 273
    iget v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    packed-switch v1, :pswitch_data_0

    .line 285
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    if-eqz v1, :cond_1

    .line 286
    const/4 v0, 0x2

    .line 291
    .local v0, "bgType":I
    :goto_0
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 292
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBackgroundType: bgType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDimBackground = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    return v0

    .line 275
    .end local v0    # "bgType":I
    :pswitch_0
    const/4 v0, 0x2

    .line 276
    .restart local v0    # "bgType":I
    goto :goto_0

    .line 282
    .end local v0    # "bgType":I
    :pswitch_1
    const/4 v0, 0x1

    .line 283
    .restart local v0    # "bgType":I
    goto :goto_0

    .line 288
    .end local v0    # "bgType":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "bgType":I
    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleChangeVisibility(I)V
    .locals 7
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x1

    .line 246
    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 247
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleChangeVisibility: visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    const v2, 0x30001

    .line 251
    .local v2, "mask":I
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const v5, 0x30001

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v3

    .line 253
    .local v3, "newStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput p1, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput p1, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    .line 254
    iput v0, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 255
    if-ne p1, v0, :cond_3

    .line 258
    .local v0, "bVisibility":Z
    :goto_0
    :try_start_0
    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 259
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cocktailBarVisibilityChanged: visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, v0}, Landroid/view/IWindowManager;->cocktailBarVisibilityChanged(Z)V

    .line 262
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v4, v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 263
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateSysfsBarLength()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "bVisibility":Z
    .end local v3    # "newStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_2
    :goto_1
    return-void

    .line 255
    .restart local v3    # "newStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 264
    .restart local v0    # "bVisibility":Z
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleChangeVisibility : RemoteException + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 231
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 232
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handleNotifyCurrentStateToBinder"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 235
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 236
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 237
    const/16 v1, 0x5b

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 241
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, p1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 242
    return-void
.end method

.method public handleNotifyState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 219
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleNotifyCurrentState : state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 223
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 224
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 225
    iput p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 226
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 227
    return-void
.end method

.method public handleRefreshState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 201
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRefreshState: mWindowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLockState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    if-ne v0, v4, :cond_2

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    and-int/lit8 v0, v0, 0x6

    if-eqz v0, :cond_4

    .line 211
    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/high16 v1, 0x30000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    goto :goto_0
.end method

.method public handleUpdateActivate(Z)V
    .locals 4
    .param p1, "activate"    # Z

    .prologue
    .line 180
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 181
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLockState: mActivate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v3, v3, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " activate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget-boolean v1, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    if-eq v1, p1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->clone()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 186
    .local v0, "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getBackgroundType()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    .line 187
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 188
    iput-boolean p1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    .line 189
    iget v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    .line 190
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;->notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z

    .line 192
    .end local v0    # "stateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    :cond_1
    return-void
.end method

.method public handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
    .locals 0
    .param p1, "windowType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 197
    return-void
.end method

.method public handleUpdatePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 142
    return-void
.end method

.method public handleUpdateState(ZZ)V
    .locals 8
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    .line 147
    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 148
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleUpdateStatus: shift = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dimBackground = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const-wide/16 v2, 0x64

    .line 152
    .local v2, "delay":J
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 153
    .local v0, "backupStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    const v1, 0x30001

    .line 155
    .local v1, "mask":I
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 156
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v5, -0x1

    iput v5, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 157
    if-nez p1, :cond_2

    .line 158
    const/high16 v4, 0x20000

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 159
    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v5, 0x1

    const v6, 0x30001

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    const/4 v4, 0x1

    const-wide/16 v6, 0x64

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    .line 174
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mDimBackground:Z

    .line 175
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 176
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_0

    .line 166
    :cond_2
    const/high16 v4, 0x20000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 167
    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v5, 0x2

    const v6, 0x30001

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 169
    const/4 v4, 0x2

    const-wide/16 v6, 0x64

    invoke-direct {p0, v4, v6, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_0
.end method

.method public handleUpdateStateFromSystem(IZ)V
    .locals 13
    .param p1, "windowType"    # I
    .param p2, "delayed"    # Z

    .prologue
    const/4 v12, -0x1

    const-wide/16 v10, 0x64

    const v9, 0x20001

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 71
    sget-boolean v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 72
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleUpdateStateFromSystem: Current Info windowType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " visibility = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v6, v6, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleUpdateStateFromSystem: New windowType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->hasMessageUpdateStateFromSystemDelayed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageUpdateStateFromSystemDelayed()V

    .line 79
    :cond_1
    if-nez p2, :cond_2

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 81
    sget-object v4, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "handleUpdateStateFromSystem: updateStateFromSystemDelayed from keyguard to statusbar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->sendMessageUpdateStateFromSystemDelayed(IJ)V

    .line 138
    :goto_0
    return-void

    .line 85
    :cond_2
    const-wide/16 v2, 0x64

    .line 86
    .local v2, "delay":J
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 87
    .local v0, "backupStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    const v1, 0x20001

    .line 89
    .local v1, "mask":I
    packed-switch p1, :pswitch_data_0

    .line 120
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 121
    const/high16 v4, 0x10000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 122
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v12, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 123
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v7, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 124
    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 126
    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    .line 135
    :goto_1
    iput p1, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    .line 136
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 137
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateSysfsBarLength()V

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 94
    const/high16 v4, 0x10000

    invoke-virtual {p0, v4, v7}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 95
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v12, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 96
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v7, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 97
    invoke-direct {p0, p1, v7, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    invoke-direct {p0, v7, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_1

    .line 105
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v8, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    .line 106
    const/high16 v4, 0x10000

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->setLockState(IZ)V

    .line 107
    const/16 v4, 0xbb8

    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 108
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v12, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 109
    invoke-direct {p0, p1, v8, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 111
    invoke-direct {p0, v8, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_1

    .line 116
    :cond_5
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/16 v5, 0xbb8

    iput v5, v4, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    goto :goto_1

    .line 127
    :cond_6
    invoke-direct {p0, p1, v7, v9}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToUpdateVisibility(III)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 129
    invoke-direct {p0, v7, v10, v11}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->clearMessageChangeVisibility()V

    goto :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleUpdateVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const/16 v5, 0xbb8

    .line 47
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 48
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUpdateVisibility: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWindowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->getCurrentStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    .line 52
    .local v0, "backupStateInfo":Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    const v1, 0x30001

    .line 54
    .local v1, "mask":I
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->needToRefreshHideTimer(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->refreshHideTimer(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    invoke-virtual {p0, v5}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->startHideTimer(I)V

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput v5, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    .line 63
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->notifyStateInfoIfNeeds(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 64
    iget v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mWindowType:I

    const v3, 0x30001

    invoke-direct {p0, v2, p1, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->canUpdateVisibility(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->updateCocktailBarVisibility(IJ)V

    .line 67
    :cond_2
    return-void

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->cancelHideTimer()V

    .line 61
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v3, -0x1

    iput v3, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    goto :goto_0
.end method
