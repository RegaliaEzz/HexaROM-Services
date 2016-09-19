.class public Lcom/android/server/pm/TimaHelper;
.super Ljava/lang/Object;
.source "TimaHelper.java"


# static fields
.field private static final DEBUG:Z

.field private static final TIMA_LOG_TAG:Ljava/lang/String; = "TimaHelper"

.field private static mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private static timaVersion20:Z


# instance fields
.field private mTksName:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/TimaHelper;->timaVersion20:Z

    .line 30
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/TimaHelper;->DEBUG:Z

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v2, "NONE"

    iput-object v2, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    .line 27
    const-string v2, "NONE"

    iput-object v2, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 37
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/pm/TimaHelper;->timaVersion20:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->initTimaHelper()V

    .line 45
    const-string v2, "TimaHelper"

    const-string v3, "TimaHelper created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "TimaHelper"

    const-string/jumbo v3, "failed to talk with TIMA service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    const-string v2, "TimaHelper"

    const-string/jumbo v3, "failed to get TIMA version."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkTimaError(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "timaStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/TimaException;
        }
    .end annotation

    .prologue
    .line 273
    packed-switch p2, :pswitch_data_0

    .line 288
    return-void

    .line 278
    :pswitch_0
    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_0

    .line 279
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 280
    .local v0, "service":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->setTimaCompromisedState(I)V

    .line 285
    .end local v0    # "service":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    new-instance v1, Lcom/android/server/pm/TimaException;

    invoke-direct {v1}, Lcom/android/server/pm/TimaException;-><init>()V

    throw v1

    .line 273
    :pswitch_data_0
    .packed-switch 0x1000c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "password":Ljava/lang/String;
    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/pm/TimaHelper;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/server/pm/TimaHelper;

    invoke-direct {v0}, Lcom/android/server/pm/TimaHelper;-><init>()V

    sput-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/server/pm/TimaHelper;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "ks":Ljava/security/KeyStore;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v2, "TimaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get TKS instance... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    throw v0

    .line 127
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TimaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load TKS instance... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    throw v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 291
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 293
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method


# virtual methods
.method public checkEntry(ILjava/lang/String;)Z
    .locals 7
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v2, 0x0

    .line 145
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z
    :try_end_0
    .catch Lcom/android/server/pm/TimaException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "ks":Ljava/security/KeyStore;
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 149
    invoke-virtual {v1, p2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 155
    if-nez v1, :cond_0

    .line 156
    :try_start_2
    const-string v4, "TimaHelper"

    const-string v5, "checkEntry() - Null keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/pm/TimaException; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    .end local v1    # "ks":Ljava/security/KeyStore;
    :cond_0
    :goto_0
    const-string v4, "TimaHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkEntry("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 163
    :goto_1
    return v4

    .line 150
    .restart local v1    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_3
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    if-nez v1, :cond_0

    .line 156
    :try_start_4
    const-string v4, "TimaHelper"

    const-string v5, "checkEntry() - Null keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/server/pm/TimaException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 159
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .end local v1    # "ks":Ljava/security/KeyStore;
    :catch_1
    move-exception v3

    .line 160
    .local v3, "te":Lcom/android/server/pm/TimaException;
    const/4 v4, 0x0

    goto :goto_1

    .line 152
    .end local v3    # "te":Lcom/android/server/pm/TimaException;
    .restart local v1    # "ks":Ljava/security/KeyStore;
    :catch_2
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    if-nez v1, :cond_0

    .line 156
    :try_start_6
    const-string v4, "TimaHelper"

    const-string v5, "checkEntry() - Null keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-nez v1, :cond_1

    .line 156
    const-string v5, "TimaHelper"

    const-string v6, "checkEntry() - Null keystore..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    throw v4
    :try_end_6
    .catch Lcom/android/server/pm/TimaException; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method public checkTimaStatus(I)Z
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/TimaException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->getTimaStatus()I

    move-result v1

    .line 81
    .local v1, "timaStatus":I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 82
    .local v0, "result":Z
    :goto_0
    const-string v2, "TimaHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkTimaStatus() - Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Validation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/TimaHelper;->checkTimaError(II)V

    .line 85
    return v0

    .line 81
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteEntry(ILjava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-boolean v3, Lcom/android/server/pm/TimaHelper;->timaVersion20:Z

    if-eqz v3, :cond_1

    .line 243
    const-string v3, "TimaHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "deleteEntry("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "TimaHelper doesn\'t support Tima 2.0! error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteEntry("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    .line 250
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z
    :try_end_0
    .catch Lcom/android/server/pm/TimaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, "ks":Ljava/security/KeyStore;
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 254
    invoke-virtual {v1, p2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    invoke-virtual {v1, p2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :cond_2
    if-nez v1, :cond_0

    .line 263
    :try_start_2
    const-string v3, "TimaHelper"

    const-string/jumbo v4, "getEntry() - Null keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/pm/TimaException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 266
    .end local v1    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v2

    .line 267
    .local v2, "te":Lcom/android/server/pm/TimaException;
    goto :goto_0

    .line 257
    .end local v2    # "te":Lcom/android/server/pm/TimaException;
    .restart local v1    # "ks":Ljava/security/KeyStore;
    :catch_1
    move-exception v0

    .line 258
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_3
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    if-nez v1, :cond_0

    .line 263
    :try_start_4
    const-string v3, "TimaHelper"

    const-string/jumbo v4, "getEntry() - Null keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/server/pm/TimaException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_2
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 262
    if-nez v1, :cond_0

    .line 263
    :try_start_6
    const-string v3, "TimaHelper"

    const-string/jumbo v4, "getEntry() - Null keystore..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-nez v1, :cond_3

    .line 263
    const-string v4, "TimaHelper"

    const-string/jumbo v5, "getEntry() - Null keystore..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v3
    :try_end_6
    .catch Lcom/android/server/pm/TimaException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/server/pm/TimaHelper;->DEBUG:Z

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "TimaHelper"

    const-string v1, "### Dump of TimaHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz p1, :cond_1

    .line 138
    const-string v0, "TimaHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1
    const-string v0, "TimaHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### TimaHelper = { TksName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEntry(ILjava/lang/String;)[B
    .locals 9
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 202
    const/4 v4, 0x0

    .line 203
    .local v4, "result":[B
    sget-boolean v6, Lcom/android/server/pm/TimaHelper;->timaVersion20:Z

    if-eqz v6, :cond_0

    .line 204
    const-string v6, "TimaHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getEntry("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "TimaHelper doesn\'t support Tima 2.0! error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    .line 238
    :goto_0
    return-object v6

    .line 209
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getEntry("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z
    :try_end_0
    .catch Lcom/android/server/pm/TimaException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    const/4 v3, 0x0

    .line 215
    .local v3, "ks":Ljava/security/KeyStore;
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    .line 216
    invoke-virtual {v3, p2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    invoke-virtual {v3, p2, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v6

    check-cast v6, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v0, v6

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v2, v0

    .line 219
    .local v2, "entry":Ljava/security/KeyStore$SecretKeyEntry;
    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-interface {v6}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 227
    .end local v2    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_1
    if-nez v3, :cond_2

    .line 228
    :try_start_2
    const-string v6, "TimaHelper"

    const-string/jumbo v7, "getEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/pm/TimaException; {:try_start_2 .. :try_end_2} :catch_1

    .line 234
    .end local v3    # "ks":Ljava/security/KeyStore;
    :cond_2
    :goto_1
    if-nez v4, :cond_4

    .line 235
    const-string v6, "TimaHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "key not found : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in TIMA keystore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v6, v4

    .line 238
    goto :goto_0

    .line 222
    .restart local v3    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/security/KeyStoreException;
    :try_start_3
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    if-nez v3, :cond_2

    .line 228
    :try_start_4
    const-string v6, "TimaHelper"

    const-string/jumbo v7, "getEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/server/pm/TimaException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 231
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .end local v3    # "ks":Ljava/security/KeyStore;
    :catch_1
    move-exception v5

    .line 232
    .local v5, "te":Lcom/android/server/pm/TimaException;
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 224
    .end local v5    # "te":Lcom/android/server/pm/TimaException;
    .restart local v3    # "ks":Ljava/security/KeyStore;
    :catch_2
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    if-nez v3, :cond_2

    .line 228
    :try_start_6
    const-string v6, "TimaHelper"

    const-string/jumbo v7, "getEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-nez v3, :cond_3

    .line 228
    const-string v7, "TimaHelper"

    const-string/jumbo v8, "getEntry() - Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v6
    :try_end_6
    .catch Lcom/android/server/pm/TimaException; {:try_start_6 .. :try_end_6} :catch_1

    .line 237
    .end local v3    # "ks":Ljava/security/KeyStore;
    :cond_4
    const-string v6, "TimaHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from TIMA keystore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getTimaStatus()I
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 89
    const/4 v1, -0x1

    .line 90
    .local v1, "timaStatus":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 92
    .local v2, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 105
    const-string v4, "TimaHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    :goto_2
    const-string v4, "TimaHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimaStatus() - Tima Status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v1

    .line 92
    :sswitch_0
    :try_start_1
    const-string v5, "2.0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string v7, "3.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_0

    :sswitch_2
    const-string v5, "FIPS3.0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 96
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "TimaHelper"

    const-string/jumbo v5, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 99
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v1

    .line 100
    goto :goto_1

    .line 102
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 103
    goto :goto_1

    .line 110
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "TimaHelper"

    const-string/jumbo v5, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 113
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 92
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ec2e91 -> :sswitch_2
        0xc174 -> :sswitch_0
        0xc535 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTimaVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public initTimaHelper()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/server/pm/TimaHelper;->timaVersion20:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    .line 68
    :goto_0
    const-string/jumbo v0, "initTimaHelper()"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    .line 69
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/TimaHelper;->isFipsAvilable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "FIPS3.0"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    .line 62
    const-string v0, "FipsTimaKeyStore"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "3.0"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mVersion:Ljava/lang/String;

    .line 65
    const-string v0, "TIMAKeyStore"

    iput-object v0, p0, Lcom/android/server/pm/TimaHelper;->mTksName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isFipsAvilable()Z
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v0

    return v0
.end method

.method public setEntry(ILjava/lang/String;[B)Z
    .locals 9
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "entry"    # [B

    .prologue
    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "result":Z
    sget-boolean v6, Lcom/android/server/pm/TimaHelper;->timaVersion20:Z

    if-eqz v6, :cond_0

    .line 169
    const-string v6, "TimaHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setEntry("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "TimaHelper doesn\'t support Tima 2.0! error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    .line 198
    :goto_0
    return v6

    .line 174
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setEntry("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/TimaHelper;->dump(Ljava/lang/String;)V

    .line 176
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/TimaHelper;->checkTimaStatus(I)Z
    :try_end_0
    .catch Lcom/android/server/pm/TimaException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    .line 177
    const/4 v1, 0x0

    .line 179
    .local v1, "ks":Ljava/security/KeyStore;
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/pm/TimaHelper;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 180
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, ""

    invoke-direct {v3, p3, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 181
    .local v3, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v4, v3}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 183
    .local v4, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-direct {p0, p1}, Lcom/android/server/pm/TimaHelper;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v6

    invoke-virtual {v1, p2, v4, v6}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    const/4 v2, 0x1

    .line 190
    if-nez v1, :cond_1

    .line 191
    :try_start_2
    const-string v6, "TimaHelper"

    const-string/jumbo v7, "setEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/server/pm/TimaException; {:try_start_2 .. :try_end_2} :catch_1

    .line 197
    .end local v1    # "ks":Ljava/security/KeyStore;
    .end local v3    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v4    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_1
    :goto_1
    const-string v6, "TimaHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setEntry("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    .line 198
    goto :goto_0

    .line 185
    .restart local v1    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_3
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    if-nez v1, :cond_1

    .line 191
    :try_start_4
    const-string v6, "TimaHelper"

    const-string/jumbo v7, "setEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/server/pm/TimaException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 194
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .end local v1    # "ks":Ljava/security/KeyStore;
    :catch_1
    move-exception v5

    .line 195
    .local v5, "te":Lcom/android/server/pm/TimaException;
    const/4 v6, 0x0

    goto :goto_0

    .line 187
    .end local v5    # "te":Lcom/android/server/pm/TimaException;
    .restart local v1    # "ks":Ljava/security/KeyStore;
    :catch_2
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    if-nez v1, :cond_1

    .line 191
    :try_start_6
    const-string v6, "TimaHelper"

    const-string/jumbo v7, "setEntry() - Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-nez v1, :cond_2

    .line 191
    const-string v7, "TimaHelper"

    const-string/jumbo v8, "setEntry() - Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v6
    :try_end_6
    .catch Lcom/android/server/pm/TimaException; {:try_start_6 .. :try_end_6} :catch_1
.end method
