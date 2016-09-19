.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
.super Ljava/lang/Object;
.source "KnoxVpnCredentialHandler.java"


# static fields
.field private static final DBG:Z

.field private static final ECRYPTFS_KEY_LENGTH:I = 0x20

.field private static KEYSTORE_FILE_PATH:Ljava/lang/String; = null

.field private static final MAX_LENGTH:I = 0x10

.field private static final MAX_SALT_LENGTH:I = 0x20

.field private static final TAG:Ljava/lang/String; = "KnoxVpnCredentialHandler"

.field private static TIMA_KEYSTORE_NAME:Ljava/lang/String;

.field private static final USER_ID:I

.field private static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

.field private static timaVersion20:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    .line 51
    const-string v0, "FipsTimaKeyStore"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->TIMA_KEYSTORE_NAME:Ljava/lang/String;

    .line 52
    const-string v0, "/data/system/vpn/key"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 61
    return-void
.end method

.method private deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 4
    .param p1, "in"    # Ljava/io/FileInputStream;
    .param p2, "ks"    # Ljava/security/KeyStore;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 476
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    new-instance p1, Ljava/io/FileInputStream;

    .end local p1    # "in":Ljava/io/FileInputStream;
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 480
    .restart local p1    # "in":Ljava/io/FileInputStream;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 482
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 486
    :cond_1
    invoke-virtual {p2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v0

    .line 487
    .local v0, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 488
    if-eqz p1, :cond_2

    .line 489
    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "deleteing key store file."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 493
    :cond_2
    return-void
.end method

.method private generateEcryptfsKey(Ljava/lang/String;)[B
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 355
    if-nez p1, :cond_0

    .line 356
    const/4 v1, 0x0

    .line 370
    :goto_0
    return-object v1

    .line 358
    :cond_0
    const/4 v1, 0x0

    .line 360
    .local v1, "ecryptfsKey":[B
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->generateSalt()[B

    move-result-object v4

    .line 361
    .local v4, "salt":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "HmacSHA256"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 362
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "HmacSHA256"

    const-string v6, "AndroidOpenSSL"

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 363
    .local v2, "hmac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 365
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 366
    .end local v2    # "hmac":Ljavax/crypto/Mac;
    .end local v3    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "salt":[B
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    :cond_1
    const-string v5, "KnoxVpnCredentialHandler"

    const-string v6, "Error inside generateCMK "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateSalt()[B
    .locals 3

    .prologue
    .line 385
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 386
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 387
    .local v1, "salt":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 388
    return-object v1
.end method

.method private getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "password":Ljava/lang/String;
    const/4 v1, 0x0

    .line 376
    .local v1, "pwd":[C
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 377
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 378
    new-instance v2, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v2, v1}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 380
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTimaKeyStore()Ljava/security/KeyStore;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 394
    :cond_0
    const/4 v1, 0x0

    .line 395
    .local v1, "ks":Ljava/security/KeyStore;
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStoreName()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "tksName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 398
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    return-object v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v3, "KnoxVpnCredentialHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get TKS instance..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    throw v0

    .line 402
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnCredentialHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load TKS instance..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    throw v0
.end method

.method private getTimaKeyStoreName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 292
    const-string v0, "N/A"

    .line 293
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 301
    :goto_1
    const-string v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimaKeyStoreName() - Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-object v0

    .line 293
    :sswitch_0
    const-string v3, "3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "FIPS3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 295
    :pswitch_0
    const-string v0, "TIMAKeyStore"

    .line 296
    goto :goto_1

    .line 298
    :pswitch_1
    const-string v0, "FipsTimaKeyStore"

    goto :goto_1

    .line 293
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ec2e91 -> :sswitch_1
        0xc535 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 71
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 73
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getTimaStatus()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 306
    const/4 v1, -0x1

    .line 307
    .local v1, "timaStatus":I
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const-string v4, "N/A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 310
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 322
    const-string v2, "KnoxVpnCredentialHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    :goto_1
    const-string v2, "KnoxVpnCredentialHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTimaStatus() - Tima Status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v1

    .line 310
    :sswitch_0
    :try_start_1
    const-string v3, "2.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    :sswitch_2
    const-string v3, "FIPS3.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    .line 312
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 313
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v1

    .line 317
    goto :goto_1

    .line 319
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    .line 320
    goto :goto_1

    .line 327
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxVpnCredentialHandler"

    const-string/jumbo v3, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 310
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

.method private initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V
    .locals 2
    .param p1, "ks"    # Ljava/security/KeyStore;
    .param p2, "in"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->KEYSTORE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    new-instance p2, Ljava/io/FileInputStream;

    .end local p2    # "in":Ljava/io/FileInputStream;
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 469
    .restart local p2    # "in":Ljava/io/FileInputStream;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 470
    return-void
.end method

.method private retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x20

    .line 411
    const/4 v5, 0x0

    .line 412
    .local v5, "ret":Ljava/lang/String;
    const/4 v3, 0x0

    .line 413
    .local v3, "key":[B
    new-array v0, v10, [B

    .line 414
    .local v0, "ecryptfsKey":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 415
    .local v8, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v7

    .line 416
    .local v7, "timaService":Landroid/service/tima/ITimaService;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    .line 417
    .local v4, "profileIndex":I
    if-eqz v7, :cond_1

    .line 419
    :try_start_0
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v1

    .line 420
    .local v1, "error":I
    const-string v10, "KnoxVpnCredentialHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrieveCredentialsFromTima20 errorCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-nez v1, :cond_0

    const/4 v10, -0x1

    if-eq v4, v10, :cond_0

    .line 422
    invoke-interface {v7, v4}, Landroid/service/tima/ITimaService;->keystoreRetrieveKey(I)[B

    move-result-object v3

    .line 423
    if-eqz v3, :cond_0

    const/4 v10, 0x0

    aget-byte v10, v3, v10

    if-nez v10, :cond_0

    .line 424
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 425
    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    .line 428
    :cond_0
    invoke-interface {v7}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "error":I
    :goto_0
    move-object v6, v5

    .line 436
    .end local v5    # "ret":Ljava/lang/String;
    .local v6, "ret":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 429
    .end local v6    # "ret":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 430
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v2    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10

    :cond_1
    move-object v6, v5

    .line 436
    .end local v5    # "ret":Ljava/lang/String;
    .restart local v6    # "ret":Ljava/lang/String;
    goto :goto_1
.end method

.method private storeCredentials(Ljava/lang/String;[B)Z
    .locals 11
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B

    .prologue
    const/4 v7, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    .local v4, "result":Z
    const/4 v3, 0x0

    .line 98
    .local v3, "ks":Ljava/security/KeyStore;
    const/4 v1, 0x0

    .line 100
    .local v1, "in":Ljava/io/FileInputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 123
    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "Tima status is unknown"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 125
    invoke-direct {p0, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    .line 128
    :goto_0
    if-eqz p2, :cond_2

    .line 129
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, ""

    invoke-direct {v5, p2, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 130
    .local v5, "secretKey":Ljavax/crypto/SecretKey;
    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v5}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 131
    .local v6, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v3, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 132
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "An entry is already present, deleting it and updating the name"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-virtual {v3, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 135
    :cond_1
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v7

    invoke-virtual {v3, p1, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 v4, 0x1

    .line 146
    .end local v5    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v6    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    :cond_2
    if-eqz v1, :cond_3

    .line 147
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_3
    if-nez v3, :cond_4

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_4
    :goto_1
    move v7, v4

    .line 156
    :cond_5
    :goto_2
    return v7

    .line 102
    :sswitch_0
    :try_start_2
    iget-object v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :cond_6
    move v7, v8

    :goto_3
    packed-switch v7, :pswitch_data_0

    .line 112
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "unknown TIMA Version"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    if-eqz v1, :cond_7

    .line 147
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_7
    if-nez v3, :cond_8

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_8
    :goto_4
    move v7, v4

    .line 154
    goto :goto_2

    .line 102
    :sswitch_1
    :try_start_4
    const-string v10, "2.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :sswitch_2
    const-string v7, "3.0"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :sswitch_3
    const-string v7, "FIPS3.0"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    goto :goto_3

    .line 104
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentialsForTima20(Ljava/lang/String;[B)Z
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    .line 146
    if-eqz v1, :cond_9

    .line 147
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_9
    if-nez v3, :cond_5

    .line 150
    const-string v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "ioe":Ljava/io/IOException;
    const-string v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 106
    .end local v2    # "ioe":Ljava/io/IOException;
    :pswitch_1
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    .line 107
    goto/16 :goto_0

    .line 109
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 110
    goto/16 :goto_0

    .line 152
    :catch_1
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 120
    .end local v2    # "ioe":Ljava/io/IOException;
    :sswitch_4
    :try_start_7
    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "TIMA Compromised"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 146
    if-eqz v1, :cond_a

    .line 147
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_a
    if-nez v3, :cond_b

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_b
    :goto_5
    move v7, v4

    .line 154
    goto/16 :goto_2

    .line 152
    :catch_2
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 152
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 138
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 139
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_9
    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "KeyStoreException occured while trying to store the info inside keystore"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v7, :cond_c

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 146
    :cond_c
    if-eqz v1, :cond_d

    .line 147
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_d
    if-nez v3, :cond_4

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 152
    :catch_5
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 141
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b
    const-string v7, "KnoxVpnCredentialHandler"

    const-string v8, "Exception occured while trying to store the info inside keystore"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v7, :cond_e

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 146
    :cond_e
    if-eqz v1, :cond_f

    .line 147
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_f
    if-nez v3, :cond_4

    .line 150
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentials :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_1

    .line 152
    :catch_7
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 146
    if-eqz v1, :cond_10

    .line 147
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 149
    :cond_10
    if-nez v3, :cond_11

    .line 150
    const-string v8, "KnoxVpnCredentialHandler"

    const-string/jumbo v9, "storeCredentials :: Null keystore..."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 154
    :cond_11
    :goto_6
    throw v7

    .line 152
    :catch_8
    move-exception v2

    .line 153
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v8, "KnoxVpnCredentialHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to close input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 100
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000c -> :sswitch_4
        0x1000d -> :sswitch_4
        0x1000e -> :sswitch_4
        0x1000f -> :sswitch_4
    .end sparse-switch

    .line 102
    :sswitch_data_1
    .sparse-switch
        -0x7ec2e91 -> :sswitch_3
        0xc174 -> :sswitch_1
        0xc535 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private storeCredentialsForTima20(Ljava/lang/String;[B)Z
    .locals 10
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v6, 0x0

    .line 440
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v3

    .line 441
    .local v3, "timaService":Landroid/service/tima/ITimaService;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 442
    .local v2, "profileIndex":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 443
    .local v4, "token":J
    if-eqz v3, :cond_2

    .line 445
    :try_start_0
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v0

    .line 446
    .local v0, "error":I
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "storeCredentialsForTima20 errorCode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-nez v0, :cond_0

    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 448
    invoke-interface {v3, v2, p2}, Landroid/service/tima/ITimaService;->keystoreInstallKey(I[B)I

    .line 450
    :cond_0
    invoke-interface {v3}, Landroid/service/tima/ITimaService;->keystoreShutdown()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    const/4 v6, 0x1

    .line 460
    .end local v0    # "error":I
    :goto_0
    return v6

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v1    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 459
    :cond_2
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "storeCredentialsForTima20 failed returning false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTimaVersion()V
    .locals 4

    .prologue
    .line 335
    const-string v1, "N/A"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    :try_start_0
    const-string v1, "2.0"

    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v2

    invoke-interface {v2}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    .line 339
    sget-boolean v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->timaVersion20:Z

    if-eqz v1, :cond_1

    .line 340
    const-string v1, "2.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    const-string v1, "KnoxVpnCredentialHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    return-void

    .line 342
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    const-string v1, "FIPS3.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "re":Ljava/lang/Exception;
    const-string v1, "KnoxVpnCredentialHandler"

    const-string/jumbo v2, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 345
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string v1, "3.0"

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected deleteCredentialsFromKeystore(Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 228
    .local v3, "ks":Ljava/security/KeyStore;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 230
    .local v4, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 253
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "Tima status is unknown"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 255
    invoke-direct {p0, v1, v3, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->deleteKey(Ljava/io/FileInputStream;Ljava/security/KeyStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    if-eqz v1, :cond_0

    .line 279
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_0
    if-nez v3, :cond_1

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 287
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    :goto_1
    return-void

    .line 232
    :sswitch_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_2
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 242
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "unknown TIMA Version"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    if-eqz v1, :cond_3

    .line 279
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_3
    if-nez v3, :cond_4

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 287
    :cond_4
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 232
    :sswitch_1
    :try_start_4
    const-string v8, "2.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_2
    const-string v8, "3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :sswitch_3
    const-string v8, "FIPS3.0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x2

    goto :goto_2

    .line 278
    :pswitch_0
    if-eqz v1, :cond_5

    .line 279
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_5
    if-nez v3, :cond_6

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 287
    :cond_6
    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 236
    .end local v2    # "ioe":Ljava/io/IOException;
    :pswitch_1
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v3

    .line 258
    :goto_5
    invoke-virtual {v3, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 259
    invoke-virtual {v3, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 278
    :cond_7
    if-eqz v1, :cond_8

    .line 279
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_8
    if-nez v3, :cond_9

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 287
    :cond_9
    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 239
    :pswitch_2
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_8
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v3

    .line 240
    goto :goto_5

    .line 284
    :catch_1
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 250
    .end local v2    # "ioe":Ljava/io/IOException;
    :sswitch_4
    :try_start_9
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "TIMA Compromised"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 278
    if-eqz v1, :cond_a

    .line 279
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_a
    if-nez v3, :cond_b

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 287
    :cond_b
    :goto_7
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 284
    :catch_2
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 284
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 284
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 261
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/KeyStoreException;
    :try_start_b
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_c

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    .line 263
    :cond_c
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "KeyStoreException occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 278
    if-eqz v1, :cond_d

    .line 279
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_d
    if-nez v3, :cond_e

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 287
    :cond_e
    :goto_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 284
    :catch_6
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 264
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_7
    move-exception v0

    .line 265
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_d
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_f

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 266
    :cond_f
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "NoSuchAlgorithmException occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 278
    if-eqz v1, :cond_10

    .line 279
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_10
    if-nez v3, :cond_11

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 287
    :cond_11
    :goto_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 284
    :catch_8
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 267
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_9
    move-exception v0

    .line 268
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_f
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_12

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 269
    :cond_12
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "CertificateException occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 278
    if-eqz v1, :cond_13

    .line 279
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_13
    if-nez v3, :cond_14

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 287
    :cond_14
    :goto_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 284
    :catch_a
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 270
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    :try_start_11
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_15

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    :cond_15
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "IOException occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 278
    if-eqz v1, :cond_16

    .line 279
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_16
    if-nez v3, :cond_17

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 287
    :cond_17
    :goto_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 284
    :catch_c
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_d
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    :try_start_13
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v6, :cond_18

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    :cond_18
    const-string v6, "KnoxVpnCredentialHandler"

    const-string v7, "Exception occured while trying to delete the info from keystore"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 278
    if-eqz v1, :cond_19

    .line 279
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_19
    if-nez v3, :cond_1a

    .line 282
    const-string v6, "KnoxVpnCredentialHandler"

    const-string/jumbo v7, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e

    .line 287
    :cond_1a
    :goto_c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 284
    :catch_e
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v6, "KnoxVpnCredentialHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to close input stream: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 278
    if-eqz v1, :cond_1b

    .line 279
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_1b
    if-nez v3, :cond_1c

    .line 282
    const-string v7, "KnoxVpnCredentialHandler"

    const-string/jumbo v8, "deleteCredentialsFromKeystore :: Null keystore..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f

    .line 287
    :cond_1c
    :goto_d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 284
    :catch_f
    move-exception v2

    .line 285
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v7, "KnoxVpnCredentialHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to close input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 230
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000c -> :sswitch_4
        0x1000d -> :sswitch_4
        0x1000e -> :sswitch_4
        0x1000f -> :sswitch_4
    .end sparse-switch

    .line 232
    :sswitch_data_1
    .sparse-switch
        -0x7ec2e91 -> :sswitch_3
        0xc174 -> :sswitch_1
        0xc535 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 160
    sget-boolean v13, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v13, :cond_0

    const-string v13, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "retrieveCredentialsFromKeystore alias retrieved is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    const/4 v7, 0x0

    .line 162
    .local v7, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 163
    .local v9, "ks":Ljava/security/KeyStore;
    const/4 v5, 0x0

    .line 164
    .local v5, "in":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 166
    .local v10, "token":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaStatus()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 189
    const-string v12, "KnoxVpnCredentialHandler"

    const-string v13, "Tima status is unknown"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    .line 191
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->initializeDefaultKeystore(Ljava/security/KeyStore;Ljava/io/FileInputStream;)V

    .line 194
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 195
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getEntryPassword(I)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v12}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v12

    check-cast v12, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v0, v12

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v4, v0

    .line 196
    .local v4, "entry":Ljava/security/KeyStore$SecretKeyEntry;
    if-eqz v4, :cond_1

    .line 197
    invoke-virtual {v4}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v12

    invoke-interface {v12}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 198
    .local v2, "bytesReceived":[B
    if-eqz v2, :cond_1

    .line 199
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v7    # "key":Ljava/lang/String;
    .local v8, "key":Ljava/lang/String;
    move-object v7, v8

    .line 211
    .end local v2    # "bytesReceived":[B
    .end local v4    # "entry":Ljava/security/KeyStore$SecretKeyEntry;
    .end local v8    # "key":Ljava/lang/String;
    .restart local v7    # "key":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 212
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_2
    if-nez v9, :cond_3

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 220
    :cond_3
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    move-object v12, v7

    .line 222
    :goto_3
    return-object v12

    .line 168
    :sswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    const/4 v13, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :cond_4
    move v12, v13

    :goto_4
    packed-switch v12, :pswitch_data_0

    .line 178
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "unknown TIMA Version"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    if-eqz v5, :cond_5

    .line 212
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_5
    if-nez v9, :cond_6

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 220
    :cond_6
    :goto_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v12, v7

    goto :goto_3

    .line 168
    :sswitch_1
    :try_start_4
    const-string v15, "2.0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    :sswitch_2
    const-string v12, "3.0"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_4

    :sswitch_3
    const-string v12, "FIPS3.0"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x2

    goto :goto_4

    .line 170
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->retrieveCredentialsFromTima20(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    .line 211
    if-eqz v5, :cond_7

    .line 212
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_7
    if-nez v9, :cond_8

    .line 215
    const-string v13, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 220
    :cond_8
    :goto_6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 217
    :catch_0
    move-exception v6

    .line 218
    .local v6, "ioe":Ljava/io/IOException;
    const-string v13, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 172
    .end local v6    # "ioe":Ljava/io/IOException;
    :pswitch_1
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;

    move-result-object v9

    .line 173
    goto/16 :goto_0

    .line 175
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->getTimaKeyStore()Ljava/security/KeyStore;
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v9

    .line 176
    goto/16 :goto_0

    .line 217
    :catch_1
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 186
    .end local v6    # "ioe":Ljava/io/IOException;
    :sswitch_4
    :try_start_7
    const-string v12, "KnoxVpnCredentialHandler"

    const-string v13, "TIMA Comprimised"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 211
    if-eqz v5, :cond_9

    .line 212
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_9
    if-nez v9, :cond_a

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 220
    :cond_a
    :goto_7
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v12, v7

    goto/16 :goto_3

    .line 217
    :catch_2
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 217
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 203
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 204
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_9
    const-string v12, "KnoxVpnCredentialHandler"

    const-string v13, "KeyStoreException occured while trying to retrieve the info from keystore"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-boolean v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v12, :cond_b

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 211
    :cond_b
    if-eqz v5, :cond_c

    .line 212
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_c
    if-nez v9, :cond_d

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 220
    :cond_d
    :goto_8
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 217
    :catch_5
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 206
    .end local v3    # "e":Ljava/security/KeyStoreException;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 207
    .local v3, "e":Ljava/lang/Exception;
    :try_start_b
    const-string v12, "KnoxVpnCredentialHandler"

    const-string v13, "Exception occured while trying to retrieve the info from keystore"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-boolean v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->DBG:Z

    if-eqz v12, :cond_e

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 211
    :cond_e
    if-eqz v5, :cond_f

    .line 212
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_f
    if-nez v9, :cond_10

    .line 215
    const-string v12, "KnoxVpnCredentialHandler"

    const-string/jumbo v13, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 220
    :cond_10
    :goto_9
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 217
    :catch_7
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v12, "KnoxVpnCredentialHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to close input stream: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 210
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 211
    if-eqz v5, :cond_11

    .line 212
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 214
    :cond_11
    if-nez v9, :cond_12

    .line 215
    const-string v13, "KnoxVpnCredentialHandler"

    const-string/jumbo v14, "retrieveEcryptFSKey :: Null keystore..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 220
    :cond_12
    :goto_a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 217
    :catch_8
    move-exception v6

    .line 218
    .restart local v6    # "ioe":Ljava/io/IOException;
    const-string v13, "KnoxVpnCredentialHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to close input stream: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1000c -> :sswitch_4
        0x1000d -> :sswitch_4
        0x1000e -> :sswitch_4
        0x1000f -> :sswitch_4
    .end sparse-switch

    .line 168
    :sswitch_data_1
    .sparse-switch
        -0x7ec2e91 -> :sswitch_3
        0xc174 -> :sswitch_1
        0xc535 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "status":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 81
    .local v2, "token":J
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 82
    .local v1, "updatedKey":[B
    if-eqz v1, :cond_1

    .line 83
    const-string v4, "N/A"

    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->updateTimaVersion()V

    .line 86
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentials(Ljava/lang/String;[B)Z

    move-result v0

    .line 87
    const-string v4, "KnoxVpnCredentialHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storeCredentialsInKeystore status key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    return v0

    .line 90
    .end local v1    # "updatedKey":[B
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
