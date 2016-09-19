.class Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
.super Ljava/lang/Object;
.source "RollbackRefreshOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;,
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;,
        Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    }
.end annotation


# static fields
.field public static final INIT_ROLLBACK_REFRESH_PENDING_LIST:I = 0x3

.field private static final KEYSTORE_ADD_OPERATION:I = 0x0

.field private static final KEYSTORE_DELETE_OPERATION:I = 0x1

.field public static final KEYSTORE_REFRESH_OPERATION:I = 0x1

.field public static final KEYSTORE_ROLLBACK_OPERATION:I = 0x0

.field public static final KEYSTORE_ROLLBACK_REFRESH_OPERATION:I = 0x2

.field public static final REMOVE_ROLLBACK_REFRESH_PENDING_LIST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RollbackRefreshOperation"


# instance fields
.field private final ALIAS_SEPARATOR:Ljava/lang/String;

.field private final mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeyStoreLock:Ljava/lang/Object;

.field private mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mOperation:I

.field private mPendingKeystoreAction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPriority:I

.field private mUserId:I

.field private mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field private mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V
    .locals 1
    .param p1, "certPolicy"    # Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "_#_"

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->ALIAS_SEPARATOR:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    .line 67
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    .line 77
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    .line 78
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-direct {v0, p2}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 79
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 81
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 82
    iput-object p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;)Landroid/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method private executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .locals 7
    .param p1, "unlockedKeystores"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p2, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 87
    .local v3, "userId":Ljava/lang/Integer;
    const/4 v5, 0x4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    .line 88
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    .line 90
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStore(I)V

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v3    # "userId":Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 94
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshSystemKeyStoreAsUser(I)V

    goto :goto_1

    .line 96
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    return-void
.end method

.method private executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V
    .locals 7
    .param p1, "unlockedKeystores"    # [Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Integer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 100
    .local v3, "userId":Ljava/lang/Integer;
    const/4 v5, 0x4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    .line 101
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_0

    .line 103
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStore(I)V

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "userId":Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 107
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackSystemKeyStoreAsUser(I)V

    goto :goto_1

    .line 109
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    return-void
.end method

.method private getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;
    .locals 8
    .param p1, "callingUserId"    # I

    .prologue
    .line 740
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v5, "userKeystoresUnlocked":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v4

    .line 743
    .local v4, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    .line 744
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 745
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .restart local v4    # "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 753
    .local v2, "token":J
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 754
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 755
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 748
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "userId":I
    .end local v2    # "token":J
    :cond_1
    const/4 v6, 0x0

    .line 762
    :goto_1
    return-object v6

    .line 757
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "userId":I
    .restart local v2    # "token":J
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 760
    .end local v1    # "userId":I
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    goto :goto_1
.end method

.method private isNativeKeyStoreUnlockedAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 783
    const/4 v1, 0x0

    .line 785
    .local v1, "isUnlocked":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v2

    sget-object v3, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 786
    const/4 v1, 0x1

    .line 794
    :cond_0
    :goto_0
    return v1

    .line 788
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/AssertionError;
    const-string v2, "RollbackRefreshOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore State Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManager()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "activePersonas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "activePersonaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 180
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PersonaInfo;

    .line 181
    .local v3, "tempPersonaInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v3, :cond_0

    .line 182
    new-instance v5, Ljava/lang/Integer;

    iget v6, v3, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v3    # "tempPersonaInfo":Landroid/content/pm/PersonaInfo;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 186
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 187
    .local v4, "tempUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x64

    if-lt v5, v6, :cond_2

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_2

    .line 189
    new-instance v5, Ljava/lang/Integer;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 191
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    add-int/lit8 v2, v2, -0x1

    .line 185
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v4    # "tempUserInfo":Landroid/content/pm/UserInfo;
    :cond_3
    return-object p1
.end method

.method private refreshNativeKeyStore(I)V
    .locals 1
    .param p1, "keystoreUid"    # I

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->refreshNativeKeyStoreAsUser(II)V

    .line 473
    return-void
.end method

.method private refreshNativeKeyStoreAsUser(II)V
    .locals 23
    .param p1, "keystoreUid"    # I
    .param p2, "userId"    # I

    .prologue
    .line 477
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v18

    .line 481
    .local v18, "keystoreTypeKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 483
    .local v22, "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v19, 0x3f2

    .line 484
    .local v19, "keystoreTypeUid":I
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 485
    move/from16 v19, p2

    .line 491
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v21

    .line 495
    .local v21, "removedUserNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v4

    .line 496
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "CACERT_"

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 499
    .local v10, "aliasList":[Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 500
    move-object v11, v10

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v9, v11, v17

    .line 501
    .local v9, "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v13

    .line 503
    .local v13, "certBytes":[B
    if-eqz v13, :cond_2

    .line 504
    invoke-static {v13}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v14

    .line 505
    .local v14, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 506
    const/4 v15, 0x1

    .line 507
    .local v15, "i":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v17    # "i$":I
    .local v16, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 508
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x3

    move/from16 v0, p2

    invoke-virtual {v3, v12, v5, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_#_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 514
    goto :goto_1

    .line 500
    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v14    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v16, v17, 0x1

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_0

    .line 519
    .end local v9    # "alias":Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "certBytes":[B
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "USRCERT_"

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 521
    if-eqz v10, :cond_6

    .line 522
    move-object v11, v10

    .restart local v11    # "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    .restart local v20    # "len$":I
    const/16 v16, 0x0

    .restart local v16    # "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v9, v11, v17

    .line 523
    .restart local v9    # "alias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStore:Landroid/security/KeyStore;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToSystemUidAsUser(II)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v13

    .line 525
    .restart local v13    # "certBytes":[B
    if-eqz v13, :cond_5

    .line 526
    invoke-static {v13}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertPemToX509([B)Ljava/util/List;

    move-result-object v14

    .line 527
    .restart local v14    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 528
    const/4 v15, 0x1

    .line 529
    .restart local v15    # "i":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v17    # "i$":I
    .local v16, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 530
    .restart local v12    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v5, 0x3

    move/from16 v0, p2

    invoke-virtual {v3, v12, v5, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_#_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_4
    add-int/lit8 v15, v15, 0x1

    .line 536
    goto :goto_3

    .line 522
    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v14    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_5
    add-int/lit8 v16, v17, 0x1

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_2

    .line 542
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "aliasList":[Ljava/lang/String;
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v13    # "certBytes":[B
    .end local v17    # "i$":I
    .end local v20    # "len$":I
    :cond_6
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    .line 547
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 548
    new-instance v2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v4, 0x1

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 551
    .local v2, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 555
    .end local v2    # "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 556
    return-void

    .line 542
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private refreshSystemKeyStoreAsUser(I)V
    .locals 25
    .param p1, "userId"    # I

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 371
    .local v12, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v19

    .line 373
    .local v19, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v6, "userRemovedList"

    move/from16 v0, p1

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v20

    .line 376
    .local v20, "removedUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 378
    .local v22, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v4}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v16

    .line 381
    .local v16, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    .line 382
    .local v17, "keyChainService":Landroid/security/IKeyChainService;
    if-nez v17, :cond_0

    .line 451
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 464
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v17    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_0
    return-void

    .line 387
    .restart local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v17    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_0
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    move-result-object v21

    .line 388
    .local v21, "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 390
    .local v9, "alias":Ljava/lang/String;
    invoke-interface {v12, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 391
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v11

    .line 393
    .local v11, "certData":[B
    if-eqz v11, :cond_1

    .line 394
    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v18

    .line 395
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 396
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x2

    move/from16 v0, p1

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 398
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 402
    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 444
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "certData":[B
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v13

    .line 445
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 451
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 464
    .end local v13    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 411
    .restart local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_6
    invoke-interface/range {v17 .. v17}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    move-result-object v24

    .line 412
    .local v24, "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 413
    .restart local v9    # "alias":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v9, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v11

    .line 415
    .restart local v11    # "certData":[B
    if-eqz v11, :cond_4

    .line 416
    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v18

    .line 417
    .restart local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 418
    .restart local v10    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    move/from16 v0, p1

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 420
    move-object/from16 v0, v20

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 446
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "certData":[B
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v18    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v13

    .line 447
    .local v13, "e":Ljava/io/IOException;
    :try_start_7
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 451
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 453
    .end local v13    # "e":Ljava/io/IOException;
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_2
    move-exception v13

    .line 454
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 464
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 427
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .restart local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(Ljava/util/Map;I)Ljava/util/List;

    .line 430
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v5, "deleteAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 432
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 433
    new-instance v2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 435
    .local v2, "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v12, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "userRemovedList"

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v3, v4, v6, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 451
    :try_start_b
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 455
    .end local v2    # "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    .end local v5    # "deleteAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v17    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v21    # "systemAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v13

    .line 458
    .local v13, "e":Ljava/lang/AssertionError;
    :try_start_c
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 464
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 448
    .end local v13    # "e":Ljava/lang/AssertionError;
    .restart local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_4
    move-exception v13

    .line 449
    .local v13, "e":Ljava/security/cert/CertificateException;
    :try_start_d
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 451
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_2

    .line 459
    .end local v13    # "e":Ljava/security/cert/CertificateException;
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_5
    move-exception v13

    .line 462
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_f
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refreshSystemKeyStoreAsUser("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 464
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 451
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .restart local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_0
    move-exception v3

    :try_start_10
    invoke-virtual/range {v16 .. v16}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v3
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 464
    .end local v16    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catchall_1
    move-exception v3

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private rollbackNativeKeyStore(I)V
    .locals 1
    .param p1, "keystoreUid"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->rollbackNativeKeyStoreAsUser(II)V

    .line 312
    return-void
.end method

.method private rollbackNativeKeyStoreAsUser(II)V
    .locals 17
    .param p1, "keystoreUid"    # I
    .param p2, "userId"    # I

    .prologue
    .line 316
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->selectNativeKeystoreUid(I)Ljava/lang/String;

    move-result-object v12

    .line 320
    .local v12, "keystoreTypeKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    move/from16 v0, p2

    invoke-virtual {v3, v12, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .line 322
    .local v16, "userAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v13, 0x3f2

    .line 323
    .local v13, "keystoreTypeUid":I
    const/4 v3, 0x4

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    .line 324
    move/from16 v13, p2

    .line 330
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v13}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v15

    .line 334
    .local v15, "removedNativeKeyStore":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v14, "removeEdmNativeAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v7, "installNativeCerts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 341
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 342
    .local v9, "alias":Ljava/lang/String;
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 343
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    move/from16 v0, p2

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 351
    .restart local v9    # "alias":Ljava/lang/String;
    invoke-interface {v15, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 355
    .end local v9    # "alias":Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 357
    .local v2, "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
    .end local v2    # "nativeSystemOperation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$NativeKeyStoreOperation;
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    invoke-virtual {v3, v14, v13}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v3, v12, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 365
    return-void
.end method

.method private rollbackSystemKeyStoreAsUser(I)V
    .locals 28
    .param p1, "userId"    # I

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v12

    .line 208
    .local v12, "disabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v22

    .line 210
    .local v22, "prevDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "userRemovedList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    .line 213
    .local v24, "removedUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v6, "installCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v14, "enabledUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 218
    .local v26, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v4}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v18

    .line 221
    .local v18, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    .line 222
    .local v19, "keyChainService":Landroid/security/IKeyChainService;
    if-nez v19, :cond_0

    .line 290
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 303
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 305
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :goto_0
    return-void

    .line 227
    .restart local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    :cond_0
    :try_start_3
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v23, "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 229
    .local v9, "alias":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v9, v3}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    move-result-object v11

    .line 231
    .local v11, "certData":[B
    if-eqz v11, :cond_1

    .line 232
    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v20

    .line 233
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 234
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x2

    move/from16 v0, p1

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 240
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 283
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "certData":[B
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v13

    .line 284
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 290
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 303
    .end local v13    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 242
    .restart local v9    # "alias":Ljava/lang/String;
    .restart local v10    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v11    # "certData":[B
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_6
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 285
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v11    # "certData":[B
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v13

    .line 286
    .local v13, "e":Ljava/io/IOException;
    :try_start_7
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 290
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 292
    .end local v13    # "e":Ljava/io/IOException;
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_2
    move-exception v13

    .line 293
    .local v13, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 303
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 248
    .end local v13    # "e":Ljava/lang/InterruptedException;
    .restart local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_a
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 249
    .restart local v9    # "alias":Ljava/lang/String;
    invoke-interface {v12, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 287
    .end local v9    # "alias":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_3
    move-exception v13

    .line 288
    .local v13, "e":Ljava/security/cert/CertificateException;
    :try_start_b
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 290
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    .line 294
    .end local v13    # "e":Ljava/security/cert/CertificateException;
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_4
    move-exception v13

    .line 297
    .local v13, "e":Ljava/lang/AssertionError;
    :try_start_d
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 303
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 253
    .end local v13    # "e":Ljava/lang/AssertionError;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(Ljava/util/List;I)Ljava/util/Map;

    move-result-object v21

    .line 255
    .local v21, "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_6
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 256
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 257
    .restart local v9    # "alias":Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 258
    .restart local v10    # "cert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const/4 v4, 0x3

    move/from16 v0, p1

    invoke-virtual {v3, v10, v4, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 262
    move-object/from16 v0, v24

    invoke-interface {v0, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 263
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_4

    .line 290
    .end local v9    # "alias":Ljava/lang/String;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v21    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    :try_start_f
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v3
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 298
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    :catch_5
    move-exception v13

    .line 301
    .local v13, "e":Ljava/lang/RuntimeException;
    :try_start_10
    const-string v3, "RollbackRefreshOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rollbackSystemKeyStoreAsUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 303
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 269
    .end local v13    # "e":Ljava/lang/RuntimeException;
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .restart local v21    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .restart local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    move/from16 v0, p1

    invoke-virtual {v3, v14, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(Ljava/util/List;I)Ljava/util/List;

    .line 272
    new-instance v2, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;ILcom/android/server/enterprise/certificate/RollbackRefreshOperation$1;)V

    .line 274
    .local v2, "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemDisabledList"

    move/from16 v0, p1

    invoke-virtual {v3, v4, v12, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "systemPrevDisabledList"

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z

    .line 281
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    const-string/jumbo v4, "userRemovedList"

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(Ljava/lang/String;Ljava/util/Collection;I)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 290
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_12 .. :try_end_12} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_2

    .line 303
    .end local v2    # "operation":Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v19    # "keyChainService":Landroid/security/IKeyChainService;
    .end local v21    # "mapDisabledUser":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/X509Certificate;>;"
    .end local v23    # "removeFromDisabledSystem":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v3

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private selectNativeKeystoreUid(I)Ljava/lang/String;
    .locals 2
    .param p1, "keystoreUid"    # I

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 561
    const-string/jumbo v0, "nativeRemovedList_wifi"

    .line 565
    :cond_0
    :goto_0
    return-object v0

    .line 562
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 563
    const-string/jumbo v0, "nativeRemovedList"

    goto :goto_0
.end method


# virtual methods
.method public execute(II)V
    .locals 11
    .param p1, "operation"    # I
    .param p2, "userId"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    .line 113
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    .line 115
    iget v9, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPriority:I

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 117
    iget v9, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    invoke-direct {p0, v9}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->getUsersKeystoreUnlocked(I)[Ljava/lang/Integer;

    move-result-object v4

    .line 118
    .local v4, "unlockedKeystores":[Ljava/lang/Integer;
    if-nez v4, :cond_1

    .line 164
    :cond_0
    return-void

    .line 123
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v7, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v9}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersInfo()Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "allUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget v9, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-nez v9, :cond_4

    .line 126
    move-object v7, v0

    .line 134
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 136
    .local v2, "token":J
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v8

    .line 137
    .local v8, "versionInfo":Landroid/os/Bundle;
    const-string v9, "2.0"

    const-string/jumbo v10, "version"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 138
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->pruneDeletedContainerProfiles(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 142
    :cond_3
    iget v9, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mOperation:I

    packed-switch v9, :pswitch_data_0

    .line 156
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 161
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v9, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendIntentToSettings(I)V

    goto :goto_1

    .line 128
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "token":J
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 129
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    iget v10, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserId:I

    if-ne v9, v10, :cond_5

    .line 130
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .restart local v2    # "token":J
    .restart local v8    # "versionInfo":Landroid/os/Bundle;
    :pswitch_0
    invoke-direct {p0, v4, v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_0

    .line 147
    :pswitch_1
    invoke-direct {p0, v4, v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_0

    .line 150
    :pswitch_2
    invoke-direct {p0, v4, v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRollbackOperation([Ljava/lang/Integer;Ljava/util/List;)V

    .line 151
    invoke-direct {p0, v4, v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->executeRefreshOperation([Ljava/lang/Integer;Ljava/util/List;)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method hasPendingActionForUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method initPendingActionList()V
    .locals 5

    .prologue
    .line 774
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v2

    .line 775
    .local v2, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 776
    .local v1, "userId":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->isNativeKeyStoreUnlockedAsUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 777
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 780
    .end local v1    # "userId":I
    :cond_1
    return-void
.end method

.method removeUserIdFromPendingList(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
