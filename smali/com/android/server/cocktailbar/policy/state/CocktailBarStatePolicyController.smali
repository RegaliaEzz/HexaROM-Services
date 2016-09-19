.class public Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
.super Ljava/lang/Object;
.source "CocktailBarStatePolicyController.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

.field private mStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 22
    const-class v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->initialize()V

    .line 49
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .line 38
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getValidVisibility(I)I
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    .line 133
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getLockState()I

    move-result v0

    .line 134
    .local v0, "lockstate":I
    if-ne p1, v1, :cond_2

    .line 135
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 146
    .end local p1    # "visibility":I
    :cond_0
    :goto_0
    return p1

    .line 137
    .restart local p1    # "visibility":I
    :cond_1
    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_0

    .line 138
    const/4 p1, 0x2

    goto :goto_0

    .line 143
    :cond_2
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    move p1, v1

    .line 144
    goto :goto_0
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 2

    .prologue
    .line 152
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string v1, "activateCocktailBar"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateActivate(Z)V

    .line 156
    return-void
.end method

.method public deactivateCocktailBar()V
    .locals 2

    .prologue
    .line 159
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "deactivateCocktailBar"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateActivate(Z)V

    .line 163
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 6

    .prologue
    .line 340
    const-string v2, "[CocktailBarStatePolicy] "

    .line 341
    .local v2, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 343
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 344
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 345
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    goto :goto_0

    .line 348
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v4}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    return-object v2

    .line 348
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWindowType()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getWindowType()I

    move-result v0

    return v0
.end method

.method public hideAndLockCocktailBar(ZI)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "id"    # I

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideAndLockCocktailBar : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->setLockState(IZI)V

    .line 121
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->refreshState()V

    .line 122
    return-void
.end method

.method public notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z
    .locals 5
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 222
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 223
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyCocktailBarState: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " backgroundType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showtimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " activate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 233
    :try_start_0
    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    const/16 v4, 0x80

    if-ne v2, v4, :cond_3

    .line 234
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 235
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_0

    .line 244
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 240
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 241
    .restart local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_1

    .line 244
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    const/4 v2, 0x1

    return v2
.end method

.method public notifyCocktailBarStateExceptCallingPackage(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 250
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 251
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyCocktailBarStateExceptCallingPackage: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 256
    :try_start_0
    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    const/16 v4, 0x80

    if-ne v2, v4, :cond_3

    .line 257
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 258
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    if-eqz p2, :cond_2

    iget-object v2, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 259
    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_0

    .line 267
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 263
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 264
    .restart local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_1

    .line 267
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    const/4 v2, 0x1

    return v2
.end method

.method public notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    .line 273
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 274
    sget-object v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyCocktailBarStateToBinder: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " backgroundType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showtimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 280
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    iget-object v2, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-virtual {v1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .line 285
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_2
    monitor-exit v3

    .line 286
    const/4 v2, 0x1

    return v2

    .line 285
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 175
    iget-object v8, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 177
    .local v0, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    if-eqz v0, :cond_0

    .line 178
    iget-object v1, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerListenerCallback : already registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    monitor-exit v8

    .line 194
    :goto_0
    return-void

    .line 184
    .end local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_1
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;-><init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .restart local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    iget-object v2, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->notifyStateToBinder(Landroid/os/IBinder;)V

    .line 193
    monitor-exit v8

    goto :goto_0

    .end local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 188
    .restart local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    .line 189
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListenerCallback : exception in linkToDeath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public restrictCocktailBar(ZI)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "id"    # I

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restrictCocktailBar : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->setLockState(IZI)V

    .line 129
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->refreshState()V

    .line 130
    return-void
.end method

.method public showAndLockCocktailBar(ZI)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    .line 109
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAndLockCocktailBar : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, v3, p1, v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->setLockState(IZI)V

    .line 113
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getValidVisibility(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateVisibility(I)V

    .line 114
    return-void
.end method

.method public unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 197
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "listenerInfo":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .line 200
    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    if-eqz v1, :cond_0

    .line 201
    iget-object v3, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    move-object v2, v1

    goto :goto_0

    .line 206
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_1
    if-nez v2, :cond_2

    .line 207
    sget-object v3, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerListenerCallback : cannot find the matched listener"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    monitor-exit v4

    .line 218
    :goto_1
    return-void

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 211
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 213
    :cond_3
    if-eqz v2, :cond_4

    .line 214
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 216
    :cond_4
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 217
    monitor-exit v4

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateCocktailBarStatus(ZZ)V
    .locals 3
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    .line 102
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCocktailBarStatus: shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dimBackground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateState(ZZ)V

    .line 106
    return-void
.end method

.method public updatePosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updatePosition(I)V

    .line 70
    return-void
.end method

.method public updateStateFromSystem(I)V
    .locals 3
    .param p1, "windowType"    # I

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStateFromSystem: windowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateStateFromSystem(I)V

    .line 63
    return-void
.end method

.method public updateVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateVisibility: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateVisibility(I)V

    .line 56
    return-void
.end method

.method public updateWindowType(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "windowType"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v1

    iget v0, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .line 74
    .local v0, "currentWindowType":I
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindowType: currentWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " windowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    if-eqz p1, :cond_1

    .line 78
    packed-switch p2, :pswitch_data_0

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_2
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_1
    if-ne v0, p2, :cond_3

    .line 87
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateWindowType: current window type is requested window type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
