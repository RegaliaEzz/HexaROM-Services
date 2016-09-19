.class public Lcom/android/server/enterprise/sso/GenericSSOService;
.super Landroid/app/enterprise/sso/IGenericSSO$Stub;
.source "GenericSSOService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/sso/GenericSSOService$SntpClient;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;,
        Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;,
        Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;,
        Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;,
        Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;,
        Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
    }
.end annotation


# static fields
.field private static final ANDROID_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final COMMON_VALUE:Ljava/lang/String; = "value"

.field private static final CONFIGURESSO:I = 0x5

.field private static final DATA_KEY_LENGTH:I = 0x10

.field private static final DELETE_KEYS:I = 0x6

.field private static final ENCODING_UTF8:Ljava/lang/String; = "UTF_8"

.field private static final GENERIC_SSO_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO"

.field private static final KEYSPEC_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEYSTORE_PASSWORD:Ljava/lang/String; = "password_for_secret_key"

.field private static final KEYWORD_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final KEYWORD_CUSTOMERBRAND:Ljava/lang/String; = "customerbrand"

.field private static final KEYWORD_DEVICE_CERTIFICATE:Ljava/lang/String; = "devicecertificate"

.field private static final KEYWORD_SSOPROVIDER:Ljava/lang/String; = "ssoprovider"

.field private static final KEYWORD_TOKEN_APPPKGNAME:Ljava/lang/String; = "packagename"

.field private static final KEYWORD_TOKEN_CACHE:Ljava/lang/String; = "apptoken"

.field private static final KEYWORD_USER_CERTIFICATE:Ljava/lang/String; = "usercertificate"

.field private static final KEYWORD_VENDORCONFIG:Ljava/lang/String; = "vendorconfigs"

.field private static final KEYWORD_WHITELISTPACKAGE:Ljava/lang/String; = "whitelistpackage"

.field private static final KEY_STORE_CERT_ALIAS:Ljava/lang/String; = "KnoxSSOKey"

.field private static final KNOXSSO_CONF_DATA_FILENAME:Ljava/lang/String; = "ssoconfig.xml"

.field private static final KNOXSSO_DATASYSTEM_DIR:Ljava/lang/String; = "/data/system/"

.field private static final KNOXSSO_SECRETKEY_FILE:Ljava/lang/String; = "KnoxSSO_SCKF"

.field private static final KNOXSSO_TMP_CONF_DATA_FILENAME:Ljava/lang/String; = "tmpssoconfig.xml"

.field private static final KNOXSSO_TOKEN_FILENAME:Ljava/lang/String; = "ssotoken.xml"

.field private static final KNOXSSO_USERX_SSOCONF_DIR:Ljava/lang/String; = "/data/system/users/"

.field private static final NTP_CONNECTION_TIMEOUT:J = 0x7d0L

.field private static final PKGCERT:I = 0x1

.field private static final PKGNAME:I = 0x0

.field private static final SERVICECONNECTIONWAIT:Ljava/lang/Object;

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final SET_UNENROLL_FLAG:I = 0x7

.field private static final TAG:Ljava/lang/String; = "GenericSSOService"

.field private static final TIMA_KEYSTORE:Ljava/lang/String; = "TIMAKeyStore"

.field private static final TOKEN:I = 0x2

.field private static final UNREGISTER:I = 0x1

.field private static final USERINFO:I = 0x3

.field private static final WRAP_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private static countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

.field private static final mCacheLock:Ljava/lang/Object;

.field private static mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

.field private static mKeyPair:Ljava/security/KeyPair;

.field private static mKeystore:Ljava/security/KeyStore;

.field private static mSSOInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static mSecretKey:Ljava/security/Key;

.field private static final mSecretKeyLock:Ljava/lang/Object;

.field private static requestConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;",
            ">;"
        }
    .end annotation
.end field

.field private static sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

.field private static serviceKeeper:Lcom/android/server/ServiceKeeper;

.field private static tokenConfigXMLDocs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

.field private WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

.field private initElapsedTime:J

.field private initUTCTime:J

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    .line 245
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKeyLock:Ljava/lang/Object;

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    .line 248
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    .line 265
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, -0x2710

    .line 268
    invoke-direct {p0}, Landroid/app/enterprise/sso/IGenericSSO$Stub;-><init>()V

    .line 250
    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    .line 251
    iput-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    .line 262
    const-string/jumbo v0, "genericsso_whitelist_all_apps"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    .line 263
    const-string/jumbo v0, "genericsso_unenroll_ad_authenticator"

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    .line 269
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    .line 270
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    .line 271
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    .line 272
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->serviceKeeper:Lcom/android/server/ServiceKeeper;

    .line 274
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    .line 275
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    .line 276
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "GenericSSOService"

    const-string v1, "In GenericSSOService: registerReceiverForKeyClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->registerReceiverForKeyClear()V

    .line 279
    new-instance v0, Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    .line 280
    const-string v0, "GenericSSOService"

    const-string v1, "In GenericSSOService: Generic SSO Service start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method private _addWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I
    .locals 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/sso/WhiteListPackage;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 2715
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/sso/WhiteListPackage;>;"
    if-nez p1, :cond_1

    .line 2716
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_0

    .line 2717
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackages: cxtInfo is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    :cond_0
    const/16 v18, -0x3

    .line 2812
    :goto_0
    return v18

    .line 2720
    :cond_1
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2721
    .local v12, "mdmUID":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v18

    if-nez v18, :cond_3

    .line 2722
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_2

    .line 2723
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackages: MDM uid is not matched"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :cond_2
    const/16 v18, -0xa

    goto :goto_0

    .line 2726
    :cond_3
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_4

    .line 2727
    const-string v18, "GenericSSOService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "In _addWhiteListPackage: UserId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    :cond_4
    if-nez p2, :cond_6

    .line 2729
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_5

    .line 2730
    const-string v18, "GenericSSOService"

    const-string v19, "In addWhiteListPackage: Invalid Parameters."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    :cond_5
    const/16 v18, -0x3

    goto :goto_0

    .line 2733
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_8

    .line 2734
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_7

    .line 2735
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: No SSO Vendors have been enrolled."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_7
    const/16 v18, -0x6

    goto :goto_0

    .line 2740
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    .line 2741
    .local v6, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 2742
    .local v15, "solution":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 2743
    .local v3, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/enterprise/sso/WhiteListPackage;

    .line 2744
    .local v14, "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2745
    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_b

    .line 2746
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_a

    .line 2747
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: Invalid Parameters. Package Name or Certificate is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :cond_a
    const/16 v18, -0x3

    goto/16 :goto_0

    .line 2751
    :cond_b
    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getConfigMap()Ljava/util/Map;

    move-result-object v5

    .line 2752
    .local v5, "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "clientpackagename"

    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 2755
    .local v17, "whitelistApp":Lorg/w3c/dom/Node;
    if-eqz v17, :cond_d

    .line 2756
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_9

    .line 2757
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: the given whitelistpkg has already been registered"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2803
    .end local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .end local v15    # "solution":Lorg/w3c/dom/Node;
    .end local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v8

    .line 2805
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: NullPointerException."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2810
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :goto_2
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_c

    .line 2811
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: Returning Fail."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    :cond_c
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 2761
    .restart local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .restart local v15    # "solution":Lorg/w3c/dom/Node;
    .restart local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_d
    :try_start_1
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_e

    .line 2762
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: the package hasn\'t been whitelisted"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    :cond_e
    iget-object v7, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 2765
    .local v7, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v18, "whitelistpackage"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 2766
    .local v4, "app":Lorg/w3c/dom/Element;
    const-string v18, "clientpackagename"

    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 2770
    const-string v18, "clientpackagesignature"

    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getSignature()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    :cond_f
    :goto_3
    if-eqz v5, :cond_12

    .line 2779
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2780
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 2781
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v19, v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 2783
    .local v13, "node":Lorg/w3c/dom/Element;
    const-string/jumbo v19, "value"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    invoke-interface {v4, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2786
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_10

    .line 2787
    const-string v19, "GenericSSOService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "In _addWhiteListPackage:  <"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "> parameter for - packageName "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Landroid/app/enterprise/sso/WhiteListPackage;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, " is added"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 2806
    .end local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "app":Lorg/w3c/dom/Element;
    .end local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v13    # "node":Lorg/w3c/dom/Element;
    .end local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .end local v15    # "solution":Lorg/w3c/dom/Node;
    .end local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v8

    .line 2808
    .local v8, "e":Ljava/lang/Exception;
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: Exception."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 2774
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v4    # "app":Lorg/w3c/dom/Element;
    .restart local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .restart local v15    # "solution":Lorg/w3c/dom/Node;
    .restart local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_11
    :try_start_2
    sget-boolean v18, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v18, :cond_f

    .line 2775
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackage: the package signature hasn\'t been specified"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 2795
    :cond_12
    invoke-interface {v15, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_1

    .line 2798
    .end local v4    # "app":Lorg/w3c/dom/Element;
    .end local v5    # "authConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v14    # "pack":Landroid/app/enterprise/sso/WhiteListPackage;
    .end local v17    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2799
    const-string v18, "GenericSSOService"

    const-string v19, "In _addWhiteListPackages: removing whitelistAll flag"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v16

    .line 2801
    .local v16, "status":Z
    const-string v18, "GenericSSOService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "In _addWhiteListPackages: return from remove whitelisting all apps = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2802
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method private _configureSSOByFile(Landroid/app/enterprise/ContextInfo;[BI)I
    .locals 32
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 2529
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v19, v0

    .line 2530
    .local v19, "mdmUid":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v29

    if-nez v29, :cond_1

    .line 2531
    sget-boolean v29, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v29, :cond_0

    .line 2532
    const-string v29, "GenericSSOService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "In _configureSSOByFile: MDM uid is not matched = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    :cond_0
    const/16 v29, -0xa

    .line 2677
    :goto_0
    return v29

    .line 2535
    :cond_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v29, v0

    if-nez v29, :cond_4

    .line 2536
    :cond_2
    sget-boolean v29, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v29, :cond_3

    .line 2537
    const-string v29, "GenericSSOService"

    const-string v30, "In _configureSSOByFile: config is null or is empty"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2539
    :cond_3
    const/16 v29, -0x3

    goto :goto_0

    .line 2542
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v9

    .line 2543
    .local v9, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v9}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v23

    .line 2544
    .local v23, "solution":Lorg/w3c/dom/Node;
    const/4 v10, 0x0

    .line 2545
    .local v10, "curAuthenPkgName":Ljava/lang/String;
    if-eqz v23, :cond_5

    .line 2546
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v29

    const-string/jumbo v30, "servicepackagename"

    invoke-interface/range {v29 .. v30}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 2554
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTempConfigFilePath(I)Ljava/lang/String;

    move-result-object v27

    .line 2555
    .local v27, "tmpFile":Ljava/lang/String;
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2556
    .local v25, "tmpConfigDataDir":Ljava/io/File;
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v29, Ljava/io/FileOutputStream;

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object/from16 v0, v29

    invoke-direct {v8, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2558
    .local v8, "configDataStream":Ljava/io/OutputStream;
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2559
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 2560
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 2562
    .local v12, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v11

    .line 2563
    .local v11, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v13

    .line 2564
    .local v13, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v13}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/Element;->normalize()V

    .line 2565
    new-instance v26, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-object/from16 v0, v26

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    .line 2568
    .local v26, "tmpConfigDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static/range {v26 .. v26}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    .line 2569
    .local v24, "solutionEle":Lorg/w3c/dom/Element;
    const-string/jumbo v29, "mdmuid"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    const-string/jumbo v29, "servicepackagename"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2573
    .local v6, "authenticatorPkgName":Ljava/lang/String;
    const-string/jumbo v29, "servicepackagesignature"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2577
    .local v5, "authenticatorPkgCert":Ljava/lang/String;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V
    invoke-static/range {v26 .. v26}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2578
    sget-boolean v29, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v29, :cond_6

    .line 2579
    const-string v29, "GenericSSOService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "In _configureSSOByFile: tmp sso config doc is updated in "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    :cond_6
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 2584
    sget-boolean v29, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v29, :cond_7

    .line 2585
    const-string v29, "GenericSSOService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "In _configureSSOByFile: updated sso config doc is saved at "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " for userId "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2590
    .local v16, "identity":J
    const-string v29, "application_policy"

    invoke-static/range {v29 .. v29}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2594
    .local v4, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_b

    .line 2595
    move/from16 v0, p3

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v29

    if-nez v29, :cond_9

    .line 2597
    sget-boolean v29, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v29, :cond_8

    .line 2598
    const-string v29, "GenericSSOService"

    const-string v30, "In _configureSSOByFile: Authenticator not installed"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    :cond_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 2601
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2602
    const/16 v29, -0xc

    goto/16 :goto_0

    .line 2604
    :cond_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2605
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2607
    .local v18, "installedAppPkgSig":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_b

    .line 2608
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_b

    .line 2609
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 2610
    sget-boolean v29, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v29, :cond_a

    .line 2611
    const-string v29, "GenericSSOService"

    const-string v30, "In _configureSSOByFile: Authenticator signature is not matched"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    :cond_a
    const/16 v29, -0xd

    goto/16 :goto_0

    .line 2618
    .end local v18    # "installedAppPkgSig":Ljava/lang/String;
    :cond_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2621
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_d

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_d

    .line 2623
    sget-boolean v29, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v29, :cond_c

    .line 2624
    const-string v29, "GenericSSOService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "In _configureSSOByFile: there\'s already one sso vendor enrolled for userId "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", please unenroll the existing one first"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    :cond_c
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 2629
    const/16 v29, -0x9

    goto/16 :goto_0

    .line 2633
    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v15

    .line 2634
    .local v15, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2635
    .local v7, "configDataDir":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_e

    .line 2636
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2638
    :cond_e
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v22

    .line 2639
    .local v22, "renameSucceed":Z
    if-nez v22, :cond_10

    .line 2640
    sget-boolean v29, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v29, :cond_f

    .line 2641
    const-string v29, "GenericSSOService"

    const-string v30, "In _configureSSOByFile: tempConfigFile failed to be saved to ssoconfig.xml"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    :cond_f
    const/16 v29, -0x1

    goto/16 :goto_0

    .line 2645
    :cond_10
    sget-object v29, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2646
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    .line 2647
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v28

    .line 2648
    .local v28, "vendorBundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v21

    .line 2650
    .local v21, "protocolConfiged":I
    if-eqz v21, :cond_12

    .line 2651
    sget-boolean v29, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v29, :cond_11

    .line 2652
    const-string v29, "GenericSSOService"

    const-string v30, "In configureSSOByFile: failed because of pushAuthenticatorConfig()"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    :cond_11
    const/16 v29, -0x10

    goto/16 :goto_0

    .line 2657
    :cond_12
    const/16 v29, 0x64

    move/from16 v0, p3

    move/from16 v1, v29

    if-lt v0, v1, :cond_13

    .line 2658
    sget-object v29, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-object/from16 v0, v29

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 2659
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x7

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    .line 2660
    .local v20, "message":Landroid/os/Message;
    move/from16 v0, p3

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2661
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v20

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 2662
    move-object/from16 v0, v20

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2663
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2677
    .end local v20    # "message":Landroid/os/Message;
    :cond_13
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 2666
    .end local v4    # "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    .end local v5    # "authenticatorPkgCert":Ljava/lang/String;
    .end local v6    # "authenticatorPkgName":Ljava/lang/String;
    .end local v7    # "configDataDir":Ljava/io/File;
    .end local v8    # "configDataStream":Ljava/io/OutputStream;
    .end local v9    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v10    # "curAuthenPkgName":Ljava/lang/String;
    .end local v11    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v13    # "doc":Lorg/w3c/dom/Document;
    .end local v15    # "filePath":Ljava/lang/String;
    .end local v16    # "identity":J
    .end local v21    # "protocolConfiged":I
    .end local v22    # "renameSucceed":Z
    .end local v23    # "solution":Lorg/w3c/dom/Node;
    .end local v24    # "solutionEle":Lorg/w3c/dom/Element;
    .end local v25    # "tmpConfigDataDir":Ljava/io/File;
    .end local v26    # "tmpConfigDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v27    # "tmpFile":Ljava/lang/String;
    .end local v28    # "vendorBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v14

    .line 2668
    .local v14, "e":Ljava/io/FileNotFoundException;
    const-string v29, "GenericSSOService"

    const-string v30, "In _configureSSOByFile: File not found exception in configureSSOByFile"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2669
    const/16 v29, -0x5

    goto/16 :goto_0

    .line 2670
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v14

    .line 2671
    .local v14, "e":Ljava/io/IOException;
    const-string v29, "GenericSSOService"

    const-string v30, "In configureSSOByFile: IO exception in configureSSOByFile"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2672
    const/16 v29, -0x1

    goto/16 :goto_0

    .line 2673
    .end local v14    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 2674
    .local v14, "e":Ljava/lang/Exception;
    const-string v29, "GenericSSOService"

    const-string v30, "In configureSSOByFile: Exception"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2675
    const/16 v29, -0x1

    goto/16 :goto_0
.end method

.method private _enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I
    .locals 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I
    .param p6, "pushRemote"    # Z

    .prologue
    .line 2161
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    .line 2162
    .local v17, "mdmUid":I
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_0

    const-string v24, "GenericSSOService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "In _enrollSSOVendor mdmUid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_0
    const/4 v15, 0x0

    .line 2164
    .local v15, "isRegistered":Z
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_1

    const-string v24, "GenericSSOService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "In _enrollSSOVendor userid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v6

    .line 2166
    .local v6, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v6}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 2167
    .local v9, "enrolledVendor":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 2169
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_2

    .line 2170
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: there\'s already one sso vendor enrolled"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_2
    const/16 v24, -0x9

    .line 2308
    :goto_0
    return v24

    .line 2174
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 2175
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_4

    .line 2176
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: authenticator is null or empty"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_4
    const/16 v24, -0x3

    goto :goto_0

    .line 2179
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2180
    .local v12, "identity":J
    const-string v24, "application_policy"

    invoke-static/range {v24 .. v24}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2182
    .local v4, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz v4, :cond_9

    .line 2183
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v24

    if-nez v24, :cond_7

    .line 2185
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 2186
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: Authenticator not installed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2188
    const/16 v24, -0xc

    goto :goto_0

    .line 2190
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2192
    .local v14, "installedAppPkgSig":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 2193
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 2194
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_8

    .line 2195
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: Authenticator signature is not matched"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2197
    :cond_8
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2198
    const/16 v24, -0xd

    goto :goto_0

    .line 2203
    .end local v14    # "installedAppPkgSig":Ljava/lang/String;
    :cond_9
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2207
    :try_start_0
    iget-object v7, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 2208
    .local v7, "doc":Lorg/w3c/dom/Document;
    const/16 v19, 0x0

    .line 2209
    .local v19, "newSolution":Lorg/w3c/dom/Element;
    if-eqz v9, :cond_d

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 2212
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v24

    if-nez v24, :cond_b

    .line 2213
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_a

    .line 2214
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: MDM uid is not matched"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_a
    const/16 v24, -0xa

    goto/16 :goto_0

    .line 2218
    :cond_b
    const/4 v15, 0x1

    .line 2219
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 2220
    .local v5, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_f

    .line 2221
    invoke-interface {v5, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 2222
    .local v20, "node":Lorg/w3c/dom/Node;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "whitelistpackage"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 2223
    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2220
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2227
    .end local v5    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v10    # "i":I
    .end local v20    # "node":Lorg/w3c/dom/Node;
    :cond_d
    const-string/jumbo v24, "ssoprovider"

    move-object/from16 v0, v24

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 2228
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_12

    .line 2229
    const-string/jumbo v24, "servicepackagesignature"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    :cond_e
    :goto_2
    const-string/jumbo v24, "servicepackagename"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    const-string/jumbo v24, "mdmuid"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v24

    if-nez v24, :cond_14

    .line 2245
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v24, v0

    const-string/jumbo v25, "vendorconfigs"

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 2247
    .local v23, "vendorconfigs":Lorg/w3c/dom/Element;
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2248
    .local v16, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_10

    .line 2249
    const/16 v20, 0x0

    .line 2250
    .local v20, "node":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "node":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .restart local v20    # "node":Lorg/w3c/dom/Element;
    if-nez v20, :cond_11

    .line 2251
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    .line 2252
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2254
    :cond_11
    const-string/jumbo v24, "value"

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_10

    .line 2257
    const-string v24, "GenericSSOService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "In _enrollSSOVendor:  <"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "> parameter for - packageName "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " is added"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_3

    .line 2301
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "key":Ljava/lang/String;
    .end local v19    # "newSolution":Lorg/w3c/dom/Element;
    .end local v20    # "node":Lorg/w3c/dom/Element;
    .end local v23    # "vendorconfigs":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v8

    .line 2302
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: NullPointerException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2308
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :goto_4
    const/16 v24, -0x1

    goto/16 :goto_0

    .line 2233
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v19    # "newSolution":Lorg/w3c/dom/Element;
    :cond_12
    :try_start_1
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_e

    .line 2234
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: Authenticator signature is not specified"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 2303
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v19    # "newSolution":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v8

    .line 2304
    .local v8, "e":Lorg/w3c/dom/DOMException;
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: DOMException"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2263
    .end local v8    # "e":Lorg/w3c/dom/DOMException;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v19    # "newSolution":Lorg/w3c/dom/Element;
    .restart local v23    # "vendorconfigs":Lorg/w3c/dom/Element;
    :cond_13
    if-nez v15, :cond_17

    .line 2264
    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2268
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v23    # "vendorconfigs":Lorg/w3c/dom/Element;
    :cond_14
    :goto_5
    if-nez v15, :cond_15

    .line 2269
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2270
    :cond_15
    iget-object v0, v6, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->normalize()V

    .line 2271
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2273
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v22

    .line 2275
    .local v22, "vendorBundle":Landroid/os/Bundle;
    if-eqz p6, :cond_18

    .line 2276
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v21

    .line 2278
    .local v21, "protocolConfiged":I
    if-eqz v21, :cond_18

    .line 2279
    sget-boolean v24, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v24, :cond_16

    .line 2280
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: failed because of pushAuthenticatorConfig()"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_16
    const/16 v24, -0x10

    goto/16 :goto_0

    .line 2266
    .end local v21    # "protocolConfiged":I
    .end local v22    # "vendorBundle":Landroid/os/Bundle;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v23    # "vendorconfigs":Lorg/w3c/dom/Element;
    :cond_17
    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 2305
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v19    # "newSolution":Lorg/w3c/dom/Element;
    .end local v23    # "vendorconfigs":Lorg/w3c/dom/Element;
    :catch_2
    move-exception v8

    .line 2306
    .local v8, "e":Ljava/lang/Exception;
    const-string v24, "GenericSSOService"

    const-string v25, "In _enrollSSOVendor: Exception"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 2287
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v19    # "newSolution":Lorg/w3c/dom/Element;
    .restart local v22    # "vendorBundle":Landroid/os/Bundle;
    :cond_18
    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V

    .line 2290
    const/16 v24, 0x64

    move/from16 v0, p5

    move/from16 v1, v24

    if-lt v0, v1, :cond_19

    .line 2291
    sget-object v24, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    move-object/from16 v0, v24

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getUnEnrollSetting(I)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 2292
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 2293
    .local v18, "message":Landroid/os/Message;
    move/from16 v0, p5

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 2294
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 2295
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2296
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2299
    .end local v18    # "message":Landroid/os/Message;
    :cond_19
    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/server/enterprise/sso/EnterpriseIdentity;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    return-object v0
.end method

.method static synthetic access$1002(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 0
    .param p0, "x0"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    return-object p0
.end method

.method static synthetic access$1102(Ljava/security/Key;)Ljava/security/Key;
    .locals 0
    .param p0, "x0"    # Ljava/security/Key;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    return-object p0
.end method

.method static synthetic access$1202(Ljava/security/KeyPair;)Ljava/security/KeyPair;
    .locals 0
    .param p0, "x0"    # Ljava/security/KeyPair;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    return-object p0
.end method

.method static synthetic access$1300()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/app/enterprise/ContextInfo;[BI)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->configureSSOByFile2(Landroid/app/enterprise/ContextInfo;[BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/enterprise/sso/GenericSSOService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/server/enterprise/sso/GenericSSOService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # J

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    return-wide p1
.end method

.method static synthetic access$2400()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/os/Bundle;
    .param p5, "x5"    # I

    .prologue
    .line 155
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->enrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .param p1, "x1"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/sso/GenericSSOService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    return-void
.end method

.method static synthetic access$800()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$802(Ljava/security/KeyStore;)Ljava/security/KeyStore;
    .locals 0
    .param p0, "x0"    # Ljava/security/KeyStore;

    .prologue
    .line 155
    sput-object p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/sso/GenericSSOService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->UNENROLL_SSO_AD_AUTHENTICATOR:Ljava/lang/String;

    return-object v0
.end method

.method private addAppTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3864
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3865
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 3866
    .local v6, "tokenNode":Lorg/w3c/dom/Element;
    if-nez v6, :cond_1

    .line 3867
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 3868
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In addAppTokenToSecureStorageForUser: the token for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3871
    :cond_0
    iget-object v8, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v9, "apptoken"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 3872
    const-string/jumbo v8, "packagename"

    invoke-interface {v6, v8, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    iget-object v8, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3875
    :cond_1
    const-string/jumbo v8, "protocoltype"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3879
    invoke-virtual {p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 3880
    .local v5, "tokenBundle":Landroid/os/Bundle;
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 3881
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3882
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3883
    .local v7, "value":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3884
    const-string v8, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3888
    invoke-direct {p0, v0, v6, v3, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3894
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "tokenBundle":Landroid/os/Bundle;
    .end local v6    # "tokenNode":Lorg/w3c/dom/Element;
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3895
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "GenericSSOService"

    const-string v9, "In addAppTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3899
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v8, -0x1

    :goto_2
    return v8

    .line 3892
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "tokenBundle":Landroid/os/Bundle;
    .restart local v6    # "tokenNode":Lorg/w3c/dom/Element;
    :cond_3
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3893
    const/4 v8, 0x0

    goto :goto_2

    .line 3896
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "tokenBundle":Landroid/os/Bundle;
    .end local v6    # "tokenNode":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v1

    .line 3897
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In addAppTokenToSecureStorageForUser: error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addTokenToGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3571
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3572
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3573
    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is null or empty string"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3578
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3579
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3581
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3582
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3583
    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    :cond_1
    const/4 v3, -0x1

    .line 3596
    :goto_0
    return v3

    .line 3587
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3588
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3589
    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is authenticator packagename, we add share token"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3591
    :cond_3
    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addUserAndDeviceCertificatesForUser(ILandroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0

    .line 3593
    :cond_4
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 3594
    const-string v3, "GenericSSOService"

    const-string v4, "In addTokenToGenericSSO: appPkgName is not application packagename, we add app token"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    :cond_5
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addAppTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0
.end method

.method private addTokenToSecureStorage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3811
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3813
    .local v0, "userId":I
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I

    move-result v1

    return v1
.end method

.method private addTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 13
    .param p1, "userId"    # I
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3908
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_2

    .line 3909
    :cond_0
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 3910
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: token to save is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    :cond_1
    const/4 v10, -0x3

    .line 3972
    :goto_0
    return v10

    .line 3915
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3916
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 3917
    .local v8, "userCertNode":Lorg/w3c/dom/Element;
    if-nez v8, :cond_4

    .line 3918
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 3919
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: the usercert doesn\'t exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    :cond_3
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v11, "usercertificate"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 3923
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v8}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3925
    :cond_4
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 3926
    .local v1, "deviceCertNode":Lorg/w3c/dom/Element;
    if-nez v1, :cond_6

    .line 3927
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_5

    .line 3928
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: the deviceCert doesn\'t exist"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3930
    :cond_5
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v11, "devicecertificate"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 3932
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3934
    :cond_6
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 3935
    .local v7, "tokenNode":Lorg/w3c/dom/Element;
    if-nez v7, :cond_8

    .line 3936
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_7

    .line 3937
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In addTokenToSecureStorageForUser: the token for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doesn\'t exist"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    :cond_7
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string v11, "apptoken"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 3941
    const-string/jumbo v10, "packagename"

    invoke-interface {v7, v10, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3942
    iget-object v10, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v10}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3944
    :cond_8
    const-string/jumbo v10, "protocoltype"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3948
    invoke-virtual/range {p3 .. p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 3949
    .local v6, "tokenBundle":Landroid/os/Bundle;
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 3951
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3952
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3953
    .local v9, "value":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 3954
    const-string v10, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3956
    :cond_a
    invoke-direct {p0, v0, v8, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3967
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    .end local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3968
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: NullPointerException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3972
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 3957
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "tokenBundle":Landroid/os/Bundle;
    .restart local v7    # "tokenNode":Lorg/w3c/dom/Element;
    .restart local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string v10, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 3959
    :cond_c
    invoke-direct {p0, v0, v1, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3969
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    .end local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v9    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 3970
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    const-string v11, "In addTokenToSecureStorageForUser: Exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3961
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "tokenBundle":Landroid/os/Bundle;
    .restart local v7    # "tokenNode":Lorg/w3c/dom/Element;
    .restart local v8    # "userCertNode":Lorg/w3c/dom/Element;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_d
    :try_start_2
    invoke-direct {p0, v0, v7, v4, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3965
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3966
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private addUserAndDeviceCertificatesForUser(ILandroid/app/enterprise/sso/TokenInfo;)I
    .locals 12
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3818
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3819
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 3820
    .local v7, "userCertNode":Lorg/w3c/dom/Element;
    if-nez v7, :cond_1

    .line 3821
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 3822
    const-string v9, "GenericSSOService"

    const-string v10, "In addUserAndDeviceCertificates: the usercert doesn\'t exist"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    :cond_0
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v10, "usercertificate"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 3826
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3828
    :cond_1
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 3829
    .local v1, "deviceCertNode":Lorg/w3c/dom/Element;
    if-nez v1, :cond_3

    .line 3830
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 3831
    const-string v9, "GenericSSOService"

    const-string v10, "In addUserAndDeviceCertificates: the deviceCert doesn\'t exist"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    :cond_2
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    const-string/jumbo v10, "devicecertificate"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 3835
    iget-object v9, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3837
    :cond_3
    invoke-virtual {p2}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 3838
    .local v6, "tokenBundle":Landroid/os/Bundle;
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 3839
    .local v5, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3840
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3841
    .local v8, "value":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3842
    const-string v9, "SAML_RESPONSE_USER_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "OAUTH_RESPONSE_USER_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 3844
    :cond_5
    invoke-direct {p0, v0, v7, v4, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3853
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3854
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v9, "GenericSSOService"

    const-string v10, "In addUserAndDeviceCertificates: NullPointerException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3858
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v9, -0x1

    :goto_2
    return v9

    .line 3845
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "tokenBundle":Landroid/os/Bundle;
    .restart local v7    # "userCertNode":Lorg/w3c/dom/Element;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v9, "SAML_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "OAUTH_RESPONSE_DEVICE_CERT"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3847
    :cond_7
    invoke-direct {p0, v0, v1, v4, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3855
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "tokenBundle":Landroid/os/Bundle;
    .end local v7    # "userCertNode":Lorg/w3c/dom/Element;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 3856
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In addUserAndDeviceCertificates: error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3851
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Element;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "tokenBundle":Landroid/os/Bundle;
    .restart local v7    # "userCertNode":Lorg/w3c/dom/Element;
    :cond_8
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3852
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private bindToService(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1129
    new-instance v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;-><init>(I)V

    .line 1130
    .local v0, "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1131
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1132
    const-string v3, "GenericSSOService"

    const-string v4, "In bindToService: The SSO Service is already bound"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->SERVICECONNECTIONWAIT:Ljava/lang/Object;

    monitor-enter v4

    .line 1137
    :try_start_0
    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: Binding to the service..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p2, v0, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1141
    :try_start_1
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1142
    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x4e20

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    .line 1144
    .local v1, "countDownTimeout":Z
    if-nez v1, :cond_2

    .line 1145
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 1146
    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: CoutnDownLatch return false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    .end local v1    # "countDownTimeout":Z
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1149
    :catch_0
    move-exception v2

    .line 1150
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: InterruptedException"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1153
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const-string v3, "GenericSSOService"

    const-string v5, "In bindToService: Fail to bind to sso service"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z
    .locals 7
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "configData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1029
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1030
    const-string v4, "GenericSSOService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In callingAppIsPermitted: packageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    invoke-static {v4, v5, v3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 1034
    .local v1, "whiteListstatus":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 1057
    :cond_1
    :goto_1
    return v2

    .end local v1    # "whiteListstatus":Z
    :cond_2
    move v1, v3

    .line 1032
    goto :goto_0

    .line 1036
    .restart local v1    # "whiteListstatus":Z
    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1037
    :cond_4
    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In callingAppIsPermitted: Bundle configData is null or empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1039
    goto :goto_1

    .line 1041
    :cond_5
    const-string v4, "clientpackagesignature"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1043
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "packageCert":Ljava/lang/String;
    const-string v4, "clientpackagesignature"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1047
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1048
    const-string v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In callingAppIsPermitted: Fail to pass the callingApp cert check: (ondevice vs config) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "clientpackagesignature"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v2, v3

    .line 1054
    goto :goto_1
.end method

.method private cleanUpSSOConnections(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1991
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1992
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1993
    iget-object v1, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1994
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1995
    const-string v0, "GenericSSOService"

    const-string v1, "In cleanUpSSOConnections: SSO service is unbounded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1998
    const-string v0, "GenericSSOService"

    const-string v1, "In cleanUpSSOConnections: SSO connection is remove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    :cond_1
    return-void
.end method

.method private clearConfigAndTokenForAuthenticator(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 3083
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v3

    .line 3084
    .local v3, "ret":I
    if-eqz v3, :cond_1

    .line 3085
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3086
    const-string v4, "GenericSSOService"

    const-string v5, "In clearConfigAndTokenForAuthenticator: Fail to clear records remotely"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    :cond_0
    const/16 v3, -0x10

    .line 3109
    .end local v3    # "ret":I
    :goto_0
    return v3

    .line 3092
    .restart local v3    # "ret":I
    :cond_1
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3093
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 3094
    .local v2, "filepath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3095
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3098
    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 3099
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 3100
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3101
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3103
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "filepath":Ljava/lang/String;
    .end local v3    # "ret":I
    :catch_0
    move-exception v0

    .line 3104
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "GenericSSOService"

    const-string v5, "clearConfigAndTokenForAuthenticator: SecurityException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3109
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 3106
    :catch_1
    move-exception v0

    .line 3107
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "GenericSSOService"

    const-string v5, "clearConfigAndTokenForAuthenticator: Exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private clearUserCertAndAppToken(Landroid/app/enterprise/ContextInfo;)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3114
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 3116
    .local v6, "userId":I
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3117
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhiteListPackages(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v4

    .line 3118
    .local v4, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 3119
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3120
    .local v3, "packageName":Ljava/lang/String;
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 3121
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In clearUserCertAndAppToken: Processing packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    :cond_0
    invoke-direct {p0, v6, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteAppTokenForUser(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3134
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "userId":I
    :catch_0
    move-exception v1

    .line 3135
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v7, "GenericSSOService"

    const-string v8, "In clearUserCertAndAppToken: NullPointerException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3139
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v7, -0x1

    :goto_2
    return v7

    .line 3128
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "userId":I
    :cond_1
    :try_start_1
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 3129
    .local v5, "userCertNode":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_2

    .line 3130
    iget-object v7, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7, v5}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3132
    :cond_2
    invoke-direct {p0, v6, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3133
    const/4 v7, 0x0

    goto :goto_2

    .line 3136
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v4    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "userCertNode":Lorg/w3c/dom/Node;
    .end local v6    # "userId":I
    :catch_1
    move-exception v1

    .line 3137
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "GenericSSOService"

    const-string v8, "In clearUserCertAndAppToken: Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private configureSSOByFile2(Landroid/app/enterprise/ContextInfo;[BI)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 2510
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2511
    if-nez p1, :cond_1

    .line 2512
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2513
    const-string v2, "GenericSSOService"

    const-string v3, "In configureSSOByFile2: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_0
    const/4 v0, -0x3

    .line 2525
    :goto_0
    return v0

    .line 2516
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_configureSSOByFile(Landroid/app/enterprise/ContextInfo;[BI)I

    move-result v0

    .line 2517
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2518
    const-string v2, "GenericSSOService"

    const-string v3, "In configureSSOByFile2: success in unenrolling, removing whitelist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    const/4 v2, 0x0

    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2520
    .local v1, "status":Z
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In configureSSOByFile2: return from remove whitelisting all apps(Remove log later) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2523
    .end local v1    # "status":Z
    :cond_2
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In configureSSOByFile2: Failed to configure file = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createSecretKey()Ljavax/crypto/SecretKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 1300
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 1301
    .local v1, "keyGenerator":Ljavax/crypto/KeyGenerator;
    const/16 v2, 0x100

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 1302
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1303
    .local v0, "key":Ljavax/crypto/SecretKey;
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1304
    const-string v2, "GenericSSOService"

    const-string/jumbo v3, "secret key is created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_0
    return-object v0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1291
    .local v0, "_token":J
    :try_start_0
    const-string v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "ciphertext"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1518
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1519
    :cond_0
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 1520
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: Key alias or token to encrypt is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v7

    .line 1576
    :cond_2
    :goto_0
    return-object v2

    .line 1524
    :cond_3
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1525
    .local v1, "data":[B
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    .line 1526
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    .line 1528
    sget-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    instance-of v6, v6, Ljavax/crypto/SecretKey;

    if-nez v6, :cond_5

    .line 1529
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 1530
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v7

    .line 1532
    goto :goto_0

    .line 1535
    :cond_5
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1536
    .local v0, "cipher":Ljavax/crypto/Cipher;
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_6

    .line 1537
    const-string v6, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In decrypt: Provider is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_6
    if-eqz v0, :cond_9

    .line 1539
    array-length v6, v1

    add-int/lit8 v4, v6, -0x10

    .line 1540
    .local v4, "ivIndex":I
    const/4 v8, 0x2

    sget-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    check-cast v6, Ljavax/crypto/SecretKey;

    new-instance v9, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v10, 0x10

    invoke-direct {v9, v1, v4, v10}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v0, v8, v6, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1542
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v5

    .line 1543
    .local v5, "out":[B
    new-instance v2, Ljava/lang/String;

    const-string v6, "UTF_8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1544
    .local v2, "decrypted":Ljava/lang/String;
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_7

    .line 1545
    const-string v6, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In decrypt: Decrypted output is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_7
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1547
    const-string v6, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In decrypt: the length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    goto/16 :goto_0

    .line 1553
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "data":[B
    .end local v2    # "decrypted":Ljava/lang/String;
    .end local v4    # "ivIndex":I
    .end local v5    # "out":[B
    :catch_0
    move-exception v3

    .line 1554
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: NoSuchAlgorithmException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_8
    :goto_1
    move-object v2, v7

    .line 1576
    goto/16 :goto_0

    .line 1550
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "data":[B
    :cond_9
    :try_start_1
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_8

    .line 1551
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: cipher is null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_1

    .line 1555
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "data":[B
    :catch_1
    move-exception v3

    .line 1556
    .local v3, "e":Ljava/security/KeyStoreException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: KeyStoreException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1557
    .end local v3    # "e":Ljava/security/KeyStoreException;
    :catch_2
    move-exception v3

    .line 1558
    .local v3, "e":Ljava/security/InvalidKeyException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: InvalidKeyException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1559
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v3

    .line 1560
    .local v3, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v6, "GenericSSOService"

    const-string v8, "In encrypt: NoSuchPaddingException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1561
    .end local v3    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v3

    .line 1562
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: IllegalBlockSizeException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1563
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v3

    .line 1564
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: BadPaddingException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1565
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    :catch_6
    move-exception v3

    .line 1566
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: UnrecoverableKeyException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1567
    .end local v3    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_7
    move-exception v3

    .line 1568
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: IOException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1569
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 1570
    .local v3, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: InvalidAlgorithmParameterException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1571
    .end local v3    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_9
    move-exception v3

    .line 1572
    .local v3, "e":Ljava/security/GeneralSecurityException;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: GeneralSecurityException"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1573
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :catch_a
    move-exception v3

    .line 1574
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "GenericSSOService"

    const-string v8, "In decrypt: Exception"

    invoke-static {v6, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private deleteAppTokenForUser(ILjava/lang/String;)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3349
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3350
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3351
    const-string v3, "GenericSSOService"

    const-string v4, "In deleteAppTokenForUser: packageName is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3352
    :cond_0
    const/4 v3, -0x3

    .line 3376
    :goto_0
    return v3

    .line 3355
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3356
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 3357
    .local v2, "tokenNode":Lorg/w3c/dom/Node;
    if-nez v2, :cond_3

    .line 3358
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3359
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 3370
    const/4 v3, 0x0

    goto :goto_0

    .line 3363
    :cond_3
    iget-object v3, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3364
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 3365
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In deleteAppTokenForUser: the token for packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3371
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v2    # "tokenNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v1

    .line 3372
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "GenericSSOService"

    const-string v4, "In deleteAppTokenForUser: NullPointerException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3376
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v3, -0x1

    goto :goto_0

    .line 3373
    :catch_1
    move-exception v1

    .line 3374
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "GenericSSOService"

    const-string v4, "In deleteAppTokenForUser: Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private deleteUserAndDeviceCertForUser(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 3381
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v0

    .line 3382
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 3383
    .local v3, "userCertNode":Lorg/w3c/dom/Node;
    if-nez v3, :cond_2

    .line 3384
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3385
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: userCertNode is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    :cond_0
    :goto_0
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 3394
    .local v1, "deviceCertNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_3

    .line 3395
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 3396
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: deviceCertNode is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 3405
    const/4 v4, 0x0

    .line 3411
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Node;
    .end local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :goto_2
    return v4

    .line 3388
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :cond_2
    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3389
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3390
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: userCertNode is removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3406
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    .line 3407
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: NullPointerException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3411
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_3
    const/4 v4, -0x1

    goto :goto_2

    .line 3399
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v1    # "deviceCertNode":Lorg/w3c/dom/Node;
    .restart local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :cond_3
    :try_start_1
    iget-object v4, v0, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3400
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 3401
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: deviceCertNode is removed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3408
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v1    # "deviceCertNode":Lorg/w3c/dom/Node;
    .end local v3    # "userCertNode":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v2

    .line 3409
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "GenericSSOService"

    const-string v5, "In deleteUserAndDeviceCertForUser: Exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 1277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1279
    .local v0, "_token":J
    :try_start_0
    const-string v2, "GenericSSOService"

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1281
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1440
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1441
    :cond_0
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 1442
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: Key alias or token to encrypt is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v2, v10

    .line 1510
    :cond_2
    :goto_0
    return-object v2

    .line 1447
    :cond_3
    :try_start_0
    const-string v9, "UTF_8"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 1448
    .local v3, "data":[B
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->initKeyStore()V

    .line 1449
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->loadKey(Ljava/lang/String;)V

    .line 1451
    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    instance-of v9, v9, Ljavax/crypto/SecretKey;

    if-nez v9, :cond_5

    .line 1452
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_4

    .line 1453
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: the retrieved key in keystore is not SecretKey"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v2, v10

    .line 1455
    goto :goto_0

    .line 1459
    :cond_5
    const/16 v9, 0x10

    new-array v5, v9, [B

    .line 1460
    .local v5, "iv":[B
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 1461
    .local v7, "mRandom":Ljava/security/SecureRandom;
    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1462
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1464
    .local v6, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v9, "AES/CBC/PKCS5Padding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1465
    .local v1, "cipher":Ljavax/crypto/Cipher;
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_6

    .line 1466
    const-string v9, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In encrypt: Provider is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_6
    if-eqz v1, :cond_8

    .line 1468
    const/4 v11, 0x1

    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    check-cast v9, Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v11, v9, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1469
    invoke-virtual {v1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    .line 1471
    .local v8, "out":[B
    array-length v9, v8

    array-length v11, v5

    add-int/2addr v9, v11

    new-array v0, v9, [B

    .line 1472
    .local v0, "EncryptedDataAndIV":[B
    const/4 v9, 0x0

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v8, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1473
    const/4 v9, 0x0

    array-length v11, v8

    array-length v12, v5

    invoke-static {v5, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1476
    new-instance v2, Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v0, v9}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v9

    const-string v11, "UTF_8"

    invoke-direct {v2, v9, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1478
    .local v2, "ciphertext":Ljava/lang/String;
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 1479
    const-string v9, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In encrypt: Encrypted output "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_7
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 1481
    const-string v9, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In encrypt: the length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    goto/16 :goto_0

    .line 1485
    .end local v0    # "EncryptedDataAndIV":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "ciphertext":Ljava/lang/String;
    .end local v3    # "data":[B
    .end local v5    # "iv":[B
    .end local v6    # "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v7    # "mRandom":Ljava/security/SecureRandom;
    .end local v8    # "out":[B
    :catch_0
    move-exception v4

    .line 1486
    .local v4, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: InvalidAlgorithmParameterException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :cond_8
    :goto_1
    move-object v2, v10

    .line 1510
    goto/16 :goto_0

    .line 1487
    :catch_1
    move-exception v4

    .line 1488
    .local v4, "e":Ljava/security/InvalidKeyException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: InvalidKeyException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1489
    .end local v4    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v4

    .line 1490
    .local v4, "e":Ljava/security/NoSuchProviderException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: NoSuchProviderException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1491
    .end local v4    # "e":Ljava/security/NoSuchProviderException;
    :catch_3
    move-exception v4

    .line 1492
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: NoSuchAlgorithmException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1493
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v4

    .line 1494
    .local v4, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: NoSuchPaddingException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1495
    .end local v4    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_5
    move-exception v4

    .line 1496
    .local v4, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: IllegalBlockSizeException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1497
    .end local v4    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_6
    move-exception v4

    .line 1498
    .local v4, "e":Ljavax/crypto/BadPaddingException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: BadPaddingException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1499
    .end local v4    # "e":Ljavax/crypto/BadPaddingException;
    :catch_7
    move-exception v4

    .line 1500
    .local v4, "e":Ljava/security/ProviderException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: ProviderException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1501
    .end local v4    # "e":Ljava/security/ProviderException;
    :catch_8
    move-exception v4

    .line 1502
    .local v4, "e":Ljava/security/KeyStoreException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: KeyStoreException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1503
    .end local v4    # "e":Ljava/security/KeyStoreException;
    :catch_9
    move-exception v4

    .line 1504
    .local v4, "e":Ljava/security/UnrecoverableKeyException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: UnrecoverableKeyException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1505
    .end local v4    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_a
    move-exception v4

    .line 1506
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: IOException"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1507
    .end local v4    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 1508
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    const-string v11, "In encrypt: Exception"

    invoke-static {v9, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.mdm.permission.MDM_SSO"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .prologue
    .line 2135
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2136
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: context infor before enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2138
    if-nez p1, :cond_2

    .line 2139
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2140
    const-string v0, "GenericSSOService"

    const-string v1, "In enrollSSOVendor2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_1
    const/4 v7, -0x3

    .line 2154
    :goto_0
    return v7

    .line 2143
    :cond_2
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 2144
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: context infor after enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_3
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v7

    .line 2146
    .local v7, "ret":I
    if-nez v7, :cond_4

    .line 2147
    const-string v0, "GenericSSOService"

    const-string v1, "In enrollSSOVendor2: success in enrolling, whitelisting false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    const/4 v0, 0x0

    invoke-direct {p0, v0, p5}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v8

    .line 2149
    .local v8, "status":Z
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: return from whitelisting all apps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2152
    .end local v8    # "status":Z
    :cond_4
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor2: Failed to enroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "childName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2053
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 2074
    :goto_0
    return-object v5

    .line 2056
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 2057
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2058
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 2059
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 2060
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2062
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2058
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2065
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 2066
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_4
    move-object v5, v6

    .line 2068
    goto :goto_0

    .line 2069
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 2070
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v5, "GenericSSOService"

    const-string v7, "In ExistedNode: NullPointerException"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v5, v6

    .line 2074
    goto :goto_0

    .line 2071
    :catch_1
    move-exception v1

    .line 2072
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "GenericSSOService"

    const-string v7, "In ExistedNode: Exception"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private fillChildNodes(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "configDoc"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .param p2, "tokenNode"    # Lorg/w3c/dom/Element;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 3144
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    .line 3145
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3146
    const-string v3, "GenericSSOService"

    const-string v4, "In fillChildNodes: parameters are not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    :cond_1
    :goto_0
    return-void

    .line 3150
    :cond_2
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3151
    .local v2, "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .line 3152
    .local v1, "tokenFieldNode":Lorg/w3c/dom/Element;
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 3153
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3154
    :cond_3
    iget-object v3, p1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3, p3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 3155
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3159
    :goto_1
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 3160
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the original value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_4
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/sso/GenericSSOService;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 3163
    if-nez p4, :cond_6

    .line 3164
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3165
    const-string v3, "GenericSSOService"

    const-string v4, "In fillChildNodes: encrypted token value is null, failed to fillChildNodes"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3176
    .end local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    .end local v2    # "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v0

    .line 3177
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "GenericSSOService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3157
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    .restart local v2    # "tokenNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :cond_5
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    check-cast v1, Lorg/w3c/dom/Element;

    .restart local v1    # "tokenFieldNode":Lorg/w3c/dom/Element;
    goto :goto_1

    .line 3169
    :cond_6
    const-string/jumbo v3, "value"

    invoke-interface {v1, v3, p4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3172
    :cond_7
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3173
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .param p2, "attributeName"    # Ljava/lang/String;
    .param p3, "attributeValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .line 1251
    if-nez p1, :cond_0

    move-object v1, v2

    .line 1259
    :goto_0
    return-object v1

    .line 1253
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 1254
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v1    # "node":Lorg/w3c/dom/Node;
    :cond_2
    move-object v1, v2

    .line 1259
    goto :goto_0
.end method

.method private getAccessTokenByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    const/4 v2, 0x0

    .line 1842
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1843
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1844
    const-string v3, "GenericSSOService"

    const-string v4, "In getAccessTokenByProtocolType: token is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    :cond_1
    :goto_0
    return-object v2

    .line 1848
    :cond_2
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v0

    .line 1849
    .local v0, "protocolType":I
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1850
    .local v1, "responseBundle":Landroid/os/Bundle;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1852
    :pswitch_0
    const-string v2, "SAML_RESPONSE_ASSERTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1855
    :pswitch_1
    const-string v2, "OAUTH_RESPONSE_ACCESS_TOKEN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1858
    :pswitch_2
    const-string v2, "SAML_RESPONSE_ASSERTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1850
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 3305
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3306
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 3307
    const-string v9, "GenericSSOService"

    const-string v10, "In getAppTokenFromSecureStorageForUser: appPkgName is null or empty"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v6, v8

    .line 3345
    :goto_0
    return-object v6

    .line 3312
    :cond_1
    :try_start_0
    new-instance v6, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v6}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    .line 3313
    .local v6, "retToken":Landroid/app/enterprise/sso/TokenInfo;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v3

    .line 3314
    .local v3, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getSSOTokenNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    invoke-static {v3, p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$2000(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 3315
    .local v7, "tokenNode":Lorg/w3c/dom/Element;
    if-nez v7, :cond_3

    .line 3316
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 3317
    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In getAppTokenFromSecureStorageForUser: the token for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " doesn\'t exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v6, v8

    .line 3320
    goto :goto_0

    .line 3322
    :cond_3
    const-string/jumbo v9, "protocoltype"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/app/enterprise/sso/TokenInfo;->setProtocolType(I)V

    .line 3325
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3326
    .local v2, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3327
    .local v0, "cachedTokenItems":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 3328
    .local v1, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 3330
    const-string/jumbo v9, "value"

    invoke-direct {p0, v1, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 3331
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-direct {p0, v1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3340
    .end local v0    # "cachedTokenItems":Landroid/os/Bundle;
    .end local v1    # "childNode":Lorg/w3c/dom/Node;
    .end local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v4

    .line 3341
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string v9, "GenericSSOService"

    const-string v10, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v6, v8

    .line 3345
    goto/16 :goto_0

    .line 3337
    .restart local v0    # "cachedTokenItems":Landroid/os/Bundle;
    .restart local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    .restart local v7    # "tokenNode":Lorg/w3c/dom/Element;
    :cond_5
    :try_start_1
    invoke-virtual {v6, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3342
    .end local v0    # "cachedTokenItems":Landroid/os/Bundle;
    .end local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    .end local v7    # "tokenNode":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v4

    .line 3343
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    const-string v10, "In getAppTokenFromSecureStorageForUser: Exception"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "attirbuteName"    # Ljava/lang/String;

    .prologue
    .line 1267
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1269
    :cond_0
    const/4 v0, 0x0

    .line 1270
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1220
    if-nez p1, :cond_1

    move-object v4, v5

    .line 1238
    :cond_0
    :goto_0
    return-object v4

    .line 1223
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1224
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1226
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1227
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1228
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1229
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1226
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1233
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 1234
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v4, v5

    .line 1238
    goto :goto_0

    .line 1235
    :catch_1
    move-exception v1

    .line 1236
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "childName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1191
    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v4, v5

    .line 1210
    :cond_1
    :goto_0
    return-object v4

    .line 1195
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1196
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 1198
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1199
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1201
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1197
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1205
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    .end local v3    # "node":Lorg/w3c/dom/Node;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    :catch_0
    move-exception v1

    .line 1206
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: NullPointerException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v4, v5

    .line 1210
    goto :goto_0

    .line 1207
    :catch_1
    move-exception v1

    .line 1208
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "GenericSSOService"

    const-string v7, "In getChildNodes: Exception"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getConfigData(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v5

    .line 677
    .local v5, "vendorBundle":Landroid/os/Bundle;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 679
    .local v4, "packageBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 680
    .local v3, "newBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 681
    .local v2, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 682
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 683
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 684
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 685
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 689
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 690
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 691
    .restart local v1    # "key":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 692
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 695
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method private getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 753
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v4

    .line 754
    .local v4, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 755
    .local v9, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v9, :cond_1

    .line 756
    const/4 v8, 0x0

    .line 800
    .end local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    return-object v8

    .line 758
    .restart local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v1

    .line 759
    .local v1, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    if-nez v1, :cond_2

    .line 760
    const/4 v8, 0x0

    goto :goto_0

    .line 762
    :cond_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 763
    .local v8, "ret":Landroid/os/Bundle;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 764
    .local v0, "allowedApp":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string v10, "clientpackagename"

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 770
    const-string v10, "clientpackagename"

    invoke-virtual {v8, v10, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v10, "clientpackagesignature"

    invoke-direct {p0, v0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 774
    const-string v10, "clientpackagesignature"

    const-string v11, "clientpackagesignature"

    invoke-direct {p0, v0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v3

    .line 783
    .local v3, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 784
    .local v2, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 786
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-direct {p0, v2, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 795
    .end local v0    # "allowedApp":Lorg/w3c/dom/Node;
    .end local v1    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v2    # "childNode":Lorg/w3c/dom/Node;
    .end local v3    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "ret":Landroid/os/Bundle;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v5

    .line 796
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForPkgName: NullPointerException"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 797
    :catch_1
    move-exception v5

    .line 798
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForPkgName: Exception"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private getConfigDataForSSOVendor(I)Landroid/os/Bundle;
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 705
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 706
    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForSSOVendor: start getConfigDataForSSOVendor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_0
    const/4 v7, 0x0

    .line 710
    .local v7, "ret":Landroid/os/Bundle;
    :try_start_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 711
    .end local v7    # "ret":Landroid/os/Bundle;
    .local v8, "ret":Landroid/os/Bundle;
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    .line 712
    .local v3, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 714
    .local v9, "ssoNode":Lorg/w3c/dom/Node;
    const-string/jumbo v10, "servicepackagename"

    const-string/jumbo v11, "servicepackagename"

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string/jumbo v10, "servicepackagesignature"

    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 721
    const-string/jumbo v10, "servicepackagesignature"

    const-string/jumbo v11, "servicepackagesignature"

    invoke-direct {p0, v9, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v1

    .line 730
    .local v1, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 731
    .local v0, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "vendorconfigs"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 733
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    .line 734
    .local v2, "configChildNode":Lorg/w3c/dom/Node;
    const-string/jumbo v10, "value"

    invoke-direct {p0, v2, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 735
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "value"

    invoke-direct {p0, v2, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 744
    .end local v0    # "childNode":Lorg/w3c/dom/Node;
    .end local v1    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v2    # "configChildNode":Lorg/w3c/dom/Node;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v4

    move-object v7, v8

    .line 745
    .end local v8    # "ret":Landroid/os/Bundle;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v7    # "ret":Landroid/os/Bundle;
    :goto_1
    const-string v10, "GenericSSOService"

    const-string v11, "In getConfigDataForSSOVendor: Exception"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 747
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v7

    .end local v7    # "ret":Landroid/os/Bundle;
    .restart local v1    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v8    # "ret":Landroid/os/Bundle;
    .restart local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_4
    move-object v7, v8

    .line 746
    .end local v8    # "ret":Landroid/os/Bundle;
    .restart local v7    # "ret":Landroid/os/Bundle;
    goto :goto_2

    .line 744
    .end local v1    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v9    # "ssoNode":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private getDeviceCertificate(I)Landroid/app/enterprise/sso/TokenInfo;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1973
    new-instance v6, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v6}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    .line 1974
    .local v6, "retToken":Landroid/app/enterprise/sso/TokenInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1975
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 1976
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1977
    .local v2, "deviceCertNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 1978
    .local v5, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 1979
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1980
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1982
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1986
    .end local v4    # "node":Lorg/w3c/dom/Node;
    :cond_1
    invoke-virtual {v6, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    .line 1987
    return-object v6
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExpirationTimeByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    const/4 v2, 0x0

    .line 1883
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1884
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1885
    const-string v3, "GenericSSOService"

    const-string/jumbo v4, "token is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_1
    :goto_0
    return-object v2

    .line 1888
    :cond_2
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v0

    .line 1889
    .local v0, "protocolType":I
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1890
    .local v1, "responseBundle":Landroid/os/Bundle;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1892
    :pswitch_0
    const-string v2, "SAML_RESPONSE_EXPIRED_TIME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1895
    :pswitch_1
    const-string v2, "OAUTH_RESPONSE_EXPIRES_IN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1898
    :pswitch_2
    const-string v2, "SAML_RESPONSE_EXPIRED_TIME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1890
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 457
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    if-nez v2, :cond_0

    .line 458
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 459
    .local v0, "token":J
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GenericSSOService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 460
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 461
    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    .line 462
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 464
    .end local v0    # "token":J
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mHandler:Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;

    return-object v2
.end method

.method private getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 6
    .param p1, "keystorename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1313
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 1314
    .local v1, "ks":Ljava/security/KeyStore;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1315
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1316
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keystore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is initialized"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1333
    .end local v1    # "ks":Ljava/security/KeyStore;
    :cond_0
    :goto_0
    return-object v1

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/security/KeyStoreException;
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In getInstanceOfKeyStore: KeyStore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " initializaiton failed (Android API level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1323
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: KeyStoreException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/security/KeyStoreException;
    :cond_1
    :goto_1
    move-object v1, v2

    .line 1333
    goto :goto_0

    .line 1324
    :catch_1
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: NullPointerException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1326
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1327
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1328
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1329
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: NoSuchAlgorithmException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1330
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_4
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v3, "GenericSSOService"

    const-string v4, "In getInstanceOfKeyStore: CertificateException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private declared-synchronized getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .prologue
    .line 1684
    monitor-enter p0

    :try_start_0
    const-string v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 1685
    .local v4, "keyStore":Ljava/security/KeyStore;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1687
    const-string v7, "KnoxSSOKey"

    invoke-virtual {v4, v7}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1688
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1689
    const-string v7, "GenericSSOService"

    const-string v8, "In getKeyPairFromAndroidKeyStore: Key entry is not available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1693
    .local v6, "start":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1694
    .local v1, "end":Ljava/util/Calendar;
    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 1698
    const-string v7, "CN=%s, OU=%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "KnoxSSOKey"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1700
    .local v0, "certInfo":Ljava/lang/String;
    new-instance v7, Landroid/security/KeyPairGeneratorSpec$Builder;

    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    const-string v8, "KnoxSSOKey"

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    new-instance v8, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v8, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object v5

    .line 1707
    .local v5, "spec":Landroid/security/KeyPairGeneratorSpec;
    const-string v7, "RSA"

    const-string v8, "AndroidKeyStore"

    invoke-static {v7, v8}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 1709
    .local v3, "generator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v3, v5}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1710
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 1711
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1712
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key entry is generated for cert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    .end local v0    # "certInfo":Ljava/lang/String;
    .end local v1    # "end":Ljava/util/Calendar;
    .end local v3    # "generator":Ljava/security/KeyPairGenerator;
    .end local v5    # "spec":Landroid/security/KeyPairGeneratorSpec;
    .end local v6    # "start":Ljava/util/Calendar;
    :cond_1
    :goto_0
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 1721
    const-string v7, "GenericSSOService"

    const-string v8, "In getKeyPairFromAndroidKeyStore: Reading Key entry"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_2
    const-string v7, "KnoxSSOKey"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 1724
    .local v2, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    new-instance v7, Ljava/security/KeyPair;

    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v7

    .line 1714
    .end local v2    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :cond_3
    :try_start_1
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1715
    const-string v7, "GenericSSOService"

    const-string v8, "In getKeyPairFromAndroidKeyStore: Key entry is available"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1684
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 631
    const/4 v8, 0x0

    .line 632
    .local v8, "pkgCert":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 634
    .local v12, "token":J
    :try_start_0
    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 635
    const-string v14, "GenericSSOService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "In getPackageCertForPkgname: User id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v6

    .line 638
    .local v6, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v14, 0x40

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v6, v0, v14, v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 640
    .local v9, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v9, :cond_2

    .line 641
    sget-boolean v14, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v14, :cond_1

    .line 642
    const-string v14, "GenericSSOService"

    const-string v15, "In getPackageCertForPkgname: pkgInfo is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_1
    const/4 v14, 0x0

    .line 657
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    .end local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v14

    .line 645
    .restart local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .restart local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    iget-object v11, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 646
    .local v11, "signs":[Landroid/content/pm/Signature;
    move-object v2, v11

    .local v2, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v10, v2, v4

    .line 647
    .local v10, "sign":Landroid/content/pm/Signature;
    if-eqz v10, :cond_4

    .line 648
    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 657
    .end local v10    # "sign":Landroid/content/pm/Signature;
    :cond_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "signs":[Landroid/content/pm/Signature;
    :goto_2
    move-object v14, v8

    .line 659
    goto :goto_0

    .line 646
    .restart local v2    # "arr$":[Landroid/content/pm/Signature;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .restart local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v10    # "sign":Landroid/content/pm/Signature;
    .restart local v11    # "signs":[Landroid/content/pm/Signature;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 652
    .end local v2    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v9    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v10    # "sign":Landroid/content/pm/Signature;
    .end local v11    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v7

    .line 653
    .local v7, "npe":Ljava/lang/NullPointerException;
    :try_start_2
    const-string v14, "GenericSSOService"

    const-string v15, "In getPackageCertForPkgname: NullPointerException"

    invoke-static {v14, v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 654
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 655
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v14, "GenericSSOService"

    const-string v15, "In getPackageCertForPkgname: Exception"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method private getPackageInfoForPid(II)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    .line 663
    packed-switch p2, :pswitch_data_0

    .line 671
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 665
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 667
    :pswitch_1
    invoke-static {p1}, Landroid/os/Process;->getUidForPid(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 668
    .local v0, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageNameForPid(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 663
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPackageNameForPid(I)Ljava/lang/String;
    .locals 11
    .param p1, "pid"    # I

    .prologue
    const/4 v9, 0x0

    .line 587
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-ne p1, v8, :cond_2

    .line 588
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 589
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getPackageNameForPid:  pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " package name = android"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    const-string v5, "android"

    .line 621
    :cond_1
    :goto_0
    return-object v5

    .line 593
    :cond_2
    const/4 v5, 0x0

    .line 595
    .local v5, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 597
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    .line 598
    .local v7, "procList":Ljava/util/List;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 599
    .local v3, "iter":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 600
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v0, v8

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v6, v0

    .line 602
    .local v6, "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v8, p1, :cond_3

    .line 603
    iget-object v5, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 618
    .end local v6    # "procInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 619
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getPackageNameForPid:  pid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " package name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v7    # "procList":Ljava/util/List;
    :catch_0
    move-exception v4

    .line 608
    .local v4, "npe":Ljava/lang/NullPointerException;
    const-string v8, "GenericSSOService"

    const-string v10, "In getPackageNameForPid: null pointer exception in getPackageNameForPid"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v9

    .line 611
    goto :goto_0

    .line 612
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    const-string v10, "In getPackageNameForPid: Exception in getPackageNameForPid"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v9

    .line 616
    goto :goto_0
.end method

.method private getRefreshTokenByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;
    .locals 5
    .param p1, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    const/4 v2, 0x0

    .line 1866
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1867
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1868
    const-string v3, "GenericSSOService"

    const-string v4, "In getRefreshTokenByProtocolType: token is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_1
    :goto_0
    return-object v2

    .line 1871
    :cond_2
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getProtocolType()I

    move-result v0

    .line 1872
    .local v0, "protocolType":I
    invoke-virtual {p1}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 1873
    .local v1, "responseBundle":Landroid/os/Bundle;
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1875
    :pswitch_0
    const-string v2, "OAUTH_RESPONSE_REFRESH_TOKEN"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1873
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getRequestConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ssoconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 896
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 897
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initRequestConfigDoc(I)V

    .line 898
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :goto_0
    return-object v1

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In getSSOConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mSSOInterfaceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;

    .line 1120
    .restart local v0    # "connection":Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1121
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In getSSOService: SSO service = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->mUserId:I
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->access$1600(Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$SSOServiceConnection;->getService()Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v1

    :goto_0
    return-object v1

    .line 1123
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "servicePkgName"    # Ljava/lang/String;

    .prologue
    .line 1095
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1096
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".genericssoconnection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1100
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getSSOServiceIntent: action is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1109
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "GenericSSOService"

    const-string v3, "In getSSOServiceIntent: NullPointerException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1106
    :catch_1
    move-exception v0

    .line 1107
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "GenericSSOService"

    const-string v3, "In getSSOServiceIntent: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private final getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1627
    sget-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKeyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1630
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    if-eqz v5, :cond_0

    .line 1631
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v6

    .line 1675
    :goto_0
    return-object v5

    .line 1645
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getKeyPairFromAndroidKeyStore()Ljava/security/KeyPair;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    .line 1646
    const-string v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 1647
    .local v4, "wrapCipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1649
    .local v2, "keyFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1650
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 1651
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Key file does not exists"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 1654
    .local v1, "key":Ljavax/crypto/SecretKey;
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 1655
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Wrapping SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_2
    invoke-direct {p0, v4, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B

    move-result-object v3

    .line 1658
    .local v3, "keyWrapped":[B
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 1659
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Writing SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_3
    invoke-static {v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->writeKeyData(Ljava/io/File;[B)V

    .line 1662
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 1663
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Finished writing SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    .end local v1    # "key":Ljavax/crypto/SecretKey;
    .end local v3    # "keyWrapped":[B
    :cond_4
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 1669
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Reading SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    :cond_5
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->readKeyData(Ljava/io/File;)[B

    move-result-object v0

    .line 1671
    .local v0, "encryptedKey":[B
    invoke-direct {p0, v4, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;

    move-result-object v5

    sput-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    .line 1672
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 1673
    const-string v5, "GenericSSOService"

    const-string v7, "In getSecretKeyFromAndroidKeyStore: Finished reading SecretKey"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_6
    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    monitor-exit v6

    goto :goto_0

    .line 1676
    .end local v0    # "encryptedKey":[B
    .end local v2    # "keyFile":Ljava/io/File;
    .end local v4    # "wrapCipher":Ljavax/crypto/Cipher;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private getTempConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tmpssoconfig.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .locals 2

    .prologue
    .line 625
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    .line 627
    .local v0, "timaService":Landroid/service/tima/ITimaService;
    return-object v0
.end method

.method private getTokenByRefreshToken(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 1908
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1910
    .local v11, "userId":I
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1912
    .local v8, "serviceIntent":Landroid/content/Intent;
    if-nez v8, :cond_2

    .line 1913
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1914
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v10, v12

    .line 1951
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v11    # "userId":I
    :cond_1
    :goto_0
    return-object v10

    .line 1919
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    .restart local v11    # "userId":I
    :cond_2
    invoke-direct {p0, v11, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 1920
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    .line 1921
    .local v9, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v9, :cond_3

    .line 1922
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v12

    .line 1923
    goto :goto_0

    .line 1926
    :cond_3
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientpackagename"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 1933
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-interface {v9, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireTokenByRefreshToken(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v10

    .line 1935
    .local v10, "tokenResponse":Landroid/app/enterprise/sso/TokenInfo;
    if-nez v10, :cond_1

    .line 1936
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: Fail to acquire valid token from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v12

    .line 1937
    goto :goto_0

    .line 1944
    .end local v0    # "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v9    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v10    # "tokenResponse":Landroid/app/enterprise/sso/TokenInfo;
    .end local v11    # "userId":I
    :catch_0
    move-exception v7

    .line 1945
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: NullPointerException"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    move-object v10, v12

    .line 1951
    goto :goto_0

    .line 1946
    :catch_1
    move-exception v6

    .line 1947
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: RemoteException"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1948
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 1949
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenByRefreshToken: Exception"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getTokenConfigFilePath(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ssotoken.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 911
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 912
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->initTokenConfigDoc(I)V

    .line 913
    :cond_0
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_0
    return-object v1

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTokenFromConfigData(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 3722
    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 3724
    .local v8, "serviceIntent":Landroid/content/Intent;
    if-nez v8, :cond_2

    .line 3725
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3726
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: cannot get SSO Service intent"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v10, v11

    .line 3767
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-object v10

    .line 3731
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 3732
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    .line 3734
    .local v9, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v9, :cond_4

    .line 3735
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 3736
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: sso service is not ready to use"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v10, v11

    .line 3738
    goto :goto_0

    .line 3740
    :cond_4
    const-string v1, "clientpackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3744
    .local v2, "appPkgName":Ljava/lang/String;
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 3749
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-interface {v9, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireToken(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v10

    .line 3750
    .local v10, "tokenResponse":Landroid/app/enterprise/sso/TokenInfo;
    if-nez v10, :cond_1

    .line 3751
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 3752
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: Fail to acquire valid token from sso service"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    move-object v10, v11

    .line 3754
    goto :goto_0

    .line 3760
    .end local v0    # "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    .end local v2    # "appPkgName":Ljava/lang/String;
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v9    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v10    # "tokenResponse":Landroid/app/enterprise/sso/TokenInfo;
    :catch_0
    move-exception v7

    .line 3761
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: NullPointerException"

    invoke-static {v1, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    move-object v10, v11

    .line 3767
    goto :goto_0

    .line 3762
    :catch_1
    move-exception v6

    .line 3763
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: RemoteException"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3764
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 3765
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "GenericSSOService"

    const-string v3, "In getTokenFromConfigData: Exception"

    invoke-static {v1, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getTokenFromGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 3505
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3506
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3507
    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is null or empty string"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3512
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3513
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3514
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3515
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3516
    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    :cond_1
    const/4 v3, 0x0

    .line 3529
    :goto_0
    return-object v3

    .line 3520
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3521
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3522
    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is authenticator packagename, we return share token back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0

    .line 3526
    :cond_4
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 3527
    const-string v3, "GenericSSOService"

    const-string v4, "In getTokenFromGenericSSO: appPkgName is not application packagename, we return app token back"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    :cond_5
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0
.end method

.method private getTokenFromLocalCache(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    .line 3772
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 3774
    .local v6, "userId":I
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 3775
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In getTokenFromLocalCache: get Token from cache for user Id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    :cond_0
    :try_start_0
    const-string v7, "clientpackagename"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3781
    .local v1, "appPkgName":Ljava/lang/String;
    invoke-direct {p0, v6, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v4

    .line 3783
    .local v4, "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v4, :cond_3

    .line 3784
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAccessTokenByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;

    move-result-object v0

    .line 3785
    .local v0, "accessTokenValue":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getExpirationTimeByProtocolType(Landroid/app/enterprise/sso/TokenInfo;)Ljava/lang/String;

    move-result-object v5

    .line 3786
    .local v5, "tokenExpirationTime":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3802
    .end local v0    # "accessTokenValue":Ljava/lang/String;
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v4    # "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    .end local v5    # "tokenExpirationTime":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 3790
    .restart local v0    # "accessTokenValue":Ljava/lang/String;
    .restart local v1    # "appPkgName":Ljava/lang/String;
    .restart local v4    # "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    .restart local v5    # "tokenExpirationTime":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->hasTokenExpired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3791
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 3792
    const-string v7, "GenericSSOService"

    const-string v8, "In getTokenFromLocalCache: token in cache expired, so getTokenByRefreshToken is called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenByRefreshToken(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3795
    .local v3, "info":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 3796
    goto :goto_0

    .line 3799
    .end local v0    # "accessTokenValue":Ljava/lang/String;
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v3    # "info":Landroid/app/enterprise/sso/TokenInfo;
    .end local v4    # "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    .end local v5    # "tokenExpirationTime":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3800
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "GenericSSOService"

    const-string v8, "In getTokenFromLocalCache: Exception"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3802
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getUserAndDeviceCertificatesForUser(I)Landroid/app/enterprise/sso/TokenInfo;
    .locals 12
    .param p1, "userId"    # I

    .prologue
    const/4 v11, 0x1

    .line 3415
    new-instance v6, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v6}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    .line 3416
    .local v6, "retToken":Landroid/app/enterprise/sso/TokenInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3417
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 3418
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 3419
    .local v7, "userCertNode":Lorg/w3c/dom/Node;
    if-eqz v7, :cond_1

    .line 3420
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 3421
    .local v5, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 3422
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 3423
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3425
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3421
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3431
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_1
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getDeviceCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1800(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 3432
    .local v2, "deviceCertNode":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_3

    .line 3433
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 3434
    .restart local v5    # "nodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 3435
    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 3436
    .restart local v4    # "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    if-ne v8, v11, :cond_2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3438
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string/jumbo v10, "value"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3444
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "nodes":Lorg/w3c/dom/NodeList;
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3445
    const/4 v6, 0x0

    .line 3448
    .end local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    :goto_2
    return-object v6

    .line 3447
    .restart local v6    # "retToken":Landroid/app/enterprise/sso/TokenInfo;
    :cond_4
    invoke-virtual {v6, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method private getUserCertificate(I)Landroid/app/enterprise/sso/TokenInfo;
    .locals 10
    .param p1, "userId"    # I

    .prologue
    .line 1955
    new-instance v5, Landroid/app/enterprise/sso/TokenInfo;

    invoke-direct {v5}, Landroid/app/enterprise/sso/TokenInfo;-><init>()V

    .line 1956
    .local v5, "retToken":Landroid/app/enterprise/sso/TokenInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1957
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    move-result-object v1

    .line 1958
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->getUserCertificate()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1700(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 1959
    .local v6, "userCertNode":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 1960
    .local v4, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 1961
    invoke-interface {v4, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1962
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1964
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1968
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_1
    invoke-virtual {v5, v0}, Landroid/app/enterprise/sso/TokenInfo;->setResponseBundle(Landroid/os/Bundle;)V

    .line 1969
    return-object v5
.end method

.method private getUserId()I
    .locals 5

    .prologue
    .line 924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 925
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 926
    .local v1, "userId":I
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 927
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In getUserId: The uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    return v1
.end method

.method private getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "solution"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    if-nez p1, :cond_1

    .line 1165
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1166
    const-string v0, "GenericSSOService"

    const-string v1, "In getWhitelistAppNode: In getWhitelistAppNode: solution node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_0
    const/4 v0, 0x0

    .line 1179
    :goto_0
    return-object v0

    .line 1170
    :cond_1
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1171
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In getWhitelistAppNode: In getWhitelistAppNode: child node whitelistpackage is searched for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string/jumbo v3, "servicepackagename"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_2
    const-string/jumbo v0, "whitelistpackage"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private hasTokenExpired(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "expireOn"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 1777
    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 1778
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setInitTime()V

    .line 1780
    :cond_1
    const/4 v3, 0x1

    .line 1782
    .local v3, "hasExipired":Z
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    add-long v0, v6, v8

    .line 1784
    .local v0, "currentUTCTime":J
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1785
    const-string v6, "In hasTokenExpired: SystemClock.elapsedRealtime()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_2
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1788
    const-string v6, "In hasTokenExpired: initElapsedTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_3
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 1791
    const-string v6, "In hasTokenExpired: initUTCTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_4
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 1795
    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "currentUTCtime vs expireOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1798
    .local v4, "expireTime":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_6

    const/4 v3, 0x1

    .line 1799
    :goto_0
    if-eqz v3, :cond_7

    .line 1800
    const-string v6, "GenericSSOService"

    const-string v7, "In hasTokenExpired: the token obtained has expired"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    .end local v0    # "currentUTCTime":J
    .end local v4    # "expireTime":J
    :goto_1
    return v3

    .line 1798
    .restart local v0    # "currentUTCTime":J
    .restart local v4    # "expireTime":J
    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 1802
    :cond_7
    const-string v6, "GenericSSOService"

    const-string v7, "In hasTokenExpired: the token obtained is still valid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1803
    .end local v0    # "currentUTCTime":J
    .end local v4    # "expireTime":J
    :catch_0
    move-exception v2

    .line 1804
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "GenericSSOService"

    const-string v7, "In hasTokenExpired: Exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private initKeyStore()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1356
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_0

    .line 1357
    const-string v2, "TIMAKeyStore"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    .line 1371
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timakeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1372
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1375
    .local v0, "keyFile":Ljava/io/File;
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 1376
    .local v1, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v1, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1382
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "KnoxSSOKey"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1384
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1385
    const-string v2, "GenericSSOService"

    const-string v3, "In initKeyStore: Starting doing the migration from AndroidKeyStore to TIMA keystore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1393
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1394
    const-string v2, "GenericSSOService"

    const-string v3, "In initKeyStore: Saving the secretKey to TIMA 3.0 KeyStore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_2
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    const-string v3, "GenericSSOService"

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    const-string/jumbo v5, "password_for_secret_key"

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1403
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1404
    const-string v2, "GenericSSOService"

    const-string v3, "In initKeyStore: Cleaning up variables from memory, as well as keypair and keyfile from storage."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_3
    sput-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    .line 1408
    sput-object v6, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    .line 1410
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1411
    const-string v2, "KnoxSSOKey"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 1415
    .end local v0    # "keyFile":Ljava/io/File;
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :cond_4
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_5

    .line 1416
    const-string v2, "AndroidKeyStore"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getInstanceOfKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    .line 1418
    :cond_5
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_7

    .line 1419
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1420
    const-string v2, "GenericSSOService"

    const-string v3, "In initKeyStore: no KeyStore instance is running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_6
    :goto_0
    return-void

    .line 1422
    :cond_7
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 1423
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In initKeyStore: Keystore Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v4}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRequestConfigDoc(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 807
    const/4 v6, 0x0

    .line 808
    .local v6, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 810
    .local v4, "filepath":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 812
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 814
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 816
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 817
    :cond_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 818
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initRequestConfigDoc: ssoconfig.xml doesn\'t exist for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", an empty config file is created"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 823
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string v8, "configuration"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 824
    .local v5, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 825
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 826
    new-instance v8, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v8, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 836
    .end local v5    # "root":Lorg/w3c/dom/Element;
    :goto_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 837
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is loaded for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :cond_2
    :goto_1
    return-void

    .line 828
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_3
    const-string v8, "GenericSSOService"

    const-string v9, "In initRequestConfigDoc: ssoconfig.xml does exist"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 830
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 831
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 832
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    invoke-direct {v9, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 834
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 838
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v3

    .line 839
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    const-string v8, "GenericSSOService"

    const-string v9, "In initRequestConfigDoc: IOException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 840
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 841
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    const-string v8, "GenericSSOService"

    const-string v9, "In initRequestConfigDoc: ParserConfigurationException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 842
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v3

    .line 843
    .local v3, "e":Lorg/xml/sax/SAXException;
    :goto_4
    const-string v8, "GenericSSOService"

    const-string v9, "In initRequestConfigDoc: SAXException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 842
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 840
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 838
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private initTokenConfigDoc(I)V
    .locals 12
    .param p1, "userId"    # I

    .prologue
    .line 852
    const/4 v6, 0x0

    .line 853
    .local v6, "stream":Ljava/io/FileInputStream;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v4

    .line 855
    .local v4, "filepath":Ljava/lang/String;
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 857
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 859
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 861
    .local v0, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 862
    :cond_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 863
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initTokenConfigDoc: ssotoken.xml doesn\'t exist for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", an empty config file is created"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 868
    .local v2, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v8, "ssotoken"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 869
    .local v5, "root":Lorg/w3c/dom/Element;
    invoke-interface {v2, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 870
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 871
    new-instance v8, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v8, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 881
    .end local v5    # "root":Lorg/w3c/dom/Element;
    :goto_0
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 882
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In initTokenConfigDoc: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is loaded for userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :cond_2
    :goto_1
    return-void

    .line 873
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_3
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: ssotoken.xml does exist"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    .line 875
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 876
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->normalize()V

    .line 877
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    invoke-direct {v9, v2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;-><init>(Lorg/w3c/dom/Document;)V

    invoke-virtual {v8, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 879
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 884
    .end local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v3

    .line 885
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: IOException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 886
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 887
    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: ParserConfigurationException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 888
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v3

    .line 889
    .local v3, "e":Lorg/xml/sax/SAXException;
    :goto_4
    const-string v8, "GenericSSOService"

    const-string v9, "In initTokenConfigDoc: SAXException"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 888
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 886
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 884
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private installedServiceIsPermitted(ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1062
    :try_start_0
    const-string/jumbo v6, "servicepackagename"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1064
    .local v3, "servicePkgName":Ljava/lang/String;
    const-string/jumbo v6, "servicepackagesignature"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1066
    .local v2, "servicePkgCert":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1067
    const-string v6, "GenericSSOService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In installedServiceIsPermitted: service package cert is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    .end local v2    # "servicePkgCert":Ljava/lang/String;
    .end local v3    # "servicePkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 1070
    .restart local v2    # "servicePkgCert":Ljava/lang/String;
    .restart local v3    # "servicePkgName":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, "installedServicePkgCert":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1073
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1074
    const-string v6, "GenericSSOService"

    const-string v7, "In installedServiceIsPermitted: service package cert is matched between configured and installed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    .end local v1    # "installedServicePkgCert":Ljava/lang/String;
    .end local v2    # "servicePkgCert":Ljava/lang/String;
    .end local v3    # "servicePkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "GenericSSOService"

    const-string v6, "In installedServiceIsPermitted: Exception"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 1090
    goto :goto_0

    .line 1078
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "installedServicePkgCert":Ljava/lang/String;
    .restart local v2    # "servicePkgCert":Ljava/lang/String;
    .restart local v3    # "servicePkgName":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1079
    const-string v4, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In installedServiceIsPermitted: Fail to pass the servicePkg cert check: (ondevice vs config) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move v4, v5

    .line 1084
    goto :goto_0
.end method

.method private isCallingMDMMatch(II)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "mdmUid"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2324
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 2325
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    const/4 v2, 0x0

    .line 2326
    .local v2, "enrolledVendor":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .line 2327
    .local v3, "mdmUidNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_4

    .line 2328
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 2329
    if-nez v2, :cond_1

    .line 2331
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 2332
    const-string v6, "GenericSSOService"

    const-string v7, "In isCallingMDMMatch: the enrolledVendor is null, return true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v2    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v3    # "mdmUidNode":Lorg/w3c/dom/Node;
    :cond_0
    :goto_0
    return v4

    .line 2336
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v2    # "enrolledVendor":Lorg/w3c/dom/Node;
    .restart local v3    # "mdmUidNode":Lorg/w3c/dom/Node;
    :cond_1
    const-string/jumbo v6, "mdmuid"

    invoke-direct {p0, v2, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 2338
    if-nez v3, :cond_3

    .line 2339
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 2340
    const-string v4, "GenericSSOService"

    const-string v6, "In isCallingMDMMatch: the mDmUidNode is null, return false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v4, v5

    .line 2342
    goto :goto_0

    .line 2344
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 2345
    goto :goto_0

    .line 2351
    :cond_4
    sget-boolean v6, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 2352
    const-string v6, "GenericSSOService"

    const-string v7, "In isCallingMDMMatch: the configDoc is null, return true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2356
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v2    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v3    # "mdmUidNode":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v1

    .line 2357
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v4, "GenericSSOService"

    const-string v6, "In isCallingMDMMatch: NullPointerException"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 2359
    goto :goto_0
.end method

.method private isFileExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1113
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private isNetworkAvailable()Z
    .locals 8

    .prologue
    .line 3976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3977
    .local v4, "token1":J
    iget-object v3, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3979
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3980
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3982
    .local v2, "isConnected":Z
    :goto_0
    if-eqz v0, :cond_0

    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3983
    const-string v3, "GenericSSOService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network type detected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3985
    return v2

    .line 3980
    .end local v2    # "isConnected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNullOrEmpty(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/os/Bundle;

    .prologue
    .line 581
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    const/4 v0, 0x1

    .line 583
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 575
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 576
    :cond_0
    const/4 v0, 0x1

    .line 577
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1582
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_1

    .line 1583
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1584
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: SecretKey is already loaded. It\'s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1589
    :cond_1
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    if-nez v2, :cond_2

    .line 1590
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1591
    const-string v2, "GenericSSOService"

    const-string v3, "In loadKey: loadkey() failed, because keystore is not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1596
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1597
    .local v0, "token":J
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timakeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1598
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1599
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->createSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1600
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    sget-object v3, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    const-string/jumbo v4, "password_for_secret_key"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v3, v4, v5}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 1602
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1603
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: keystore doesn\'t contain key with alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", so a new one is stored"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    :cond_3
    :goto_1
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1611
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey got from TIMAKeystore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_4
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1607
    :cond_5
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    const-string/jumbo v3, "password_for_secret_key"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    goto :goto_1

    .line 1613
    :cond_6
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidkeystore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1614
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSecretKeyFromAndroidKeyStore()Ljavax/crypto/SecretKey;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 1615
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1617
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In loadKey: secreteKey protected by AndroidKeyStore is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    invoke-interface {v5}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private nextSessionId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1837
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 1838
    .local v0, "random":Ljava/security/SecureRandom;
    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x82

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private pushAuthenticatorConfig(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 10
    .param p1, "userId"    # I
    .param p2, "servicePackageName"    # Ljava/lang/String;
    .param p3, "ssoConfig"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    .line 3991
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 3992
    .local v4, "serviceIntent":Landroid/content/Intent;
    if-nez v4, :cond_2

    .line 3993
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 3994
    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: cannot get SSO Service intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v6

    .line 4031
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return v1

    .line 3999
    .restart local v4    # "serviceIntent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4000
    .local v2, "identity":J
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 4001
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v5

    .line 4003
    .local v5, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v5, :cond_4

    .line 4004
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 4005
    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: sso service is not ready to use"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v6

    .line 4007
    goto :goto_0

    .line 4010
    :cond_4
    invoke-interface {v5, p3}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->pushAuthenticatorConfig(Landroid/os/Bundle;)I

    move-result v1

    .line 4011
    .local v1, "ret":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4013
    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 4014
    if-nez v1, :cond_5

    .line 4015
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " successfully complete this request"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4026
    .end local v1    # "ret":I
    .end local v2    # "identity":J
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    .end local v5    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :catch_0
    move-exception v0

    .line 4027
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: RemoteException"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    move v1, v6

    .line 4031
    goto :goto_0

    .line 4019
    .restart local v1    # "ret":I
    .restart local v2    # "identity":J
    .restart local v4    # "serviceIntent":Landroid/content/Intent;
    .restart local v5    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :cond_5
    :try_start_1
    const-string v7, "GenericSSOService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In pushAuthenticatorConfig: sso vendor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fails to complete this request with error code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4028
    .end local v1    # "ret":I
    .end local v2    # "identity":J
    .end local v4    # "serviceIntent":Landroid/content/Intent;
    .end local v5    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :catch_1
    move-exception v0

    .line 4029
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "GenericSSOService"

    const-string v8, "In pushAuthenticatorConfig: Exception"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private reAuthenInAuthenticator(I)I
    .locals 14
    .param p1, "userId"    # I

    .prologue
    .line 2937
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    .line 2938
    .local v3, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 2939
    .local v8, "ssoNode":Lorg/w3c/dom/Node;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2940
    .local v2, "configData":Landroid/os/Bundle;
    const-string/jumbo v12, "servicepackagename"

    invoke-direct {p0, v8, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    .line 2943
    .local v11, "vendorAuthPkgName":Ljava/lang/String;
    const-string/jumbo v12, "servicepackagename"

    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    const/4 v10, 0x0

    .line 2946
    .local v10, "vendorAuthPkgCert":Ljava/lang/String;
    const-string/jumbo v12, "servicepackagesignature"

    invoke-direct {p0, v8, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 2948
    const-string/jumbo v12, "servicepackagesignature"

    invoke-direct {p0, v8, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    .line 2951
    const-string/jumbo v12, "servicepackagesignature"

    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 2956
    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_1

    .line 2957
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: Fail to pass the service package cert check"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    :cond_1
    const/16 v12, -0xd

    .line 2994
    .end local v2    # "configData":Landroid/os/Bundle;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v10    # "vendorAuthPkgCert":Ljava/lang/String;
    .end local v11    # "vendorAuthPkgName":Ljava/lang/String;
    :goto_0
    return v12

    .line 2962
    .restart local v2    # "configData":Landroid/os/Bundle;
    .restart local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v10    # "vendorAuthPkgCert":Ljava/lang/String;
    .restart local v11    # "vendorAuthPkgName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 2963
    .local v6, "serviceIntent":Landroid/content/Intent;
    if-nez v6, :cond_4

    .line 2964
    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_3

    .line 2965
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: cannot get SSO Service intent"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    :cond_3
    const/4 v12, -0x1

    goto :goto_0

    .line 2969
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 2970
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    .line 2971
    .local v9, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v9, :cond_6

    .line 2972
    sget-boolean v12, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v12, :cond_5

    .line 2973
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: sso service is not ready to use"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    :cond_5
    const/4 v12, -0x1

    goto :goto_0

    .line 2977
    :cond_6
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2978
    .local v0, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v1, 0x0

    .line 2979
    .local v1, "appPkgName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 2980
    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Node;

    const-string v13, "clientpackagename"

    invoke-direct {p0, v12, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    .line 2984
    :cond_7
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 2986
    .local v7, "ssoConfig":Landroid/os/Bundle;
    invoke-interface {v9, v7}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->forceAuthenticate(Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    goto :goto_0

    .line 2987
    .end local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v1    # "appPkgName":Ljava/lang/String;
    .end local v2    # "configData":Landroid/os/Bundle;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v6    # "serviceIntent":Landroid/content/Intent;
    .end local v7    # "ssoConfig":Landroid/os/Bundle;
    .end local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v9    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v10    # "vendorAuthPkgCert":Ljava/lang/String;
    .end local v11    # "vendorAuthPkgName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2988
    .local v5, "npe":Ljava/lang/NullPointerException;
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: NullPointerException"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2994
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v12, -0x1

    goto :goto_0

    .line 2989
    :catch_1
    move-exception v4

    .line 2990
    .local v4, "e":Landroid/os/RemoteException;
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: RemoteException"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2991
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    .line 2992
    .local v4, "e":Ljava/lang/Exception;
    const-string v12, "GenericSSOService"

    const-string v13, "In reAuthenInAuthenticator: Exception"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static readKeyData(Ljava/io/File;)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1755
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1756
    const-string v4, "GenericSSOService"

    const-string v5, "In readKeyData: Reading key data from a file"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1760
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1761
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 1763
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "count":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 1764
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1769
    .end local v0    # "buffer":[B
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "count":I
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v4

    .line 1767
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "count":I
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1769
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    return-object v4
.end method

.method private registerReceiverForKeyClear()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 471
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 472
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v0, "android.security.STORAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;

    invoke-direct {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;-><init>()V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 476
    return-void
.end method

.method private saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 10
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "filepath"    # Ljava/lang/String;

    .prologue
    .line 977
    const/4 v3, 0x0

    .line 978
    .local v3, "stream":Ljava/io/FileOutputStream;
    sget-object v8, Lcom/android/server/enterprise/sso/GenericSSOService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v8

    .line 980
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    .line 982
    .local v6, "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 984
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v4, p2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 986
    .local v2, "source":Ljavax/xml/transform/dom/DOMSource;
    if-nez p1, :cond_0

    .line 987
    :try_start_1
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-direct {v2}, Ljavax/xml/transform/dom/DOMSource;-><init>()V

    .line 991
    .restart local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_0
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 992
    .local v1, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v5, v2, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 993
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 1005
    .end local v1    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1006
    return-void

    .line 989
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    :cond_0
    :try_start_3
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-direct {v2, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto :goto_0

    .line 994
    .end local v2    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Ljavax/xml/transform/TransformerConfigurationException;
    :goto_2
    :try_start_4
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: TransformerConfigurationException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1005
    .end local v0    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .line 996
    :catch_1
    move-exception v0

    .line 997
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    :goto_4
    :try_start_5
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: TransformerException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 998
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    :catch_2
    move-exception v0

    .line 999
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: FileNotFoundException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1000
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 1001
    .local v0, "e":Ljava/lang/NullPointerException;
    :goto_6
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: NullPointerException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1002
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v0

    .line 1003
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    const-string v7, "GenericSSOService"

    const-string v9, "In getTokenConfigForUserId: IOException"

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1005
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v5    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v6    # "transformerfactory":Ljavax/xml/transform/TransformerFactory;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1002
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 1000
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 998
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 996
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 994
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private setInitTime()V
    .locals 6

    .prologue
    .line 1815
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    .line 1816
    new-instance v2, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;-><init>(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RetrieveFeedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1818
    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    .line 1819
    sget-object v2, Lcom/android/server/enterprise/sso/GenericSSOService;->countDownLatchNTP:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 1821
    .local v0, "countDownTimeout":Z
    if-nez v0, :cond_0

    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1822
    const-string v2, "GenericSSOService"

    const-string v3, "In setInitTime: CountDownLatch return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    .end local v0    # "countDownTimeout":Z
    :cond_0
    :goto_0
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 1828
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setInitTime: UTC time when service is up is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initUTCTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_1
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1831
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setInitTime: elapsedRealtime() when service is up is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->initElapsedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    :cond_2
    return-void

    .line 1823
    :catch_0
    move-exception v1

    .line 1824
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setInitTime: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setWhitelistAllAppsState(ZI)Z
    .locals 6
    .param p1, "state"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 2397
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2398
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->WHITELIST_ALL_APPS_STATE:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-static {v4, v5, v1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    .line 2400
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2401
    return v0

    .line 2398
    .end local v0    # "ret":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private stopAuthenticatorApplication(Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2003
    if-nez p1, :cond_1

    .line 2004
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2005
    const-string v10, "GenericSSOService"

    const-string v11, "In stopAuthenticatorApplication: packageName is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    :cond_0
    :goto_0
    return-void

    .line 2008
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2010
    .local v8, "token":J
    :try_start_0
    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2013
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, p2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v6

    .line 2015
    .local v6, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2018
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 2019
    .local v7, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v4, v7, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 2020
    .local v4, "origInt":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2021
    .local v1, "cmp":Landroid/content/ComponentName;
    if-eqz v1, :cond_2

    .line 2022
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2024
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2025
    iget v10, v7, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 2026
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In stopAuthenticatorApplication: the task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "has been removed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2031
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "cmp":Landroid/content/ComponentName;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "origInt":Landroid/content/Intent;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v7    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_0
    move-exception v2

    .line 2032
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In stopAuthenticatorApplication: could not stop app "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method private unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "userId"    # I
    .param p2, "vendorAuthPkgName"    # Ljava/lang/String;
    .param p3, "ssoConfig"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 3001
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 3002
    .local v2, "serviceIntent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 3003
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3004
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: cannot get SSO Service intent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 3008
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 3009
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v3

    .line 3010
    .local v3, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v3, :cond_2

    .line 3011
    sget-boolean v5, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 3012
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: sso service is not ready to use"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 3017
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :catch_0
    move-exception v1

    .line 3018
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: NullPointerException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3016
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    .restart local v3    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :cond_2
    :try_start_1
    invoke-interface {v3, p3}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->unregister(Landroid/os/Bundle;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    goto :goto_0

    .line 3019
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    .end local v3    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    :catch_1
    move-exception v0

    .line 3020
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator: RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3021
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 3022
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GenericSSOService"

    const-string v6, "In unRegisterInAuthenticator"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unregisterByAuthenticator(I)I
    .locals 17
    .param p1, "userId"    # I

    .prologue
    .line 3028
    const/4 v10, 0x0

    .line 3030
    .local v10, "ret":I
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v5

    .line 3031
    .local v5, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v5}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 3032
    .local v12, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v12, :cond_0

    move v15, v10

    .line 3077
    .end local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v12    # "ssoNode":Lorg/w3c/dom/Node;
    :goto_0
    return v15

    .line 3035
    .restart local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v12    # "ssoNode":Lorg/w3c/dom/Node;
    :cond_0
    const-string/jumbo v15, "servicepackagename"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 3038
    .local v14, "vendorAuthPkgName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3039
    .local v13, "vendorAuthPkgCert":Ljava/lang/String;
    const-string/jumbo v15, "servicepackagesignature"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 3041
    const-string/jumbo v15, "servicepackagesignature"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    .line 3045
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3046
    .local v4, "configData":Landroid/os/Bundle;
    const-string/jumbo v15, "servicepackagename"

    invoke-virtual {v4, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    const-string/jumbo v15, "servicepackagesignature"

    invoke-virtual {v4, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 3052
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_2

    .line 3053
    const-string v15, "GenericSSOService"

    const-string v16, "In unregisterByAuthenticator: Fail to pass the service package cert check"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_2
    const/16 v15, -0xd

    goto :goto_0

    .line 3058
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3059
    .local v2, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .line 3060
    .local v3, "appPkgName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_4

    .line 3061
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Node;

    const-string v16, "clientpackagename"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 3065
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 3066
    .local v11, "ssoConfig":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3067
    .local v8, "identity":J
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v14, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->unRegisterInAuthenticator(ILjava/lang/String;Landroid/os/Bundle;)I

    move-result v10

    .line 3069
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "appPkgName":Ljava/lang/String;
    .end local v4    # "configData":Landroid/os/Bundle;
    .end local v5    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v8    # "identity":J
    .end local v11    # "ssoConfig":Landroid/os/Bundle;
    .end local v12    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v13    # "vendorAuthPkgCert":Ljava/lang/String;
    .end local v14    # "vendorAuthPkgName":Ljava/lang/String;
    :goto_1
    move v15, v10

    .line 3077
    goto/16 :goto_0

    .line 3070
    :catch_0
    move-exception v7

    .line 3071
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v15, "GenericSSOService"

    const-string v16, "In unregisterByAuthenticator: NullPointerException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3072
    const/4 v10, -0x1

    .line 3076
    goto :goto_1

    .line 3073
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v6

    .line 3074
    .local v6, "e":Ljava/lang/Exception;
    const-string v15, "GenericSSOService"

    const-string v16, "In unregisterByAuthenticator: Exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3075
    const/4 v10, -0x1

    goto :goto_1
.end method

.method private unwrap(Ljavax/crypto/Cipher;[B)Ljavax/crypto/SecretKey;
    .locals 2
    .param p1, "wrapCipher"    # Ljavax/crypto/Cipher;
    .param p2, "keyBlob"    # [B
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1738
    const/4 v0, 0x4

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1739
    const-string v0, "AES"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .prologue
    .line 939
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 940
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 941
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 942
    const-string v1, "GenericSSOService"

    const-string v2, "In updateCacheAndFile: updated sso config doc is updated in requestConfigXMLDocs array"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 947
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 948
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated sso request config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_1
    return-void
.end method

.method private updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "configDoc"    # Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;

    .prologue
    .line 960
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->update()V
    invoke-static {p2}, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->access$1500(Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;)V

    .line 961
    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 962
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 963
    const-string v1, "GenericSSOService"

    const-string v2, "In updateCacheAndFile: updated sso token doc is updated in tokenConfigXMLDocs array"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "filepath":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/server/enterprise/sso/GenericSSOService$TokenConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->saveConfigToFile(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 968
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 969
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In updateCacheAndFile: updated sso token config doc is saved at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_1
    return-void
.end method

.method private vendorPermissionCheck(ILjava/lang/String;)Z
    .locals 13
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 3454
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 3455
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 3456
    .local v5, "ssoNode":Lorg/w3c/dom/Node;
    const-string/jumbo v10, "servicepackagename"

    invoke-direct {p0, v5, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 3458
    .local v6, "vendorAuthPkg":Lorg/w3c/dom/Node;
    const/4 v8, 0x0

    .line 3460
    .local v8, "vendorAuthPkgName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 3461
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    .line 3463
    :cond_0
    const-string/jumbo v10, "servicepackagesignature"

    invoke-direct {p0, v5, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-nez v10, :cond_2

    .line 3465
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3497
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v5    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v6    # "vendorAuthPkg":Lorg/w3c/dom/Node;
    .end local v8    # "vendorAuthPkgName":Ljava/lang/String;
    :cond_1
    :goto_0
    return v9

    .line 3469
    .restart local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v5    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v6    # "vendorAuthPkg":Lorg/w3c/dom/Node;
    .restart local v8    # "vendorAuthPkgName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "servicepackagesignature"

    invoke-direct {p0, v5, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    .line 3472
    .local v7, "vendorAuthPkgCert":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageCertForPkgname(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3474
    .local v4, "packageCert":Ljava/lang/String;
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_1

    .line 3484
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "packageCert":Ljava/lang/String;
    .end local v5    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v6    # "vendorAuthPkg":Lorg/w3c/dom/Node;
    .end local v7    # "vendorAuthPkgCert":Ljava/lang/String;
    .end local v8    # "vendorAuthPkgName":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 3485
    .local v3, "isSharedDevice":Z
    iget-object v10, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3486
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v2, :cond_4

    .line 3487
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 3488
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v3

    .line 3489
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SharedDevice: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    :cond_4
    if-eqz v3, :cond_5

    const-string v10, "com.sec.enterprise.knox.shareddevice.keyguard"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3495
    :cond_5
    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UserId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "pkgName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3479
    .end local v2    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v3    # "isSharedDevice":Z
    :catch_0
    move-exception v1

    .line 3480
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In vendorPermissionCheck: exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private wrap(Ljavax/crypto/Cipher;Ljavax/crypto/SecretKey;)[B
    .locals 2
    .param p1, "wrapCipher"    # Ljavax/crypto/Cipher;
    .param p2, "key"    # Ljavax/crypto/SecretKey;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 1731
    const/4 v0, 0x3

    sget-object v1, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1732
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method

.method private static writeKeyData(Ljava/io/File;[B)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1744
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1745
    const-string v1, "GenericSSOService"

    const-string v2, "In writeKeyData: Writing key data to a file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1748
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1752
    return-void

    .line 1750
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method


# virtual methods
.method public _unenrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2431
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2432
    .local v3, "mdmUid":I
    invoke-direct {p0, p3, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2433
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 2434
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: MDM uid is not matched"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    :cond_0
    const/16 v5, -0xa

    .line 2483
    :cond_1
    :goto_0
    return v5

    .line 2437
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2438
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 2439
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: authenticatorPkgName is null or empty"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    :cond_3
    const/4 v5, -0x3

    goto :goto_0

    .line 2444
    :cond_4
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 2445
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 2446
    .local v2, "enrolledVendor":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_5

    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1900(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 2449
    :cond_5
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_6

    .line 2450
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In unenrollSSOVendor: this authenticator "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not enrolled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :cond_6
    const/4 v5, -0x6

    goto :goto_0

    .line 2455
    :cond_7
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearConfigAndTokenForAuthenticator(I)I

    move-result v5

    .line 2456
    .local v5, "ret":I
    if-eqz v5, :cond_8

    .line 2457
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: failed clearConfigAndTokenFor Authenticator"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    const/16 v5, -0x10

    goto :goto_0

    .line 2461
    :cond_8
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V

    .line 2462
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->stopAuthenticatorApplication(Ljava/lang/String;I)V

    .line 2465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2466
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "genericsso.INTENT.ACTION.tokens_cleared"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2467
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2470
    const/16 v8, 0x64

    if-lt p3, v8, :cond_1

    .line 2471
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2472
    .local v4, "message":Landroid/os/Message;
    iput p3, v4, Landroid/os/Message;->arg1:I

    .line 2473
    const/4 v8, 0x1

    iput v8, v4, Landroid/os/Message;->arg2:I

    .line 2474
    iput-object p2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2475
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 2478
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v2    # "enrolledVendor":Lorg/w3c/dom/Node;
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "ret":I
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .line 2479
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: NullPointerException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2483
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 2480
    :catch_1
    move-exception v1

    .line 2481
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    const-string v9, "In unenrollSSOVendor: Exception"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected acquireUserInfo(ILandroid/os/Bundle;)Landroid/app/enterprise/sso/UserInfo;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "configData"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 4161
    :try_start_0
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 4163
    .local v8, "serviceIntent":Landroid/content/Intent;
    if-nez v8, :cond_1

    .line 4164
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 4198
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v10

    .line 4169
    .restart local v8    # "serviceIntent":Landroid/content/Intent;
    :cond_1
    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 4171
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v9

    .line 4172
    .local v9, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v9, :cond_2

    .line 4173
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 4174
    goto :goto_0

    .line 4177
    :cond_2
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientpackagename"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 4184
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-interface {v9, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireUserInfo(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/UserInfo;

    move-result-object v10

    .line 4185
    .local v10, "userInfo":Landroid/app/enterprise/sso/UserInfo;
    if-nez v10, :cond_0

    .line 4186
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4187
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: Fail to get valid UserInfo from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    move-object v10, v11

    .line 4188
    goto :goto_0

    .line 4191
    .end local v0    # "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    .end local v8    # "serviceIntent":Landroid/content/Intent;
    .end local v9    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v10    # "userInfo":Landroid/app/enterprise/sso/UserInfo;
    :catch_0
    move-exception v7

    .line 4192
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: null pointer exception in getToken"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    move-object v10, v11

    .line 4198
    goto :goto_0

    .line 4193
    :catch_1
    move-exception v6

    .line 4194
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: Remote Exception error"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4195
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 4196
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "GenericSSOService"

    const-string v2, "In acquireUserInfo: Exception in getToken"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public addAppTokenToGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3602
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3604
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3605
    const-string v3, "GenericSSOService"

    const-string v4, "In addAppTokenToGenericSSO: appPkgName is null or empty string or token is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    :cond_1
    const/4 v3, -0x3

    .line 3620
    :goto_0
    return v3

    .line 3609
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3611
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3612
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3614
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3615
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3616
    const-string v3, "GenericSSOService"

    const-string v4, "In addAppTokenToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 3620
    :cond_4
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->addAppTokenToSecureStorageForUser(ILjava/lang/String;Landroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0
.end method

.method public addUserAndDeviceCertToGenericSSO(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/sso/TokenInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "token"    # Landroid/app/enterprise/sso/TokenInfo;

    .prologue
    .line 3626
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/enterprise/sso/TokenInfo;->getResponseBundle()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_2

    .line 3627
    :cond_0
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3628
    const-string v3, "GenericSSOService"

    const-string v4, "In addUserAndDeviceCertToGenericSSO: token is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    :cond_1
    const/4 v3, -0x3

    .line 3643
    :goto_0
    return v3

    .line 3632
    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3634
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3635
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3637
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3638
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 3639
    const-string v3, "GenericSSOService"

    const-string v4, "In addUserAndDeviceCertToGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 3643
    :cond_4
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->addUserAndDeviceCertificatesForUser(ILandroid/app/enterprise/sso/TokenInfo;)I

    move-result v3

    goto :goto_0
.end method

.method public addWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/sso/WhiteListPackage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2818
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/sso/WhiteListPackage;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2819
    if-nez p1, :cond_1

    .line 2820
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2821
    const-string v1, "GenericSSOService"

    const-string v2, "In addWhiteListPackages: cxtInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_0
    const/4 v1, -0x3

    .line 2826
    :goto_0
    return v1

    .line 2824
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2826
    .local v0, "userId":I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->_addWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I

    move-result v1

    goto :goto_0
.end method

.method public addWhiteListPackages2(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/sso/WhiteListPackage;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 2704
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/sso/WhiteListPackage;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2705
    if-nez p1, :cond_1

    .line 2706
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2707
    const-string v0, "GenericSSOService"

    const-string v1, "In addWhiteListPackages2: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    :cond_0
    const/4 v0, -0x3

    .line 2710
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_addWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;I)I

    move-result v0

    goto :goto_0
.end method

.method public configureSSOByFile(Landroid/app/enterprise/ContextInfo;[B)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "configData"    # [B

    .prologue
    .line 2681
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2682
    if-nez p1, :cond_1

    .line 2683
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2684
    const-string v3, "GenericSSOService"

    const-string v4, "In configureSSOByFile: cxtInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    :cond_0
    const/4 v0, -0x3

    .line 2698
    :goto_0
    return v0

    .line 2687
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2689
    .local v2, "userId":I
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->_configureSSOByFile(Landroid/app/enterprise/ContextInfo;[BI)I

    move-result v0

    .line 2690
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2691
    const-string v3, "GenericSSOService"

    const-string v4, "In configureSSOByFile: success in unenrolling, removing whitelist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2693
    .local v1, "status":Z
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In configureSSOByFile: return from remove whitelisting all apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2696
    .end local v1    # "status":Z
    :cond_2
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In configureSSOByFile: Failed to configure file = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteWhiteListPackages(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2834
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2835
    if-nez p1, :cond_1

    .line 2836
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2837
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: cxtInfo is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    :cond_0
    const/4 v10, -0x3

    .line 2897
    :goto_0
    return v10

    .line 2840
    :cond_1
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2842
    .local v4, "mdmUID":I
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 2844
    .local v8, "userId":I
    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2845
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 2846
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: MDM uid is not matched"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :cond_2
    const/16 v10, -0xa

    goto :goto_0

    .line 2849
    :cond_3
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 2850
    :cond_4
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_5

    .line 2851
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: Invalid Parameters."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_5
    const/4 v10, -0x3

    goto :goto_0

    .line 2854
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_8

    .line 2855
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_7

    .line 2856
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: No SSO Vendors have been enrolled."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_7
    const/4 v10, -0x6

    goto :goto_0

    .line 2861
    :cond_8
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    .line 2862
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 2863
    .local v6, "solution":Lorg/w3c/dom/Node;
    if-nez v6, :cond_a

    .line 2864
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_9

    .line 2865
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: this sso vendor is not registered"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    :cond_9
    const/4 v10, -0x6

    goto :goto_0

    .line 2868
    :cond_a
    const/4 v0, 0x0

    .line 2869
    .local v0, "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2870
    .local v5, "pack":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getWhitelistAppNode(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2871
    const-string v10, "clientpackagename"

    invoke-direct {p0, v0, v10, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->findNodeByAttribute(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 2873
    .local v9, "whitelistApp":Lorg/w3c/dom/Node;
    if-nez v9, :cond_c

    .line 2874
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 2875
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: the package hasn\'t been whitelisted"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2892
    .end local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pack":Ljava/lang/String;
    .end local v6    # "solution":Lorg/w3c/dom/Node;
    .end local v9    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    .line 2893
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: NullPointerException."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2897
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 2878
    .restart local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pack":Ljava/lang/String;
    .restart local v6    # "solution":Lorg/w3c/dom/Node;
    .restart local v9    # "whitelistApp":Lorg/w3c/dom/Node;
    :cond_c
    :try_start_1
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_d

    .line 2879
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: package name is found in the whitelist of the given sso ssolution service"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :cond_d
    invoke-interface {v6, v9}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2882
    sget-boolean v10, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 2883
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: package name is removed from the whitelist of the given sso ssolution service"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2894
    .end local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pack":Ljava/lang/String;
    .end local v6    # "solution":Lorg/w3c/dom/Node;
    .end local v9    # "whitelistApp":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v2

    .line 2895
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: Exception."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2887
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "allowedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "solution":Lorg/w3c/dom/Node;
    :cond_e
    :try_start_2
    invoke-direct {p0, v8, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V

    .line 2888
    const-string v10, "GenericSSOService"

    const-string v11, "In deleteWhiteListPackages: removing whitelistall flag"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    const/4 v10, 0x0

    invoke-direct {p0, v10, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v7

    .line 2890
    .local v7, "status":Z
    const-string v10, "GenericSSOService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "In deleteWhiteListPackages: return from remove whitelisting all apps(Remove log later) = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2891
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;

    .prologue
    .line 2106
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor context infor before enforce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const/4 v7, 0x0

    .line 2108
    .local v7, "isRegistered":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2109
    if-nez p1, :cond_1

    .line 2110
    sget-boolean v0, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2111
    const-string v0, "GenericSSOService"

    const-string v1, "In enrollSSOVendor: cxtInfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_0
    const/4 v9, -0x3

    .line 2129
    :goto_0
    return v9

    .line 2115
    :cond_1
    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 2116
    .local v8, "mdmUid":I
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor: mdmUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2120
    .local v5, "userId":I
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v9

    .line 2121
    .local v9, "ret":I
    if-nez v9, :cond_2

    .line 2122
    const-string v0, "GenericSSOService"

    const-string v1, "In enrollSSOVendor: success in enrolling, whitelisting false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    const/4 v0, 0x0

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v10

    .line 2124
    .local v10, "status":Z
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor: return from whitelisting all apps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2127
    .end local v10    # "status":Z
    :cond_2
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In enrollSSOVendor: Failed to enroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enrollSSOVendorInternal(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "authenticatorPkgCert"    # Ljava/lang/String;
    .param p4, "ssoconfig"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .prologue
    .line 2081
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 2082
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need to be system process"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2084
    :cond_0
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v8

    .line 2085
    .local v8, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 2087
    .local v9, "enrolledVendor":Lorg/w3c/dom/Node;
    if-eqz v9, :cond_3

    .line 2088
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 2089
    const-string v1, "GenericSSOService"

    const-string v2, "In enrollSSOVendorInternal: there\'s already one sso vendor enrolled so user configuration is rejected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_1
    const/16 v10, -0x9

    .line 2099
    :cond_2
    :goto_0
    return v10

    .line 2093
    :cond_3
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->_enrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IZ)I

    move-result v10

    .line 2094
    .local v10, "ret":I
    if-nez v10, :cond_2

    .line 2095
    const-string v1, "GenericSSOService"

    const-string v2, "In enrollSSOVendorInternal: success in enrolling, whitelisting all apps."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    const/4 v1, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v11

    .line 2097
    .local v11, "status":Z
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In enrollSSOVendorInternal: return from whitelisting all apps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public forceAuthenticate(Landroid/app/enterprise/ContextInfo;)I
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3182
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3183
    if-nez p1, :cond_1

    .line 3184
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 3185
    const-string v8, "GenericSSOService"

    const-string v9, "In forceAuthenticate: cxtInfo is null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :cond_0
    const/4 v4, -0x3

    .line 3219
    :goto_0
    return v4

    .line 3188
    :cond_1
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3191
    .local v1, "mdmUID":I
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3193
    .local v5, "userId":I
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3194
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_2

    .line 3195
    const-string v8, "GenericSSOService"

    const-string v9, "In forceAuthenticate: MDM uid is not matched"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_2
    const/16 v4, -0xa

    goto :goto_0

    .line 3198
    :cond_3
    sget-boolean v8, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v8, :cond_4

    .line 3199
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In forceAuthenticate: UserID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3202
    .local v2, "identity":J
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/sso/GenericSSOService;->reAuthenInAuthenticator(I)I

    move-result v4

    .line 3203
    .local v4, "ret":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3204
    if-eqz v4, :cond_5

    .line 3205
    const-string v8, "GenericSSOService"

    const-string v9, "In forceAuthenticate: Fail to clear authenticator\'s records"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    const/16 v4, -0x10

    goto :goto_0

    .line 3208
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->clearUserCertAndAppToken(Landroid/app/enterprise/ContextInfo;)I

    .line 3211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3212
    .local v6, "token":J
    iget-object v8, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "genericsso.INTENT.ACTION.tokens_cleared"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3213
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3216
    .end local v2    # "identity":J
    .end local v4    # "ret":I
    .end local v5    # "userId":I
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .line 3217
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    const-string v9, "In forceAuthenticate: Exception"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3219
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public getAppTokenFromGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3535
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3536
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3537
    const-string v4, "GenericSSOService"

    const-string v5, "In getAppTokenFromGenericSSO: appPkgName is null or empty string"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_0
    :goto_0
    return-object v3

    .line 3541
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3543
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3544
    .local v1, "pid":I
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3545
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3546
    sget-boolean v4, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 3547
    const-string v4, "GenericSSOService"

    const-string v5, "In getAppTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3551
    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAppTokenFromSecureStorageForUser(ILjava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0
.end method

.method public getAuthenticationConfig(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/identity/AuthenticationConfig;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2369
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->getAuthenticationConfig(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/identity/AuthenticationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfigDataForSSOVendorInternal(I)Landroid/os/Bundle;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 699
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 700
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need to be system process"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForSSOVendor(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerBrandInfo(Landroid/app/enterprise/ContextInfo;)Landroid/os/Bundle;
    .locals 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3683
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v12

    .line 3685
    .local v12, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 3686
    .local v10, "pid":I
    const/4 v13, 0x0

    invoke-direct {p0, v10, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v9

    .line 3687
    .local v9, "packageName":Ljava/lang/String;
    invoke-direct {p0, v12, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 3688
    sget-boolean v13, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 3689
    const-string v13, "GenericSSOService"

    const-string v14, "In getCustomerBrandInfo: authenticator is not permitted to call this API"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3691
    :cond_0
    const/4 v5, 0x0

    .line 3717
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v12    # "userId":I
    :cond_1
    :goto_0
    return-object v5

    .line 3693
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v10    # "pid":I
    .restart local v12    # "userId":I
    :cond_2
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v4

    .line 3694
    .local v4, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v4}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 3695
    .local v11, "solution":Lorg/w3c/dom/Node;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 3696
    .local v5, "customerInfo":Landroid/os/Bundle;
    invoke-direct {p0, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3697
    .local v2, "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 3698
    .local v1, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "customerbrand"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 3701
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getChildNodes(Lorg/w3c/dom/Node;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 3702
    .local v3, "configChildNode":Lorg/w3c/dom/Node;
    const-string/jumbo v13, "value"

    invoke-direct {p0, v3, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 3703
    const-string/jumbo v13, "value"

    invoke-direct {p0, v3, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getAttributeNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3707
    .local v0, "byteValue":[B
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3714
    .end local v0    # "byteValue":[B
    .end local v1    # "childNode":Lorg/w3c/dom/Node;
    .end local v2    # "childNodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    .end local v3    # "configChildNode":Lorg/w3c/dom/Node;
    .end local v4    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v5    # "customerInfo":Landroid/os/Bundle;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "pid":I
    .end local v11    # "solution":Lorg/w3c/dom/Node;
    .end local v12    # "userId":I
    :catch_0
    move-exception v6

    .line 3715
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "GenericSSOService"

    const-string v14, "In getCustomerBrandInfo: Exception"

    invoke-static {v13, v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3717
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getEnrolledSSOVendor(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2045
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v0

    .line 2046
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    if-eqz v0, :cond_0

    .line 2047
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1900(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v1

    .line 2049
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2038
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2039
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2041
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getToken(Landroid/app/enterprise/ContextInfo;ZLandroid/app/enterprise/sso/IGenericSSOCallback;)V
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "getFromLocalCache"    # Z
    .param p3, "callback"    # Landroid/app/enterprise/sso/IGenericSSOCallback;

    .prologue
    .line 4037
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v11

    if-nez v11, :cond_1

    .line 4038
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Checking networking connection - Failed."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    if-eqz p3, :cond_0

    .line 4040
    const/16 v11, -0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    .line 4107
    :cond_0
    :goto_0
    return-void

    .line 4043
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v10

    .line 4045
    .local v10, "userId":I
    invoke-direct {p0, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v2

    .line 4046
    .local v2, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 4047
    .local v8, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v8, :cond_2

    .line 4048
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: the SSO Vendor is not registered"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    if-eqz p3, :cond_0

    .line 4050
    const/4 v11, -0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4102
    .end local v2    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v10    # "userId":I
    :catch_0
    move-exception v5

    .line 4103
    .local v5, "npe":Ljava/lang/NullPointerException;
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: null pointer exception in getToken"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4053
    .end local v5    # "npe":Ljava/lang/NullPointerException;
    .restart local v2    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v10    # "userId":I
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 4054
    .local v7, "pid":I
    const/4 v11, 0x0

    invoke-direct {p0, v7, v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v6

    .line 4055
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4056
    const-string v11, "GenericSSOService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In getToken: cannot find the package name based on the pid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    if-eqz p3, :cond_0

    .line 4060
    const/4 v11, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 4104
    .end local v2    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "pid":I
    .end local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v10    # "userId":I
    :catch_1
    move-exception v3

    .line 4105
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Exception in getToken"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4065
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "pid":I
    .restart local v8    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v10    # "userId":I
    :cond_3
    :try_start_2
    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4067
    .local v1, "configData":Landroid/os/Bundle;
    invoke-direct {p0, v7, v6, v1, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v11

    if-nez v11, :cond_4

    .line 4068
    const-string v11, "GenericSSOService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "In getToken: the callingApp "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "is not permitted"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    if-eqz p3, :cond_0

    .line 4070
    const/4 v11, -0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto/16 :goto_0

    .line 4074
    :cond_4
    invoke-direct {p0, v10, v6}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 4075
    if-eqz p2, :cond_5

    .line 4076
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenFromLocalCache(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v9

    .line 4078
    .local v9, "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    if-eqz v9, :cond_5

    .line 4079
    if-eqz p3, :cond_0

    .line 4080
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Landroid/app/enterprise/sso/IGenericSSOCallback;->tokenInfoSuccess(Landroid/app/enterprise/sso/TokenInfo;)V

    .line 4081
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Getting a token successfully"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4086
    .end local v9    # "tokenCached":Landroid/app/enterprise/sso/TokenInfo;
    :cond_5
    invoke-direct {p0, v10, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 4087
    const-string v11, "GenericSSOService"

    const-string v12, "In getToken: Fail to pass the service package cert check"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4088
    if-eqz p3, :cond_0

    .line 4089
    const/16 v11, -0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto/16 :goto_0

    .line 4096
    :cond_6
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4097
    .local v4, "message":Landroid/os/Message;
    iput v10, v4, Landroid/os/Message;->arg1:I

    .line 4098
    move-object/from16 v0, p3

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4099
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4100
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public getUserAndDeviceCertFromGenericSSO(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3555
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3557
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3558
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3559
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3560
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3561
    const-string v3, "GenericSSOService"

    const-string v4, "In getUserAndDeviceCertFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    :cond_0
    const/4 v3, 0x0

    .line 3566
    :goto_0
    return-object v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->getUserAndDeviceCertificatesForUser(I)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v3

    goto :goto_0
.end method

.method public getUserInfo(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/sso/IGenericSSOCallback;)V
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "callback"    # Landroid/app/enterprise/sso/IGenericSSOCallback;

    .prologue
    .line 4111
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4112
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: Checking networking connection - Failed."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4113
    if-eqz p2, :cond_0

    .line 4114
    const/16 v8, -0xf

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    .line 4157
    :cond_0
    :goto_0
    return-void

    .line 4117
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 4119
    .local v7, "userId":I
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    .line 4120
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 4121
    .local v6, "ssoNode":Lorg/w3c/dom/Node;
    if-nez v6, :cond_2

    .line 4122
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: the SSO Vendor is not registered"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4123
    if-eqz p2, :cond_0

    .line 4124
    const/4 v8, -0x6

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4154
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v6    # "ssoNode":Lorg/w3c/dom/Node;
    .end local v7    # "userId":I
    :catch_0
    move-exception v2

    .line 4155
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: exception in getUserInfo"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4127
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v6    # "ssoNode":Lorg/w3c/dom/Node;
    .restart local v7    # "userId":I
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 4128
    .local v5, "pid":I
    const/4 v8, 0x0

    invoke-direct {p0, v5, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v4

    .line 4129
    .local v4, "packageName":Ljava/lang/String;
    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4131
    .local v0, "configData":Landroid/os/Bundle;
    invoke-direct {p0, v5, v4, v0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 4132
    const-string v8, "GenericSSOService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "In getUserInfo: the callingApp "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "is not permitted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4133
    if-eqz p2, :cond_0

    .line 4134
    const/4 v8, -0x7

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto :goto_0

    .line 4139
    :cond_3
    invoke-direct {p0, v7, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 4140
    invoke-direct {p0, v7, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 4141
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: Fail to pass the service package cert check"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    if-eqz p2, :cond_0

    .line 4143
    const/16 v8, -0xd

    invoke-interface {p2, v8}, Landroid/app/enterprise/sso/IGenericSSOCallback;->onFail(I)V

    goto :goto_0

    .line 4148
    :cond_4
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 4149
    .local v3, "message":Landroid/os/Message;
    iput v7, v3, Landroid/os/Message;->arg1:I

    .line 4150
    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4151
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4152
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4153
    const-string v8, "GenericSSOService"

    const-string v9, "In getUserInfo: Getting user info successfully"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getWhiteListPackages(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2901
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2903
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 2905
    .local v7, "userId":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 2906
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 2907
    const-string v9, "GenericSSOService"

    const-string v10, "In getWhiteListPackages: No SSO Vendors have been enrolled."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v5, v8

    .line 2932
    :cond_1
    :goto_0
    return-object v5

    .line 2911
    :cond_2
    :try_start_0
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v1

    .line 2912
    .local v1, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v1}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 2913
    .local v6, "parent":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 2914
    .local v0, "children":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2915
    .local v5, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 2916
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 2917
    .local v4, "node":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "whitelistpackage"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2919
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    const-string v10, "clientpackagename"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2915
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2927
    .end local v0    # "children":Lorg/w3c/dom/NodeList;
    .end local v1    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v3    # "i":I
    .end local v4    # "node":Lorg/w3c/dom/Node;
    .end local v5    # "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "parent":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v2

    .line 2928
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string v9, "GenericSSOService"

    const-string v10, "In getWhiteListPackages: NullPointerException."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_2
    move-object v5, v8

    .line 2932
    goto :goto_0

    .line 2929
    :catch_1
    move-exception v2

    .line 2930
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    const-string v10, "In getWhiteListPackages: Exception."

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public isNetworkAuthenticationEnforced(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2392
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->isNetworkAuthenticationEnforced(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 4668
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    .line 4681
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 4682
    const-string v9, "GenericSSOService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In onAdminRemoved: Admin removed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4683
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4688
    .local v8, "userId":I
    :try_start_0
    invoke-direct {p0, v8, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4689
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 4690
    const-string v9, "GenericSSOService"

    const-string v10, "In onAdminRemoved: MDM uid is not matched"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    :cond_1
    :goto_0
    return-void

    .line 4695
    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->unregisterByAuthenticator(I)I

    move-result v9

    if-eqz v9, :cond_3

    .line 4696
    sget-boolean v9, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 4697
    const-string v9, "GenericSSOService"

    const-string v10, "In onAdminRemoved: Fail to clear records remotely"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4700
    :cond_3
    const/4 v5, 0x0

    .line 4701
    .local v5, "sendBroadcast":Z
    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .line 4702
    .local v0, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    if-eqz v0, :cond_4

    .line 4703
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$1900(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 4705
    const/4 v5, 0x1

    .line 4709
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->requestConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 4710
    sget-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->delete(I)V

    .line 4715
    const/4 v2, 0x0

    .line 4716
    .local v2, "file":Ljava/io/File;
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getRequestConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 4717
    .local v3, "filepath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4718
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4719
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4721
    :cond_5
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getTokenConfigFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 4722
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4723
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4724
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4727
    :cond_6
    if-nez v8, :cond_7

    .line 4728
    const/4 v9, 0x1

    if-ne v5, v9, :cond_7

    .line 4729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4730
    .local v6, "token":J
    iget-object v9, p0, Lcom/android/server/enterprise/sso/GenericSSOService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "genericsso.INTENT.ACTION.tokens_cleared"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/os/UserHandle;

    invoke-direct {v11, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4731
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4735
    .end local v6    # "token":J
    :cond_7
    const/4 v9, 0x0

    sput-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;

    .line 4736
    const/4 v9, 0x0

    sput-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;

    .line 4737
    const/4 v9, 0x0

    sput-object v9, Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;

    .line 4742
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4743
    .local v4, "message":Landroid/os/Message;
    iput v8, v4, Landroid/os/Message;->arg1:I

    .line 4744
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4746
    invoke-direct {p0, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->cleanUpSSOConnections(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 4747
    .end local v0    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "message":Landroid/os/Message;
    .end local v5    # "sendBroadcast":Z
    :catch_0
    move-exception v1

    .line 4748
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v9, "GenericSSOService"

    const-string v10, "In onAdminRemoved: SecurityException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4749
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 4750
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "GenericSSOService"

    const-string v10, "In onAdminRemoved: Exception"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 4673
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->onAdminRemoved(I)V

    .line 4674
    const-string v0, "GenericSSOService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre Admin removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    return-void
.end method

.method public performUserAuthentication(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    .line 2364
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->performUserAuthentication(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v0

    return-object v0
.end method

.method public processWebServiceRequest(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/sso/WebServiceRequest;)Landroid/app/enterprise/sso/WebServiceResponse;
    .locals 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "webServiceRequest"    # Landroid/app/enterprise/sso/WebServiceRequest;

    .prologue
    .line 4204
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4205
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Checking networking connection - Failed."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    const/4 v11, 0x0

    .line 4266
    :goto_0
    return-object v11

    .line 4208
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 4210
    .local v13, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 4211
    .local v9, "pid":I
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v8

    .line 4212
    .local v8, "packageName":Ljava/lang/String;
    invoke-direct {p0, v13, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigDataForPkgName(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4214
    .local v4, "configData":Landroid/os/Bundle;
    invoke-direct {p0, v9, v8, v4, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->callingAppIsPermitted(ILjava/lang/String;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4215
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 4216
    const-string v1, "GenericSSOService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In processWebServiceRequest: the callingApp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "is not permitted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 4220
    :cond_2
    invoke-direct {p0, v13, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->getConfigData(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 4221
    invoke-direct {p0, v13, v4}, Lcom/android/server/enterprise/sso/GenericSSOService;->installedServiceIsPermitted(ILandroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4222
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 4223
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Fail to pass the service package cert check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 4226
    :cond_4
    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOServiceIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 4228
    .local v10, "serviceIntent":Landroid/content/Intent;
    if-nez v10, :cond_6

    .line 4229
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 4230
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: cannot get SSO Service intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4231
    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    .line 4235
    :cond_6
    invoke-direct {p0, v13, v10}, Lcom/android/server/enterprise/sso/GenericSSOService;->bindToService(ILandroid/content/Intent;)V

    .line 4237
    invoke-direct {p0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOService(I)Landroid/app/enterprise/sso/GenericSSOSupportSolution;

    move-result-object v12

    .line 4238
    .local v12, "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    if-nez v12, :cond_7

    .line 4239
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: sso service is not ready to use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    const/4 v11, 0x0

    goto :goto_0

    .line 4243
    :cond_7
    new-instance v0, Landroid/app/enterprise/sso/AuthenticationRequest;

    const-string/jumbo v1, "servicepackagename"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientpackagename"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/sso/AuthenticationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/enterprise/sso/TokenInfo;Landroid/os/Bundle;Landroid/app/enterprise/sso/WebServiceRequest;)V

    .line 4249
    .local v0, "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    invoke-interface {v12, v0}, Landroid/app/enterprise/sso/GenericSSOSupportSolution;->acquireWebService(Landroid/app/enterprise/sso/AuthenticationRequest;)Landroid/app/enterprise/sso/WebServiceResponse;

    move-result-object v11

    .line 4252
    .local v11, "serviceResponse":Landroid/app/enterprise/sso/WebServiceResponse;
    if-nez v11, :cond_9

    .line 4253
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_8

    .line 4254
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Fail to acquire valid service response from sso service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4257
    :cond_9
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: serviceResponse don\'t have any fault"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 4259
    .end local v0    # "request":Landroid/app/enterprise/sso/AuthenticationRequest;
    .end local v4    # "configData":Landroid/os/Bundle;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pid":I
    .end local v10    # "serviceIntent":Landroid/content/Intent;
    .end local v11    # "serviceResponse":Landroid/app/enterprise/sso/WebServiceResponse;
    .end local v12    # "ssoService":Landroid/app/enterprise/sso/GenericSSOSupportSolution;
    .end local v13    # "userId":I
    :catch_0
    move-exception v7

    .line 4260
    .local v7, "npe":Ljava/lang/NullPointerException;
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: null pointer exception in getToken"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4266
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :goto_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4261
    :catch_1
    move-exception v6

    .line 4262
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Remote Exception error"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4263
    .end local v6    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 4264
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "GenericSSOService"

    const-string v2, "In processWebServiceRequest: Exception in getToken"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public removeAppTokenFromGenericSSO(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appPkgName"    # Ljava/lang/String;

    .prologue
    .line 3648
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3649
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3650
    const-string v3, "GenericSSOService"

    const-string v4, "In removeAppTokenFromGenericSSO: appPkgName is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3655
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3656
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3657
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3658
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 3659
    const-string v3, "GenericSSOService"

    const-string v4, "In removeAppTokenFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    :cond_1
    const/4 v3, -0x1

    .line 3663
    :goto_0
    return v3

    :cond_2
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteAppTokenForUser(ILjava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public removeUserAndDeviceCertFromGenericSSO(Landroid/app/enterprise/ContextInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3667
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 3669
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3670
    .local v1, "pid":I
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->getPackageInfoForPid(II)Ljava/lang/String;

    move-result-object v0

    .line 3671
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/sso/GenericSSOService;->vendorPermissionCheck(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3672
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 3673
    const-string v3, "GenericSSOService"

    const-string v4, "In removeUserAndDeviceCertFromGenericSSO: authenticator is not permitted to call this API"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    :cond_0
    const/4 v3, -0x1

    .line 3677
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->deleteUserAndDeviceCertForUser(I)I

    move-result v3

    goto :goto_0
.end method

.method public setAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)I
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    .line 2374
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)I

    move-result v0

    return v0
.end method

.method public setAuthenticationConfigForContainer(Lcom/sec/enterprise/identity/AuthenticationConfig;I)I
    .locals 1
    .param p1, "request"    # Lcom/sec/enterprise/identity/AuthenticationConfig;
    .param p2, "containerId"    # I

    .prologue
    .line 2378
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setAuthenticationConfigForContainer(Lcom/sec/enterprise/identity/AuthenticationConfig;I)I

    move-result v0

    return v0
.end method

.method public setCustomerBrandInfo(Landroid/app/enterprise/ContextInfo;Landroid/os/Bundle;)I
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3223
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3224
    if-nez p1, :cond_1

    .line 3225
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_0

    .line 3226
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomerBrandInfo: cxtInfo is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    :cond_0
    const/4 v15, -0x3

    .line 3300
    :goto_0
    return v15

    .line 3229
    :cond_1
    move-object/from16 v0, p1

    iget v9, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 3231
    .local v9, "mdmUID":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/sso/GenericSSOService;->isNullOrEmpty(Landroid/os/Bundle;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 3232
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_2

    .line 3233
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomizedBrandingInfo: invalid parameters"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    :cond_2
    const/4 v15, -0x3

    goto :goto_0

    .line 3237
    :cond_3
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 3239
    .local v13, "userId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/android/server/enterprise/sso/GenericSSOService;->isCallingMDMMatch(II)Z

    move-result v15

    if-nez v15, :cond_5

    .line 3240
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_4

    .line 3241
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomerBrandInfo: MDM uid is not matched"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    :cond_4
    const/16 v15, -0xa

    goto :goto_0

    .line 3245
    :cond_5
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_6

    .line 3246
    const-string v15, "GenericSSOService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "In setCustomizedBrandingInfo: UserID = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->getEnrolledSSOVendor(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_8

    .line 3248
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_7

    .line 3249
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomizedBrandingInfo: No SSO Vendors have been enrolled."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    :cond_7
    const/4 v15, -0x6

    goto :goto_0

    .line 3253
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/sso/GenericSSOService;->getSSOConfigForUserId(I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v3

    .line 3254
    .local v3, "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    # invokes: Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    invoke-static {v3}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->access$600(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 3255
    .local v11, "solution":Lorg/w3c/dom/Node;
    iget-object v4, v3, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 3257
    .local v4, "doc":Lorg/w3c/dom/Document;
    const/4 v2, 0x0

    .line 3258
    .local v2, "brandInfo":Lorg/w3c/dom/Element;
    const-string/jumbo v15, "customerbrand"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .end local v2    # "brandInfo":Lorg/w3c/dom/Element;
    check-cast v2, Lorg/w3c/dom/Element;

    .restart local v2    # "brandInfo":Lorg/w3c/dom/Element;
    if-nez v2, :cond_9

    .line 3260
    const-string/jumbo v15, "customerbrand"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 3261
    invoke-interface {v11, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3269
    :cond_9
    const-string/jumbo v15, "customer_brand_logo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 3270
    const-string/jumbo v15, "customer_brand_logo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 3272
    .local v7, "image":[B
    const/4 v15, 0x0

    array-length v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v7, v15, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    if-nez v15, :cond_a

    .line 3274
    const/4 v15, -0x3

    goto/16 :goto_0

    .line 3277
    .end local v7    # "image":[B
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3278
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 3279
    .local v14, "value":[B
    if-eqz v14, :cond_b

    array-length v15, v14

    if-lez v15, :cond_b

    .line 3280
    const/4 v10, 0x0

    .line 3281
    .local v10, "newNode":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->existedNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    .end local v10    # "newNode":Lorg/w3c/dom/Element;
    check-cast v10, Lorg/w3c/dom/Element;

    .restart local v10    # "newNode":Lorg/w3c/dom/Element;
    if-nez v10, :cond_c

    .line 3282
    invoke-interface {v4, v8}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 3283
    invoke-interface {v2, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3285
    :cond_c
    new-instance v12, Ljava/lang/String;

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v15

    const-string v16, "UTF_8"

    move-object/from16 v0, v16

    invoke-direct {v12, v15, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3287
    .local v12, "strValue":Ljava/lang/String;
    const-string/jumbo v15, "value"

    invoke-interface {v10, v15, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3288
    sget-boolean v15, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v15, :cond_b

    .line 3289
    const-string v15, "GenericSSOService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "In setCustomizedBrandingInfo:  <"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "> is added"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3295
    .end local v2    # "brandInfo":Lorg/w3c/dom/Element;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "newNode":Lorg/w3c/dom/Element;
    .end local v11    # "solution":Lorg/w3c/dom/Node;
    .end local v12    # "strValue":Ljava/lang/String;
    .end local v13    # "userId":I
    .end local v14    # "value":[B
    :catch_0
    move-exception v5

    .line 3296
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomizedBrandingInfo: NullPointerException"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3300
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_2
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 3293
    .restart local v2    # "brandInfo":Lorg/w3c/dom/Element;
    .restart local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v11    # "solution":Lorg/w3c/dom/Node;
    .restart local v13    # "userId":I
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/android/server/enterprise/sso/GenericSSOService;->updateCacheAndFile(ILcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3294
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3297
    .end local v2    # "brandInfo":Lorg/w3c/dom/Element;
    .end local v3    # "configDoc":Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v11    # "solution":Lorg/w3c/dom/Node;
    .end local v13    # "userId":I
    :catch_1
    move-exception v5

    .line 3298
    .local v5, "e":Ljava/lang/Exception;
    const-string v15, "GenericSSOService"

    const-string v16, "In setCustomizedBrandingInfo: Exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setGenericSSOConfig(IILandroid/app/enterprise/sso/GenericSSOConfig;)V
    .locals 3
    .param p1, "adminUid"    # I
    .param p2, "containerID"    # I
    .param p3, "config"    # Landroid/app/enterprise/sso/GenericSSOConfig;

    .prologue
    .line 2312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 2313
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Process should have system uid"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2315
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2316
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2317
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2318
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2319
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2320
    return-void
.end method

.method public setUpdatedAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authConfig"    # Lcom/sec/enterprise/identity/AuthenticationConfig;

    .prologue
    .line 2404
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->setUpdatedAuthenticationConfig(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/identity/AuthenticationConfig;)Z

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 4662
    return-void
.end method

.method public unenrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;

    .prologue
    .line 2488
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2489
    if-nez p1, :cond_1

    .line 2490
    sget-boolean v3, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2491
    const-string v3, "GenericSSOService"

    const-string v4, "In unenrollSSOVendor: cxtInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_0
    const/4 v0, -0x3

    .line 2505
    :goto_0
    return v0

    .line 2494
    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v2

    .line 2496
    .local v2, "userId":I
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->_unenrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I

    move-result v0

    .line 2497
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2498
    const-string v3, "GenericSSOService"

    const-string v4, "In unenrollSSOVendor: success in unenrolling, removing whitelist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2500
    .local v1, "status":Z
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In unenrollSSOVendor: return from remove whitelisting all apps = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2503
    .end local v1    # "status":Z
    :cond_2
    const-string v3, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In unenrollSSOVendor: Failed to unenroll = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unenrollSSOVendor2(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "authenticatorPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 2411
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/sso/GenericSSOService;->enforceKnoxSSOPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2412
    if-nez p1, :cond_1

    .line 2413
    sget-boolean v2, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2414
    const-string v2, "GenericSSOService"

    const-string v3, "In unenrollSSOVendor2: cxtInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_0
    const/4 v0, -0x3

    .line 2426
    :goto_0
    return v0

    .line 2417
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->_unenrollSSOVendor(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)I

    move-result v0

    .line 2418
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 2419
    const-string v2, "GenericSSOService"

    const-string v3, "In unenrollSSOVendor2: success in unenrolling, removing whitelist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    const/4 v2, 0x0

    invoke-direct {p0, v2, p3}, Lcom/android/server/enterprise/sso/GenericSSOService;->setWhitelistAllAppsState(ZI)Z

    move-result v1

    .line 2421
    .local v1, "status":Z
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In unenrollSSOVendor2: return from remove whitelisting all apps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2424
    .end local v1    # "status":Z
    :cond_2
    const-string v2, "GenericSSOService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In unenrollSSOVendor2: Failed to unenroll = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public validateUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 2388
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->validateUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    return-void
.end method

.method public verifyUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 2383
    sget-object v0, Lcom/android/server/enterprise/sso/GenericSSOService;->mEnterpriseId:Lcom/android/server/enterprise/sso/EnterpriseIdentity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/sso/EnterpriseIdentity;->verifyUserAuthentication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/sso/TokenInfo;

    move-result-object v0

    return-object v0
.end method
