.class public Lcom/sec/epdg/throttle/ThrottleController;
.super Ljava/lang/Object;
.source "ThrottleController.java"


# static fields
.field private static INSTANCE:Lcom/sec/epdg/throttle/ThrottleController; = null

.field private static final TAG:Ljava/lang/String; = "ThrottleController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsRetryEnabled:Z

.field private mIsThrottleEnabled:Z

.field private mThrottleManagerList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/epdg/throttle/ThrottleManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRetryEnabled"    # Z
    .param p3, "isThrottleEnabled"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    .line 41
    iput-boolean p2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsRetryEnabled:Z

    .line 42
    iput-boolean p3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z

    .line 43
    return-void
.end method

.method private addThrottleManager(Ljava/lang/String;)V
    .locals 5
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    new-instance v1, Lcom/sec/epdg/throttle/ThrottleManager;

    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsRetryEnabled:Z

    iget-boolean v4, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/epdg/throttle/ThrottleManager;-><init>(Landroid/content/Context;ZZ)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;ZZ)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRetryEnabled"    # Z
    .param p2, "isThrottleEnabled"    # Z

    .prologue
    .line 52
    const-class v1, Lcom/sec/epdg/throttle/ThrottleController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "ThrottleController"

    const-string v2, "Created ThrottleController instance"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throttle enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , Retry enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/sec/epdg/throttle/ThrottleController;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleController;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v1

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/throttle/ThrottleController;
    .locals 3

    .prologue
    .line 61
    const-class v1, Lcom/sec/epdg/throttle/ThrottleController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;

    if-nez v0, :cond_0

    .line 62
    const-string v0, "ThrottleController"

    const-string v2, "ThrottleController instance null.Call createInstance() before calling getInstance()"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "ThrottleController instance not found."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 67
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sec/epdg/throttle/ThrottleController;->INSTANCE:Lcom/sec/epdg/throttle/ThrottleController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private handleWifiConnected(Ljava/lang/String;)V
    .locals 4
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v2, "ThrottleController"

    const-string/jumbo v3, "handleWifiConnected. "

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleManager;

    .line 185
    .local v1, "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    invoke-virtual {v1, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->onWifiConnected(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v1    # "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    :cond_0
    return-void
.end method

.method private handleWifiDisconnected()V
    .locals 5

    .prologue
    .line 190
    const-string v3, "ThrottleController"

    const-string/jumbo v4, "handleWifiDisconnected."

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    .local v1, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    .local v0, "apnName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 195
    iget-object v3, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/throttle/ThrottleManager;

    .line 196
    .local v2, "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v2, v0}, Lcom/sec/epdg/throttle/ThrottleManager;->onWifiDisconnected(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v0    # "apnName":Ljava/lang/String;
    .end local v2    # "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getThrottleCount(Ljava/lang/String;)I
    .locals 4
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    const-string v1, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getThrottleCount, apnName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager;->getThrottleTimerCount()I

    move-result v0

    .line 150
    .local v0, "result":I
    const-string v1, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getThrottleCount, apnName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return v0

    .line 144
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized handleWifiStatusChanged(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isWifiConnected"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 156
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 157
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiConnected(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/epdg/throttle/ThrottleController;->handleWifiDisconnected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z
    .locals 3
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/epdg/IWlanError;

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    const-string v0, "ThrottleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isThrottleRequired, apnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleManager;->isThrottleRequired(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isThrottleTimerRunning(Ljava/lang/String;)Z
    .locals 4
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    const-string v1, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isThrottleTimerRunning, apnName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v1, p1}, Lcom/sec/epdg/throttle/ThrottleManager;->isRetryThrottled(Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, "result":Z
    const-string v1, "ThrottleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isThrottleTimerRunning: apnName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return v0

    .line 79
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onSettingUpdated(ZZ)V
    .locals 3
    .param p1, "isRetryEnabled"    # Z
    .param p2, "isThrottleEnabled"    # Z

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsRetryEnabled:Z

    .line 166
    iput-boolean p2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mIsThrottleEnabled:Z

    .line 167
    const-string v0, "ThrottleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings updated. Throttle enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , Retry enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSimChanged()V
    .locals 4

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    const-string v2, "ThrottleController"

    const-string/jumbo v3, "onSimChanged()"

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/throttle/ThrottleManager;

    .line 175
    .local v1, "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    invoke-virtual {v1}, Lcom/sec/epdg/throttle/ThrottleManager;->onSimChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 173
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mgr":Lcom/sec/epdg/throttle/ThrottleManager;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 177
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized resetThrottleState(Ljava/lang/String;)V
    .locals 3
    .param p1, "apnName"    # Ljava/lang/String;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    const-string v0, "ThrottleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetThrottleState, apnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0}, Lcom/sec/epdg/throttle/ThrottleManager;->resetThrottlingTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateThrottleState(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V
    .locals 3
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "iwlanError"    # Lcom/sec/epdg/IWlanError;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    const-string v0, "ThrottleController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateThrottleState, apnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Lcom/sec/epdg/EpdgUtils;->isEpdgNotAvailableRequired(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Lcom/sec/epdg/EpdgCommands;->postEpdgNotAvailableForOnDemandFailure(Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/sec/epdg/throttle/ThrottleController;->addThrottleManager(Ljava/lang/String;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/sec/epdg/throttle/ThrottleController;->mThrottleManagerList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/throttle/ThrottleManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/epdg/throttle/ThrottleManager;->startTimerOrIncrementCounter(Ljava/lang/String;Lcom/sec/epdg/IWlanError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
