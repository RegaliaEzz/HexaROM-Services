.class public Lcom/android/server/enterprise/email/LDAPAccountPolicy;
.super Landroid/app/enterprise/ILDAPAccountPolicy$Stub;
.source "LDAPAccountPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;,
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;,
        Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_CREATE_LDAPACCOUNT:Ljava/lang/String; = "edm.intent.action.internal.CREATE_LDAPACCOUNT"

.field private static final ACTION_LDAP_INTERFACE_SERVICE:Ljava/lang/String; = "edm.intent.action.internal.BIND_LDAPSERVICE"

.field private static final CONNECTION_TIMEOUT:I = 0xfa

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_BASEDN:Ljava/lang/String; = "basedn"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_HOST:Ljava/lang/String; = "host"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_ISSSL:Ljava/lang/String; = "isssl"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_PORT:Ljava/lang/String; = "port"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_SERVICE:Ljava/lang/String; = "service"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_TRUSTALL:Ljava/lang/String; = "trustall"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERID:Ljava/lang/String; = "user_id"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERNAME:Ljava/lang/String; = "user_name"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_USERPASSWORD_ID:Ljava/lang/String; = "user_password_id"

.field private static final LDAPACCOUNTPOLICY_INTENT_FEILD_iSANONYMOUS:Ljava/lang/String; = "isanonymous"

.field private static final TAG:Ljava/lang/String; = "LDAPAccountPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mLDAPIntentReceiver:Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field serviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 357
    invoke-direct {p0}, Landroid/app/enterprise/ILDAPAccountPolicy$Stub;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    .line 279
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$2;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 371
    iput-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mLDAPIntentReceiver:Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

    .line 358
    iput-object p1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 360
    :try_start_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "edm.intent.action.ldap.createacct.internal"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mLDAPIntentReceiver:Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

    .line 363
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mLDAPIntentReceiver:Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPIntentReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 364
    const-string v0, "LDAPAccountPolicyService"

    const-string/jumbo v1, "success to add receiver"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v6

    .line 367
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "LDAPAccountPolicyService"

    const-string v1, "Regist BroadCast failed : "

    invoke-static {v0, v1, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;
    .param p1, "x1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->unregisterReceiver(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/email/LDAPAccountPolicy;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindLDAPInterfaceService(II)V
    .locals 18
    .param p1, "callingUserId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 316
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService()"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 319
    .local v12, "token":J
    const/4 v7, 0x0

    .line 321
    .local v7, "isBound":Z
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v11

    .line 322
    .local v11, "userContext":Landroid/content/Context;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getConnection(I)Landroid/content/ServiceConnection;

    move-result-object v3

    .line 323
    .local v3, "connxn":Landroid/content/ServiceConnection;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v11, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->registerLDAPInterfaceReceiver(Landroid/content/Context;I)Landroid/content/BroadcastReceiver;

    move-result-object v8

    .line 325
    .local v8, "ldapReceiver":Landroid/content/BroadcastReceiver;
    new-instance v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    invoke-direct {v10}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;-><init>()V

    .line 326
    .local v10, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    move/from16 v0, p1

    iput v0, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mCallingUserId:I

    .line 327
    iput-object v3, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 328
    iput-object v8, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    new-instance v2, Landroid/content/ComponentName;

    const-string v14, "com.android.email"

    const-string v15, "com.android.email.service.LDAPInterfaceService"

    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .local v2, "component":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v14, "edm.intent.action.internal.BIND_LDAPSERVICE"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 334
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v15

    invoke-virtual {v11, v6, v3, v14, v15}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v7

    .line 335
    if-nez v7, :cond_0

    .line 336
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->unregisterReceiver(I)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : fail to Bind Service."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 355
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "connxn":Landroid/content/ServiceConnection;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "ldapReceiver":Landroid/content/BroadcastReceiver;
    .end local v10    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    .end local v11    # "userContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 341
    .restart local v2    # "component":Landroid/content/ComponentName;
    .restart local v3    # "connxn":Landroid/content/ServiceConnection;
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "ldapReceiver":Landroid/content/BroadcastReceiver;
    .restart local v10    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    .restart local v11    # "userContext":Landroid/content/Context;
    :cond_0
    :try_start_1
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : success."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v14, v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mBindComplete:Landroid/os/ConditionVariable;

    const-wide/16 v16, 0xfa

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 344
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v3    # "connxn":Landroid/content/ServiceConnection;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "ldapReceiver":Landroid/content/BroadcastReceiver;
    .end local v10    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    .end local v11    # "userContext":Landroid/content/Context;
    :catch_0
    move-exception v5

    .line 345
    .local v5, "ex":Ljava/lang/SecurityException;
    :try_start_2
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : failed for SecurityException. "

    invoke-static {v14, v15, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 346
    .end local v5    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v4

    .line 347
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : failed for IllegalArgumentException. "

    invoke-static {v14, v15, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 349
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 350
    .local v9, "others":Ljava/lang/Exception;
    :try_start_4
    const-string v14, "LDAPAccountPolicyService"

    const-string v15, "bindLDAPInterfaceService() : unexpected Exceptions. "

    invoke-static {v14, v15, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 352
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v9    # "others":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14
.end method

.method private enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LDAP"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAccountLDAPType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const-string v0, "com.samsung.android.ldap"

    .line 727
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.android.ldap"

    goto :goto_0
.end method

.method private getConnection(I)Landroid/content/ServiceConnection;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 218
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;I)V

    .line 219
    .local v0, "connxn":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPConnection;
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLDAPReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$1;-><init>(Lcom/android/server/enterprise/email/LDAPAccountPolicy;)V

    .line 169
    .local v0, "interfaceReceiver":Landroid/content/BroadcastReceiver;
    return-object v0
.end method

.method private getUserContext(I)Landroid/content/Context;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 256
    .local v2, "userHandle":Landroid/os/UserHandle;
    const/4 v1, 0x0

    .line 258
    .local v1, "userContext":Landroid/content/Context;
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUserContext() : currentUserID - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUserContext() : currentUserHandle - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eqz p1, :cond_0

    .line 264
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    const-string v4, "com.android.email"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 266
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "currentContext : Guest Context : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getUserContext("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-object v1

    .line 268
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    .line 269
    const-string v3, "LDAPAccountPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "currentContext : Owner Context : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "LDAPAccountPolicyService"

    const-string v4, "LDAPConnection: getUserContext() : failed. "

    invoke-static {v3, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getUserHandle(I)Landroid/os/UserHandle;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 248
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 249
    .local v0, "userHandle":Landroid/os/UserHandle;
    const-string v1, "LDAPAccountPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserHandle() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-object v0
.end method

.method private registerLDAPInterfaceReceiver(Landroid/content/Context;I)Landroid/content/BroadcastReceiver;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 669
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "edm.intent.action.ldap.createacct.internal"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 671
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "LDAPAccountPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "registerLDAPInterfaceReceiver() - currentUserHandle : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    .line 673
    .local v1, "interfaceReceiver":Landroid/content/BroadcastReceiver;
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object v2

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 676
    return-object v1
.end method

.method private setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 706
    invoke-direct {p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    const-string v9, "android.permission.sec.MDM_EXCHANGE"

    invoke-virtual {v8, p1, v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 707
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 708
    .local v5, "userID":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 709
    .local v3, "containerId":I
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->createIDforAccount()J

    move-result-wide v0

    .line 710
    .local v0, "callID":J
    if-nez p2, :cond_0

    move-wide v0, v6

    .line 720
    .end local v0    # "callID":J
    :goto_0
    return-wide v0

    .line 713
    .restart local v0    # "callID":J
    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "E#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, "caller":Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/android/server/enterprise/email/SettingsUtils;->setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    const-string v6, "LDAPAccountPolicyService"

    const-string/jumbo v7, "setAccountEmailPassword() success"

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 715
    .end local v2    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 716
    .local v4, "ex":Ljava/lang/Exception;
    const-string v8, "LDAPAccountPolicyService"

    const-string/jumbo v9, "setAccountEmailPassword() failed"

    invoke-static {v8, v9, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v6

    .line 717
    goto :goto_0
.end method

.method private unregisterReceiver(I)Z
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v1

    .line 227
    .local v1, "userContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    const-string v4, "LDAPAccountPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterReceiver() : no LDAPServiceConnection for userId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v4, 0x0

    .line 235
    :goto_0
    return v4

    .line 231
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 232
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 233
    .local v0, "connxn":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    iget-object v4, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->mLDAPInterfaceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized createLDAPAccount(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/LDAPAccount;)V
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "ldap"    # Landroid/app/enterprise/LDAPAccount;

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount()"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 409
    .local v5, "callingUserId":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 410
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v19

    .line 411
    .local v19, "userId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 413
    .local v6, "containerId":I
    if-nez p2, :cond_0

    .line 414
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount() : failed. ldap is not vaild."

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :goto_0
    monitor-exit p0

    return-void

    .line 418
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/LDAPAccount;->isSSL:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 419
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/enterprise/LDAPAccount;->trustAll:I

    .line 422
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 424
    .local v16, "token_new":J
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/email/SettingsUtils;->getEmailPackageName(I)Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "EmailPackageName":Ljava/lang/String;
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount_new()"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    :try_start_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/LDAPAccount;->password:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->setAccountEmailPassword(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v10

    .line 428
    .local v10, "password_id":J
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.internal.CREATE_LDAPACCOUNT"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v20, "user_id"

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/app/enterprise/LDAPAccount;->id:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v9, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 430
    const-string/jumbo v20, "user_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/LDAPAccount;->userName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string/jumbo v20, "user_password_id"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 432
    const-string/jumbo v20, "port"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/LDAPAccount;->port:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string/jumbo v20, "isssl"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/LDAPAccount;->isSSL:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 434
    const-string/jumbo v20, "service"

    const-string/jumbo v21, "ldap"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string/jumbo v20, "isanonymous"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/app/enterprise/LDAPAccount;->isAnonymous:Z

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 436
    const-string/jumbo v20, "host"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/LDAPAccount;->host:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v20, "basedn"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/LDAPAccount;->baseDN:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string/jumbo v20, "trustall"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/enterprise/LDAPAccount;->trustAll:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v22, "android.permission.sec.MDM_EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 441
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount_new() : Successfully sent intent to Email app. "

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 446
    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 406
    .end local v4    # "EmailPackageName":Ljava/lang/String;
    .end local v5    # "callingUserId":I
    .end local v6    # "containerId":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "password_id":J
    .end local v16    # "token_new":J
    .end local v19    # "userId":I
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 443
    .restart local v4    # "EmailPackageName":Ljava/lang/String;
    .restart local v5    # "callingUserId":I
    .restart local v6    # "containerId":I
    .restart local v16    # "token_new":J
    .restart local v19    # "userId":I
    :catch_0
    move-exception v7

    .line 444
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount_new() : unexpected Exception occurs. "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 446
    :try_start_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 479
    .end local v4    # "EmailPackageName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v16    # "token_new":J
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v14

    .line 481
    .local v14, "token":J
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getUserContext(I)Landroid/content/Context;

    move-result-object v18

    .line 482
    .local v18, "userContext":Landroid/content/Context;
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v20, "edm.intent.action.ldap.createacct.result"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string/jumbo v20, "edm.intent.extra.ldap.result"

    const/16 v21, -0x8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 484
    const-string/jumbo v20, "edm.intent.extra.ldap.acct.id"

    const/16 v21, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    const-string/jumbo v20, "edm.intent.extra.ldap.user.id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    new-instance v20, Landroid/os/UserHandle;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v21, "android.permission.sec.MDM_LDAP"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v9, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 491
    :try_start_7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 446
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v14    # "token":J
    .end local v18    # "userContext":Landroid/content/Context;
    .restart local v4    # "EmailPackageName":Ljava/lang/String;
    .restart local v16    # "token_new":J
    :catchall_1
    move-exception v20

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    .line 450
    .end local v4    # "EmailPackageName":Ljava/lang/String;
    .end local v16    # "token_new":J
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 451
    .restart local v14    # "token":J
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount_old()"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 453
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 454
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 459
    .local v13, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v13}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v12

    .line 460
    .local v12, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v12, :cond_4

    .line 461
    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Landroid/app/enterprise/ILDAPInterface;->createLDAPAccount(Landroid/app/enterprise/LDAPAccount;)V

    .line 462
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount() : createLDAPAccount success. "

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 473
    :try_start_9
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 465
    :cond_4
    :try_start_a
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount() : Service is not available. "

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 473
    .end local v12    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v13    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_5
    :try_start_b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 468
    :catch_1
    move-exception v8

    .line 469
    .local v8, "ex":Landroid/os/RemoteException;
    :try_start_c
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount() : Failed talking to EDM LDAP service "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 473
    :try_start_d
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 470
    .end local v8    # "ex":Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    .line 471
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount() : unexpected Exception occurs. "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 473
    :try_start_f
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v20

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 488
    :catch_3
    move-exception v7

    .line 489
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_10
    const-string v20, "LDAPAccountPolicyService"

    const-string/jumbo v21, "createLDAPAccount() : Fail to Send Intent for Error. "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 491
    :try_start_11
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v20

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
.end method

.method public declared-synchronized deleteLDAPAccount(Landroid/app/enterprise/ContextInfo;J)Z
    .locals 20
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # J

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 502
    .local v5, "callingUserId":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 503
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v16

    .line 504
    .local v16, "userId":I
    const/4 v8, 0x0

    .line 506
    .local v8, "ret":Z
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getLDAPAccount(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/LDAPAccount;

    move-result-object v4

    .line 507
    .local v4, "account":Landroid/app/enterprise/LDAPAccount;
    if-nez v4, :cond_0

    .line 508
    const-string v17, "LDAPAccountPolicyService"

    const-string/jumbo v18, "deleteLDAPAccount() : ldapId is invalid"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v9, v8

    .line 551
    .end local v8    # "ret":Z
    .local v9, "ret":I
    :goto_0
    monitor-exit p0

    return v9

    .line 511
    .end local v9    # "ret":I
    .restart local v8    # "ret":Z
    :cond_0
    :try_start_1
    const-string/jumbo v17, "device_account_policy"

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 513
    .local v6, "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-eqz v6, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->getAccountLDAPType()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/app/enterprise/LDAPAccount;->userName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "@"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Landroid/app/enterprise/LDAPAccount;->host:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_1

    .line 514
    const-string v17, "LDAPAccountPolicyService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "deleteLDAPAccount() : MDM DeviceAccountPolicy restriction - cannot delete account : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v8

    .line 515
    .restart local v9    # "ret":I
    goto :goto_0

    .line 518
    .end local v9    # "ret":I
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 519
    const-string v17, "LDAPAccountPolicyService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "deleteLDAPAccount_new() accId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v14

    .line 522
    .local v14, "token_new":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->deleteLDAPAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    .line 524
    :try_start_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v14    # "token_new":J
    :goto_1
    move v9, v8

    .line 551
    .restart local v9    # "ret":I
    goto/16 :goto_0

    .line 524
    .end local v9    # "ret":I
    .restart local v14    # "token_new":J
    :catchall_0
    move-exception v17

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 501
    .end local v4    # "account":Landroid/app/enterprise/LDAPAccount;
    .end local v5    # "callingUserId":I
    .end local v6    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .end local v8    # "ret":Z
    .end local v14    # "token_new":J
    .end local v16    # "userId":I
    :catchall_1
    move-exception v17

    monitor-exit p0

    throw v17

    .line 528
    .restart local v4    # "account":Landroid/app/enterprise/LDAPAccount;
    .restart local v5    # "callingUserId":I
    .restart local v6    # "dap":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    .restart local v8    # "ret":Z
    .restart local v16    # "userId":I
    :cond_2
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v12

    .line 530
    .local v12, "token":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 531
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 533
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 535
    .local v11, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v11}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v10

    .line 536
    .local v10, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v10, :cond_5

    .line 537
    move-wide/from16 v0, p2

    invoke-interface {v10, v0, v1}, Landroid/app/enterprise/ILDAPInterface;->deleteLDAPAccount(J)Z

    move-result v8

    .line 538
    const-string v17, "LDAPAccountPolicyService"

    const-string/jumbo v18, "deleteLDAPAccount_old() : Successful"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 547
    .end local v10    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v11    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_4
    :goto_2
    :try_start_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 540
    .restart local v10    # "service":Landroid/app/enterprise/ILDAPInterface;
    .restart local v11    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_5
    :try_start_7
    const-string v17, "LDAPAccountPolicyService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "deleteLDAPAccount_old() : Service is not valid. : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 543
    .end local v10    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v11    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :catch_0
    move-exception v7

    .line 544
    .local v7, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v17, "LDAPAccountPolicyService"

    const-string/jumbo v18, "deleteLDAPAccount_old() : Failed, Exception occurs. "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 545
    const/4 v8, 0x0

    .line 547
    :try_start_9
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v17

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
.end method

.method public getAllLDAPAccounts(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 20
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/LDAPAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 614
    .local v4, "callingUserId":I
    const-string v17, "LDAPAccountPolicyService"

    const-string/jumbo v18, "getAllLDAPAccounts() "

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 616
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v16

    .line 617
    .local v16, "userId":I
    const/4 v8, 0x0

    .line 619
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 621
    .local v14, "token_new":J
    const-string v17, "LDAPAccountPolicyService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getAllLDAPAccounts_new() : userId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getAllLDAPAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v3

    .line 624
    .local v3, "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    if-eqz v3, :cond_2

    .line 625
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .end local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    .local v9, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    .line 627
    .local v2, "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    invoke-static {v2}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Landroid/app/enterprise/LDAPAccount;

    move-result-object v7

    .line 628
    .local v7, "ldap_acct":Landroid/app/enterprise/LDAPAccount;
    if-eqz v7, :cond_0

    .line 629
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 632
    .end local v2    # "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "ldap_acct":Landroid/app/enterprise/LDAPAccount;
    :catch_0
    move-exception v5

    move-object v8, v9

    .line 633
    .end local v3    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .end local v9    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    .local v5, "e":Ljava/lang/Exception;
    .restart local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    :goto_1
    :try_start_2
    const-string v17, "LDAPAccountPolicyService"

    const-string/jumbo v18, "getAllLDAPAccounts_new() : Failed, Exception occurs. "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 634
    const/4 v8, 0x0

    .line 636
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 663
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v14    # "token_new":J
    :goto_2
    const-string v18, "LDAPAccountPolicyService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getAllLDAPAccounts() ret = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-eqz v8, :cond_7

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    return-object v8

    .end local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    .restart local v3    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    .restart local v14    # "token_new":J
    :cond_1
    move-object v8, v9

    .line 636
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    .restart local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    :cond_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .end local v3    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    :catchall_0
    move-exception v17

    :goto_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17

    .line 640
    .end local v14    # "token_new":J
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 641
    .local v12, "token":J
    const-string v17, "LDAPAccountPolicyService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getAllLDAPAccounts_old() : userId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 644
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 646
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 648
    .local v11, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v11}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v10

    .line 649
    .local v10, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v10, :cond_6

    .line 650
    invoke-interface {v10}, Landroid/app/enterprise/ILDAPInterface;->getAllLDAPAccounts()Ljava/util/List;

    move-result-object v8

    .line 651
    const-string v17, "LDAPAccountPolicyService"

    const-string/jumbo v18, "getAllLDAPAccounts_old() : succesfully get Data from Email. "

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 660
    .end local v10    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v11    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_5
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 654
    .restart local v10    # "service":Landroid/app/enterprise/ILDAPInterface;
    .restart local v11    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_6
    :try_start_4
    const-string v17, "LDAPAccountPolicyService"

    const-string/jumbo v18, "getAllLDAPAccounts_old() : service is not valid."

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 657
    .end local v10    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v11    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :catch_1
    move-exception v5

    .line 658
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v17, "LDAPAccountPolicyService"

    const-string/jumbo v18, "getAllLDAPAccounts_old() : Failed, Exception occurs. "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 660
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v17

    .line 663
    .end local v12    # "token":J
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 636
    .end local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    .restart local v3    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    .restart local v9    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    .restart local v14    # "token_new":J
    :catchall_2
    move-exception v17

    move-object v8, v9

    .end local v9    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    .restart local v8    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/LDAPAccount;>;"
    goto/16 :goto_4

    .line 632
    .end local v3    # "acctList":Ljava/util/List;, "Ljava/util/List<Landroid/sec/enterprise/email/EnterpriseLDAPAccount;>;"
    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public getLDAPAccount(Landroid/app/enterprise/ContextInfo;J)Landroid/app/enterprise/LDAPAccount;
    .locals 20
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "id"    # J

    .prologue
    .line 558
    const-string v16, "LDAPAccountPolicyService"

    const-string/jumbo v17, "getLDAPAccount()"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 561
    .local v5, "callingUserId":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->enforceLDAPPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 562
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 563
    .local v11, "userId":I
    const/4 v7, 0x0

    .line 564
    .local v7, "ret":Landroid/app/enterprise/LDAPAccount;
    const-wide/16 v16, 0x1

    cmp-long v16, p2, v16

    if-gez v16, :cond_0

    .line 565
    const-string v16, "LDAPAccountPolicyService"

    const-string/jumbo v17, "getLDAPAccount() : ldapId is invalid"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    .line 605
    .end local v7    # "ret":Landroid/app/enterprise/LDAPAccount;
    .local v8, "ret":Landroid/app/enterprise/LDAPAccount;
    :goto_0
    return-object v8

    .line 569
    .end local v8    # "ret":Landroid/app/enterprise/LDAPAccount;
    .restart local v7    # "ret":Landroid/app/enterprise/LDAPAccount;
    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/email/SettingsUtils;->isSupportNewEmail()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 570
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 571
    .local v14, "token_new":J
    const-string v16, "LDAPAccountPolicyService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getLDAPAccount_new() : accId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 574
    .local v12, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEnterpriseLDAPAccount(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseLDAPAccount;

    move-result-object v4

    .line 575
    .local v4, "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    invoke-static {v4}, Lcom/android/server/enterprise/email/SettingsUtils;->getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Landroid/app/enterprise/LDAPAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 577
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 603
    .end local v4    # "acct":Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
    .end local v14    # "token_new":J
    :goto_1
    const-string v17, "LDAPAccountPolicyService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getLDAPAccount() ret = "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-eqz v7, :cond_5

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    .line 605
    .end local v7    # "ret":Landroid/app/enterprise/LDAPAccount;
    .restart local v8    # "ret":Landroid/app/enterprise/LDAPAccount;
    goto :goto_0

    .line 577
    .end local v8    # "ret":Landroid/app/enterprise/LDAPAccount;
    .restart local v7    # "ret":Landroid/app/enterprise/LDAPAccount;
    .restart local v14    # "token_new":J
    :catchall_0
    move-exception v16

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16

    .line 581
    .end local v12    # "token":J
    .end local v14    # "token_new":J
    :cond_1
    const-string v16, "LDAPAccountPolicyService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getLDAPAccount_old() : accId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 584
    .restart local v12    # "token":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 585
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->bindLDAPInterfaceService(II)V

    .line 587
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->serviceMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;

    .line 589
    .local v10, "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    invoke-virtual {v10}, Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;->getService()Landroid/app/enterprise/ILDAPInterface;

    move-result-object v9

    .line 590
    .local v9, "service":Landroid/app/enterprise/ILDAPInterface;
    if-eqz v9, :cond_4

    .line 591
    move-wide/from16 v0, p2

    invoke-interface {v9, v0, v1}, Landroid/app/enterprise/ILDAPInterface;->getLDAPAccount(J)Landroid/app/enterprise/LDAPAccount;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 600
    .end local v9    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v10    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_3
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 594
    .restart local v9    # "service":Landroid/app/enterprise/ILDAPInterface;
    .restart local v10    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :cond_4
    :try_start_2
    const-string v16, "LDAPAccountPolicyService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "getLDAPAccount_old() : Service is not valid. : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 597
    .end local v9    # "service":Landroid/app/enterprise/ILDAPInterface;
    .end local v10    # "serviceConnection":Lcom/android/server/enterprise/email/LDAPAccountPolicy$LDAPServiceConnection;
    :catch_0
    move-exception v6

    .line 598
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v16, "LDAPAccountPolicyService"

    const-string/jumbo v17, "getLDAPAccount_old() : unexpected Exception occurs. "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 600
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v16

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v16

    .line 603
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_2
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 692
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 697
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 702
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 681
    const-string v1, "LDAPAccountPolicyService"

    const-string/jumbo v2, "systemReady()... "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 684
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/email/LDAPAccountPolicy;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 687
    return-void
.end method
