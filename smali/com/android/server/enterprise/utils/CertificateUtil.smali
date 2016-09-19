.class public Lcom/android/server/enterprise/utils/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRandom:Ljava/util/Random;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    .line 109
    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 110
    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 119
    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    .line 121
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    .line 122
    return-void
.end method

.method public static convertPemToX509([B)Ljava/util/List;
    .locals 7
    .param p0, "certBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p0, :cond_0

    .line 482
    :try_start_0
    invoke-static {p0}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 491
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 492
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert any certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 495
    :cond_1
    return-object v3

    .line 484
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 487
    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v2

    .line 489
    .local v2, "ile":Ljava/lang/IllegalArgumentException;
    const-string v4, "CertificateUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertStoreTypeToSystemUidAsUser(II)I
    .locals 2
    .param p0, "storeType"    # I
    .param p1, "userId"    # I

    .prologue
    .line 399
    const/4 v0, -0x1

    .line 400
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 401
    const v1, 0x186a0

    mul-int/2addr v1, p1

    add-int/lit16 v0, v1, 0x3e8

    .line 405
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 403
    const/16 v0, 0x3f2

    goto :goto_0
.end method

.method public static convertStoreTypeToUid(I)I
    .locals 2
    .param p0, "storeType"    # I

    .prologue
    .line 372
    const/4 v0, -0x1

    .line 373
    .local v0, "ret":I
    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    .line 374
    const/4 v0, -0x1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 376
    const/16 v0, 0x3f2

    goto :goto_0
.end method

.method public static convertToX509List(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "certInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/CertificateInfo;

    .line 516
    .local v0, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    .end local v0    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    :cond_0
    return-object v2
.end method

.method public static convertX509ListToPem(Ljava/util/List;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "certificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p0, :cond_0

    .line 523
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    invoke-interface {p0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    .line 525
    .local v0, "array":[Ljava/security/cert/X509Certificate;
    :try_start_0
    invoke-static {v0}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 534
    .end local v0    # "array":[Ljava/security/cert/X509Certificate;
    :goto_0
    return-object v4

    .line 526
    .restart local v0    # "array":[Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v2

    .line 527
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .end local v0    # "array":[Ljava/security/cert/X509Certificate;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 528
    .restart local v0    # "array":[Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v1

    .line 529
    .local v1, "cer":Ljava/security/cert/CertificateException;
    const-string v4, "CertificateUtil"

    const-string v5, "Could not convert certificate."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 530
    .end local v1    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v3

    .line 531
    .local v3, "ile":Ljava/lang/IllegalArgumentException;
    const-string v4, "CertificateUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a certificate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static convertX509ToPem(Ljava/security/cert/X509Certificate;)[B
    .locals 5
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 500
    const/4 v0, 0x0

    .line 502
    .local v0, "certBytes":[B
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v3}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v0

    .line 510
    :goto_0
    return-object v2

    .line 503
    :catch_0
    move-exception v1

    .line 504
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "CertificateUtil"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 507
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v3, "CertificateUtil"

    const-string v4, "Could not convert certificate."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private extractPkcs12([BLjava/lang/String;I)Z
    .locals 10
    .param p1, "data"    # [B
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 301
    if-nez p2, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v6

    .line 305
    :cond_1
    :try_start_0
    const-string v7, "PKCS12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 306
    .local v4, "keystore":Ljava/security/KeyStore;
    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 307
    .local v5, "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 309
    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 310
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 314
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {v4, v0, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 319
    .local v3, "entry":Ljava/security/KeyStore$Entry;
    instance-of v7, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_2

    .line 320
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    .end local v3    # "entry":Ljava/security/KeyStore$Entry;
    invoke-direct {p0, v3, p3}, Lcom/android/server/enterprise/utils/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 323
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "keystore":Ljava/security/KeyStore;
    .end local v5    # "passwordProtection":Ljava/security/KeyStore$PasswordProtection;
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CertificateUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "extractPkcs12(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPersonaManagerService()Landroid/os/PersonaManager;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Landroid/os/PersonaManager;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;I)Z
    .locals 20
    .param p1, "entry"    # Ljava/security/KeyStore$PrivateKeyEntry;
    .param p2, "userId"    # I

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    const-string v17, "certificate_policy"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 334
    .local v9, "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_start_1
    move/from16 v0, p2

    invoke-interface {v9, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 335
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 336
    .local v5, "arrayChain":[Ljava/security/cert/Certificate;
    new-instance v14, Ljava/util/ArrayList;

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    .local v14, "listChain":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    move-object v4, v5

    .local v4, "arr$":[Ljava/security/cert/Certificate;
    array-length v13, v4

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v8, v4, v12

    .line 338
    .local v8, "cert":Ljava/security/cert/Certificate;
    new-instance v17, Landroid/app/enterprise/CertificateInfo;

    check-cast v8, Ljava/security/cert/X509Certificate;

    .end local v8    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-interface {v9, v14}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v16

    .line 341
    .local v16, "resultCode":I
    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 342
    const-string v17, "CertificateUtil"

    const-string v18, "certificate failed during validation"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v17, "installer_module"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-interface {v9, v0, v1, v2, v3}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    const/16 v17, 0x0

    .line 367
    .end local v5    # "arrayChain":[Ljava/security/cert/Certificate;
    .end local v14    # "listChain":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v16    # "resultCode":I
    :goto_1
    monitor-exit p0

    return v17

    .line 348
    .end local v4    # "arr$":[Ljava/security/cert/Certificate;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :catch_0
    move-exception v11

    .line 349
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v17, "CertificateUtil"

    const-string v18, "Failed talking to certificate policy"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    .line 355
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    .line 357
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v10

    .line 358
    .local v10, "certs":[Ljava/security/cert/Certificate;
    const-string v17, "CertificateUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "# certs extracted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v10

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v7, Ljava/util/ArrayList;

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    .line 360
    .local v7, "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object v4, v10

    .restart local v4    # "arr$":[Ljava/security/cert/Certificate;
    array-length v13, v4

    .restart local v13    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_3
    if-ge v12, v13, :cond_3

    aget-object v6, v4, v12

    .line 361
    .local v6, "c":Ljava/security/cert/Certificate;
    move-object v0, v6

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v8, v0

    .line 362
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 363
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 350
    .end local v4    # "arr$":[Ljava/security/cert/Certificate;
    .end local v6    # "c":Ljava/security/cert/Certificate;
    .end local v7    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v10    # "certs":[Ljava/security/cert/Certificate;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :catch_1
    move-exception v15

    .line 351
    .local v15, "nex":Ljava/lang/NullPointerException;
    const-string v17, "CertificateUtil"

    const-string v18, "Certificate policy not found"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 331
    .end local v9    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .end local v15    # "nex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 365
    .restart local v4    # "arr$":[Ljava/security/cert/Certificate;
    .restart local v7    # "caCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v9    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .restart local v10    # "certs":[Ljava/security/cert/Certificate;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :cond_3
    :try_start_3
    const-string v17, "CertificateUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "# ca certs extracted = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 367
    const/16 v17, 0x1

    goto/16 :goto_1
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 7
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x0

    .line 286
    :try_start_0
    const-string v6, "2.5.29.19"

    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 287
    .local v0, "asn1EncodedBytes":[B
    if-nez v0, :cond_0

    .line 296
    .end local v0    # "asn1EncodedBytes":[B
    :goto_0
    return v5

    .line 290
    .restart local v0    # "asn1EncodedBytes":[B
    :cond_0
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    .line 292
    .local v1, "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    .line 293
    .local v3, "octets":[B
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .line 294
    .local v4, "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 295
    .end local v0    # "asn1EncodedBytes":[B
    .end local v1    # "derOctetString":Lcom/android/org/bouncycastle/asn1/DEROctetString;
    .end local v3    # "octets":[B
    .end local v4    # "sequence":Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private parseCert([BI)Z
    .locals 12
    .param p1, "bytes"    # [B
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 242
    const/4 v7, 0x0

    .line 244
    .local v7, "ret":Z
    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 245
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 249
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const-string v9, "certificate_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 252
    .local v3, "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_start_1
    invoke-interface {v3, p2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 253
    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2, v0}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 254
    .local v2, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-interface {v3, v2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I

    move-result v6

    .line 255
    .local v6, "resultCode":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    .line 256
    const-string v9, "CertificateUtil"

    const-string v10, "certificate failed during validation"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v9, "installer_module"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v3, v9, v10, v11, p2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 281
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .end local v6    # "resultCode":I
    :goto_0
    return v8

    .line 262
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :catch_0
    move-exception v4

    .line 263
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "CertificateUtil"

    const-string v9, "Failed talking to certificate policy"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 269
    const-string v8, "CertificateUtil"

    const-string/jumbo v9, "got a CA cert"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    const/4 v7, 0x1

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :goto_2
    move v8, v7

    .line 281
    goto :goto_0

    .line 264
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :catch_1
    move-exception v5

    .line 265
    .local v5, "nex":Ljava/lang/NullPointerException;
    const-string v8, "CertificateUtil"

    const-string v9, "Certificate policy not found"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 277
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .end local v5    # "nex":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v4

    .line 278
    .local v4, "e":Ljava/security/cert/CertificateException;
    const-string v8, "CertificateUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseCert(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v7, 0x0

    goto :goto_2

    .line 273
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "certPolicy":Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :cond_1
    :try_start_3
    const-string v8, "CertificateUtil"

    const-string/jumbo v9, "got a user cert"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 275
    const/4 v7, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getAllUsersId()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v3, "usersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v0

    .line 460
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 461
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 463
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    return-object v3
.end method

.method public getAllUsersInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 470
    .local v0, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 472
    .local v2, "usersInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 474
    return-object v2

    .line 472
    .end local v2    # "usersInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getRandomInt()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 133
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    .locals 15
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "keystoreUid"    # I
    .param p6, "userId"    # I

    .prologue
    .line 139
    const/4 v8, 0x1

    .line 143
    .local v8, "ret":Z
    const-string v10, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 145
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([BI)Z

    move-result v10

    and-int/2addr v8, v10

    .line 153
    .end local v8    # "ret":Z
    :goto_0
    if-eqz v8, :cond_c

    .line 155
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 156
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    iget-object v11, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/security/cert/X509Certificate;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/security/cert/X509Certificate;

    .line 158
    .local v4, "caCerts":[Ljava/security/cert/X509Certificate;
    and-int/lit8 v10, p5, 0x2

    if-eqz v10, :cond_1

    .line 159
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v13}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    and-int/2addr v8, v10

    .line 163
    .restart local v8    # "ret":Z
    const-string v10, "CertificateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CaCerts put state for wifi keystore : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v8    # "ret":Z
    :cond_1
    and-int/lit8 v10, p5, 0x4

    if-eqz v10, :cond_2

    .line 166
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CACERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    const/4 v13, 0x4

    move/from16 v0, p6

    invoke-static {v13, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    and-int/2addr v8, v10

    .line 170
    .restart local v8    # "ret":Z
    const-string v10, "CertificateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CaCerts put state for vpn and apps keystore : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .end local v8    # "ret":Z
    :cond_2
    and-int/lit8 v10, p5, 0x1

    if-eqz v10, :cond_3

    .line 174
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/os/UserHandle;

    move/from16 v0, p6

    invoke-direct {v11, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v10, v11}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v7

    .line 177
    .local v7, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 179
    .local v9, "service":Landroid/security/IKeyChainService;
    :try_start_2
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 180
    .local v3, "ca":Ljava/security/cert/X509Certificate;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/security/cert/Certificate;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v10}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 183
    .end local v3    # "ca":Ljava/security/cert/X509Certificate;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    :try_start_3
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v10
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 185
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v9    # "service":Landroid/security/IKeyChainService;
    :catch_0
    move-exception v5

    .line 186
    .local v5, "e":Ljava/lang/AssertionError;
    :try_start_4
    const-string v10, "CertificateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "installAsUser - is KeyChainService running for user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    and-int/lit8 v8, v8, 0x0

    .line 190
    .end local v5    # "e":Ljava/lang/AssertionError;
    :cond_3
    :goto_2
    const-string v10, "CertificateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CaCerts put state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v4    # "caCerts":[Ljava/security/cert/X509Certificate;
    :cond_4
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v10, :cond_8

    .line 193
    and-int/lit8 v10, p5, 0x2

    if-eqz v10, :cond_5

    .line 194
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/security/cert/Certificate;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v14, v12, v13

    invoke-static {v12}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v13}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    and-int/2addr v8, v10

    .line 198
    .restart local v8    # "ret":Z
    const-string v10, "CertificateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UserCert put state for wifi keystore : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v8    # "ret":Z
    :cond_5
    and-int/lit8 v10, p5, 0x4

    if-eqz v10, :cond_6

    .line 201
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRCERT_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/security/cert/Certificate;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v14, v12, v13

    invoke-static {v12}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v12

    const/4 v13, 0x4

    move/from16 v0, p6

    invoke-static {v13, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    and-int/2addr v8, v10

    .line 205
    .restart local v8    # "ret":Z
    const-string v10, "CertificateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UserCert put state for vpn and apps keystore : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v8    # "ret":Z
    :cond_6
    and-int/lit8 v10, p5, 0x1

    if-eqz v10, :cond_8

    const-string v10, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 210
    :cond_7
    and-int/lit8 v8, v8, 0x0

    .line 213
    :cond_8
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v10, :cond_c

    .line 214
    and-int/lit8 v10, p5, 0x2

    if-eqz v10, :cond_9

    .line 215
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v12}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v12

    const/4 v13, 0x2

    invoke-static {v13}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v10

    and-int/2addr v8, v10

    .line 218
    .restart local v8    # "ret":Z
    const-string v10, "CertificateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UserPKey put state for wifi keystore : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v8    # "ret":Z
    :cond_9
    and-int/lit8 v10, p5, 0x4

    if-eqz v10, :cond_a

    .line 221
    iget-object v10, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v12}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v12

    const/4 v13, 0x4

    move/from16 v0, p6

    invoke-static {v13, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v13

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v10

    and-int/2addr v8, v10

    .line 225
    .restart local v8    # "ret":Z
    const-string v10, "CertificateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UserPKey put state for vpn and apps keystore : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v8    # "ret":Z
    :cond_a
    and-int/lit8 v10, p5, 0x1

    if-eqz v10, :cond_c

    const-string v10, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v10

    if-eqz v10, :cond_c

    .line 230
    :cond_b
    and-int/lit8 v8, v8, 0x0

    .line 237
    :cond_c
    :goto_3
    return v8

    .line 146
    .restart local v8    # "ret":Z
    :cond_d
    const-string v10, ".p12"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "PKCS12"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 148
    :cond_e
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;I)Z

    move-result v10

    and-int/2addr v8, v10

    goto/16 :goto_0

    .line 150
    :cond_f
    and-int/lit8 v8, v8, 0x0

    .local v8, "ret":I
    goto/16 :goto_0

    .line 183
    .end local v8    # "ret":I
    .restart local v4    # "caCerts":[Ljava/security/cert/X509Certificate;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v9    # "service":Landroid/security/IKeyChainService;
    :cond_10
    :try_start_5
    invoke-virtual {v7}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 233
    .end local v4    # "caCerts":[Ljava/security/cert/X509Certificate;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v9    # "service":Landroid/security/IKeyChainService;
    :catch_1
    move-exception v5

    .line 234
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "CertificateUtil"

    const-string/jumbo v11, "install(): "

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public isGuestUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 444
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 446
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const/4 v1, 0x1

    .line 450
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendIntentToSettings(IZ)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "bootCompleted"    # Z

    .prologue
    .line 415
    if-eqz p2, :cond_2

    .line 416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 417
    .local v6, "token":J
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 418
    .local v4, "refreshUi":Landroid/content/Intent;
    const-string/jumbo v5, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    invoke-static {p1}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getPersonaManagerService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v3

    .line 430
    .local v3, "personaOwner":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v5, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getPersonaManagerService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v2

    .line 433
    .local v2, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v2, :cond_1

    .line 434
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    .line 435
    .local v1, "persona":Landroid/content/pm/PersonaInfo;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    iget v9, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v5, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    .line 426
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "persona":Landroid/content/pm/PersonaInfo;
    .end local v2    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v3    # "personaOwner":I
    :cond_0
    move v3, p1

    .restart local v3    # "personaOwner":I
    goto :goto_0

    .line 439
    .restart local v2    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 441
    .end local v2    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v3    # "personaOwner":I
    .end local v4    # "refreshUi":Landroid/content/Intent;
    .end local v6    # "token":J
    :cond_2
    return-void
.end method
