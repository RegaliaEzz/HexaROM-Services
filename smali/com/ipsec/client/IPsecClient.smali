.class public Lcom/ipsec/client/IPsecClient;
.super Ljava/lang/Object;
.source "IPsecClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IPsecClient$3;,
        Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
    }
.end annotation


# static fields
.field private static final COMPONENT:Ljava/lang/String; = "IPsecRemoteConnection"

.field private static final TAG:Ljava/lang/String; = "IPSC"

.field private static final mConnectionLock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/ipsec/client/IPsecClient;


# instance fields
.field private MAX_SIZE:I

.field private mActiveConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ipsec/client/IPsecConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;

.field private mIPsecService:Lcom/ipsec/client/IIPsecService;

.field private mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ipsec/client/IIPsecListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceReadLock:Ljava/util/concurrent/locks/Lock;

.field private final mServiceReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mServiceWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 309
    const-string v0, "IPSC"

    const-string v1, "IPsecRemoteConnection"

    const-string v2, "Starting. Package version is 939-23012-001-quicksec-vpnclient-for-android-3.5-4155-1a877303f36b-4155"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ipsec/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 322
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    .line 323
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 330
    const v0, 0x186a0

    iput v0, p0, Lcom/ipsec/client/IPsecClient;->MAX_SIZE:I

    .line 333
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    .line 336
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    .line 369
    new-instance v0, Lcom/ipsec/client/IPsecClient$1;

    invoke-direct {v0, p0}, Lcom/ipsec/client/IPsecClient$1;-><init>(Lcom/ipsec/client/IPsecClient;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;

    .line 365
    const-string v0, "IPSC"

    const-string v1, "IPsecRemoteConnection"

    const-string v2, "IPsecClient()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    sput-object p1, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    .line 367
    return-void
.end method

.method static synthetic access$000(Lcom/ipsec/client/IPsecClient;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ipsec/client/IPsecClient;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ipsec/client/IPsecClient;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IIPsecService;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecService;)Lcom/ipsec/client/IIPsecService;
    .locals 0
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;
    .param p1, "x1"    # Lcom/ipsec/client/IIPsecService;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IPsecServiceCallbackBinder;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ipsec/client/IPsecClient;)Lcom/ipsec/client/IPsecError;
    .locals 1
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;)Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;
    .locals 0
    .param p0, "x0"    # Lcom/ipsec/client/IPsecClient;
    .param p1, "x1"    # Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    return-object p1
.end method

.method private checkSize(I)Z
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v0, 0x0

    .line 3131
    const-string v1, "IPSC"

    const-string v2, "IPsecRemoteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSize() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3132
    iget v1, p0, Lcom/ipsec/client/IPsecClient;->MAX_SIZE:I

    if-le p1, v1, :cond_0

    .line 3136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private decodeConnectionStateBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecConnectionState;)Z
    .locals 21
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "state"    # Lcom/ipsec/client/IPsecConnectionState;

    .prologue
    .line 1851
    const-string/jumbo v17, "gateway-ip"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setGatewayIP(Ljava/lang/String;)V

    .line 1852
    const-string/jumbo v17, "local-ip"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setLocalIP(Ljava/lang/String;)V

    .line 1854
    const-string/jumbo v17, "remote-identity"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setRemoteIdentity(Ljava/lang/String;)V

    .line 1855
    const-string/jumbo v17, "remote-identity-type"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1856
    .local v16, "type":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 1858
    invoke-static/range {v16 .. v16}, Lcom/ipsec/client/IPsecConnection$IdentityType;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setRemoteIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V

    .line 1861
    :cond_0
    const-string/jumbo v17, "own-identity"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setOwnIdentity(Ljava/lang/String;)V

    .line 1862
    const-string/jumbo v17, "own-identity-type"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1863
    if-eqz v16, :cond_1

    .line 1865
    invoke-static/range {v16 .. v16}, Lcom/ipsec/client/IPsecConnection$IdentityType;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setOwnIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V

    .line 1868
    :cond_1
    const-string/jumbo v17, "second-own-identity"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1869
    .local v14, "secondOwnId":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 1871
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/ipsec/client/IPsecConnectionState;->setSecondOwnIdentity(Ljava/lang/String;)V

    .line 1872
    const-string/jumbo v17, "second-own-identity-type"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1873
    if-eqz v16, :cond_2

    .line 1875
    invoke-static/range {v16 .. v16}, Lcom/ipsec/client/IPsecConnection$IdentityType;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setSecondOwnIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V

    .line 1879
    :cond_2
    const-string/jumbo v17, "rac-ip"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1880
    .local v10, "racAddr":[Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 1882
    move-object v4, v10

    .local v4, "arr$":[Ljava/lang/String;
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_8

    aget-object v3, v4, v7

    .line 1884
    .local v3, "addr":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1886
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    const-string v19, "Skipping null rac-ip!"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1882
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1890
    :cond_3
    invoke-static {v3}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static {v3}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4Subnet(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1893
    :cond_4
    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_1

    .line 1897
    :cond_5
    invoke-static {v3}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_6

    invoke-static {v3}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6Subnet(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1900
    :cond_6
    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_1

    .line 1906
    :cond_7
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "invalid rac-ip: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1911
    .end local v3    # "addr":Ljava/lang/String;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_8
    const-string/jumbo v17, "rac-dns"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1912
    .local v11, "racDNS":[Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 1914
    move-object v4, v11

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v8, v4

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v8, :cond_c

    aget-object v6, v4, v7

    .line 1916
    .local v6, "dns":Ljava/lang/String;
    if-nez v6, :cond_9

    .line 1918
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    const-string v19, "Skipping null rac-dns!"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1914
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1922
    :cond_9
    invoke-static {v6}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1924
    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_3

    .line 1928
    :cond_a
    invoke-static {v6}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1930
    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_3

    .line 1936
    :cond_b
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "invalid rac-dns: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1941
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "dns":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_c
    const-string/jumbo v17, "rac-subnet"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1942
    .local v12, "racSubnet":[Ljava/lang/String;
    if-eqz v12, :cond_10

    .line 1944
    move-object v4, v12

    .restart local v4    # "arr$":[Ljava/lang/String;
    array-length v8, v4

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_4
    if-ge v7, v8, :cond_10

    aget-object v15, v4, v7

    .line 1946
    .local v15, "subnet":Ljava/lang/String;
    if-nez v15, :cond_d

    .line 1948
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    const-string v19, "Skipping null rac-subnet!"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1944
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1952
    :cond_d
    invoke-static {v15}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4Subnet(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1954
    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessSubnet(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_5

    .line 1958
    :cond_e
    invoke-static {v15}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6Subnet(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1960
    sget-object v17, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lcom/ipsec/client/IPsecConnectionState;->addRemoteAccessSubnet(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V

    goto :goto_5

    .line 1966
    :cond_f
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "invalid rac-subnet: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 1971
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v15    # "subnet":Ljava/lang/String;
    :cond_10
    const-string/jumbo v17, "rac-vendor-attr"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v13

    .line 1973
    .local v13, "racVendorAttr":[Landroid/os/Parcelable;
    if-eqz v13, :cond_12

    .line 1975
    move-object v4, v13

    .local v4, "arr$":[Landroid/os/Parcelable;
    array-length v8, v4

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_6
    if-ge v7, v8, :cond_12

    aget-object v9, v4, v7

    .line 1977
    .local v9, "p":Landroid/os/Parcelable;
    if-nez v9, :cond_11

    .line 1979
    const-string v17, "IPSC"

    const-string v18, "IPsecRemoteConnection"

    const-string v19, "Skipping null rac-vendor-attr!"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-static/range {v17 .. v20}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1975
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_11
    move-object v5, v9

    .line 1983
    check-cast v5, Landroid/os/Bundle;

    .line 1984
    .local v5, "attr":Landroid/os/Bundle;
    const-string/jumbo v17, "type"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    const-string/jumbo v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/ipsec/client/IPsecConnectionState;->addIkeConfigurationVendorAttribute(I[B)V

    goto :goto_7

    .line 1990
    .end local v4    # "arr$":[Landroid/os/Parcelable;
    .end local v5    # "attr":Landroid/os/Bundle;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "p":Landroid/os/Parcelable;
    :cond_12
    const-string/jumbo v17, "virtual-adapter-name"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setVirtualAdapterName(Ljava/lang/String;)V

    .line 1992
    const-string/jumbo v17, "virtual-adapter-mtu"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setVirtualAdapterMTU(I)V

    .line 1993
    const-string/jumbo v17, "eap-reauth-data"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ipsec/client/IPsecConnectionState;->setEapReAuthData([B)V

    .line 1995
    const/16 v17, 0x1

    return v17
.end method

.method private decodeRelayDataBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 2360
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "queryData() result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2362
    const-string/jumbo v7, "operation-id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2364
    const-string/jumbo v7, "operation-id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setOperationId(I)V

    .line 2373
    const-string/jumbo v7, "signature"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setSignature([B)V

    .line 2374
    const-string/jumbo v7, "signature-input"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setSignatureInput([B)V

    .line 2375
    const-string/jumbo v7, "signature-scheme"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setSignatureScheme(Ljava/lang/String;)V

    .line 2377
    const-string/jumbo v7, "dialog-message"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2379
    const-string/jumbo v7, "dialog-message"

    invoke-virtual {p1, v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecRelayData;->setDialogMessage(Ljava/lang/String;)V

    .line 2382
    :cond_0
    const-string/jumbo v7, "dialog-attributes"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2384
    const-string/jumbo v7, "dialog-attributes"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 2386
    .local v2, "authAttr":[Landroid/os/Parcelable;
    if-eqz v2, :cond_3

    .line 2388
    move-object v0, v2

    .local v0, "arr$":[Landroid/os/Parcelable;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    .line 2390
    .local v5, "p":Landroid/os/Parcelable;
    if-nez v5, :cond_2

    .line 2392
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "Skipping null dialog-attribute!"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2388
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2368
    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v2    # "authAttr":[Landroid/os/Parcelable;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "p":Landroid/os/Parcelable;
    :cond_1
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string/jumbo v9, "decodeRelayDataBundle(): mandatory operation-id missing"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2403
    :goto_2
    return v6

    .restart local v0    # "arr$":[Landroid/os/Parcelable;
    .restart local v2    # "authAttr":[Landroid/os/Parcelable;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "p":Landroid/os/Parcelable;
    :cond_2
    move-object v1, v5

    .line 2397
    check-cast v1, Landroid/os/Bundle;

    .line 2398
    .local v1, "attr":Landroid/os/Bundle;
    const-string/jumbo v7, "name"

    invoke-virtual {v1, v7, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v1, v8, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lcom/ipsec/client/IPsecRelayData;->addDialogAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2403
    .end local v0    # "arr$":[Landroid/os/Parcelable;
    .end local v1    # "attr":Landroid/os/Bundle;
    .end local v2    # "authAttr":[Landroid/os/Parcelable;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "p":Landroid/os/Parcelable;
    :cond_3
    const/4 v6, 0x1

    goto :goto_2
.end method

.method private doStopService()Lcom/ipsec/client/IPsecError;
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1172
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string/jumbo v11, "stopService()"

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 1174
    .local v6, "result":Lcom/ipsec/client/IPsecError;
    const/4 v4, 0x0

    .line 1175
    .local v4, "parameterBundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 1177
    .local v8, "resultBundle":Landroid/os/Bundle;
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1183
    :try_start_0
    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1187
    .local v0, "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 1188
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1190
    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1192
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1194
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ipsec/client/IPsecConnection;

    .line 1195
    .local v1, "c":Lcom/ipsec/client/IPsecConnection;
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1257
    .end local v0    # "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    .end local v1    # "c":Lcom/ipsec/client/IPsecConnection;
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :catchall_0
    move-exception v9

    :goto_1
    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1259
    const-string v10, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "stopService() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9

    .line 1188
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v9

    .line 1197
    .restart local v0    # "activeConnections":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/ipsec/client/IPsecConnection;>;"
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ipsec/client/IPsecConnection;>;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1199
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v9, :cond_1

    .line 1201
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 1202
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1257
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1259
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .local v7, "result":Lcom/ipsec/client/IPsecError;
    :goto_2
    return-object v7

    .line 1206
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_1
    :try_start_5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1207
    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .local v5, "parameterBundle":Landroid/os/Bundle;
    :try_start_6
    const-string/jumbo v9, "version"

    const-string v10, "5"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1214
    :try_start_7
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mCallback:Lcom/ipsec/client/IPsecServiceCallbackBinder;

    invoke-interface {v9, v10}, Lcom/ipsec/client/IIPsecService;->unregisterCallback(Lcom/ipsec/client/IIPsecServiceCallback;)V

    .line 1216
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v9, v5}, Lcom/ipsec/client/IIPsecService;->stopService(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v8

    .line 1226
    if-nez v8, :cond_2

    .line 1228
    :try_start_8
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 1229
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (return value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1257
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1259
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_2

    .line 1218
    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :catch_0
    move-exception v2

    .line 1220
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_9
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1221
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 1222
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1257
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1259
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_2

    .line 1234
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_2
    :try_start_a
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService(): result version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "version"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1236
    const-string/jumbo v9, "error"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1238
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 1239
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "error"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1257
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1259
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_2

    .line 1244
    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_3
    :try_start_b
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    if-eqz v9, :cond_4

    .line 1246
    sget-object v9, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    invoke-virtual {v9, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1248
    :cond_4
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    .line 1249
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    .line 1251
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1257
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1259
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "stopService() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_2

    .line 1257
    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method private encodeConnectBundle(Lcom/ipsec/client/IPsecConnection;Ljava/lang/StringBuilder;)Landroid/os/Bundle;
    .locals 37
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "errorCause"    # Ljava/lang/StringBuilder;

    .prologue
    .line 540
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 544
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v34, "version"

    const-string v35, "5"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string/jumbo v34, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getGateway()Ljava/lang/String;

    move-result-object v32

    .line 551
    .local v32, "str":Ljava/lang/String;
    if-nez v32, :cond_1

    .line 553
    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_GW_ADDRESS:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const/4 v5, 0x0

    .line 987
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v5

    .line 556
    .restart local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v34, "gateway"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v34, v0

    if-nez v34, :cond_3

    .line 563
    const-string/jumbo v34, "subnet-type"

    sget-object v35, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IPVersion;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getInternalSubnets()Ljava/util/Vector;

    move-result-object v33

    .line 574
    .local v33, "subnetV":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 575
    .local v10, "contents":[Ljava/lang/String;
    if-eqz v33, :cond_4

    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v34

    if-lez v34, :cond_4

    .line 577
    invoke-virtual/range {v33 .. v33}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v10, v0, [Ljava/lang/String;

    .line 578
    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 590
    :cond_2
    :goto_2
    const-string/jumbo v34, "internal-subnet"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getInterfaces()Ljava/util/Vector;

    move-result-object v17

    .line 595
    .local v17, "ifaceV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecNetworkInterface;>;"
    if-nez v17, :cond_6

    .line 597
    const-string/jumbo v34, "interface"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 613
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v34

    if-nez v34, :cond_8

    .line 615
    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_HOST_AUTHENTICATION:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    const/4 v5, 0x0

    goto :goto_0

    .line 568
    .end local v10    # "contents":[Ljava/lang/String;
    .end local v17    # "ifaceV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecNetworkInterface;>;"
    .end local v33    # "subnetV":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v34, "subnet-type"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IPVersion;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 580
    .restart local v10    # "contents":[Ljava/lang/String;
    .restart local v33    # "subnetV":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v34, v0

    sget-object v35, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_5

    .line 582
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v10, v0, [Ljava/lang/String;

    .line 583
    const/16 v34, 0x0

    new-instance v35, Ljava/lang/String;

    const-string v36, "0.0.0.0/0"

    invoke-direct/range {v35 .. v36}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v35, v10, v34

    goto :goto_2

    .line 585
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v34, v0

    sget-object v35, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_2

    .line 587
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v10, v0, [Ljava/lang/String;

    .line 588
    const/16 v34, 0x0

    new-instance v35, Ljava/lang/String;

    const-string v36, "::/0"

    invoke-direct/range {v35 .. v36}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v35, v10, v34

    goto/16 :goto_2

    .line 601
    .restart local v17    # "ifaceV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecNetworkInterface;>;"
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v16, v0

    .line 602
    .local v16, "ifaceB":[Landroid/os/Bundle;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_7

    .line 604
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ipsec/client/IPsecNetworkInterface;

    .line 605
    .local v15, "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    aput-object v34, v16, v13

    .line 606
    aget-object v34, v16, v13

    const-string/jumbo v35, "name"

    invoke-virtual {v15}, Lcom/ipsec/client/IPsecNetworkInterface;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    aget-object v34, v16, v13

    const-string/jumbo v35, "precedence"

    invoke-virtual {v15}, Lcom/ipsec/client/IPsecNetworkInterface;->getPrecedence()I

    move-result v36

    invoke-virtual/range {v34 .. v36}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 602
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 609
    .end local v15    # "iface":Lcom/ipsec/client/IPsecNetworkInterface;
    :cond_7
    const-string/jumbo v34, "interface"

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_3

    .line 619
    .end local v13    # "i":I
    .end local v16    # "ifaceB":[Landroid/os/Bundle;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PRE_SHARED:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_9

    .line 622
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPreSharedKey()Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_b

    .line 624
    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PRESHARED_KEY:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 629
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->EAP:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_a

    .line 632
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_b

    .line 635
    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_EAP_METHOD:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 639
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->PUBLIC_KEY:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_b

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v34

    if-nez v34, :cond_b

    .line 644
    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_CERTIFICATE:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 648
    :cond_b
    const-string/jumbo v34, "host-authentication"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$HostAuthentication;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string/jumbo v34, "user-authentication"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isUserAuthentication()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getTunnelMode()Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v34

    if-nez v34, :cond_c

    .line 658
    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_TUNNEL_MODE:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 661
    :cond_c
    const-string/jumbo v34, "tunnel-mode"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getTunnelMode()Lcom/ipsec/client/IPsecConnection$TunnelMode;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$TunnelMode;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string/jumbo v34, "disable-split-tunneling"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isSplitTunnelingDisabled()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 669
    const-string/jumbo v34, "disable-ikev2-fragmentation"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isIkev2FragmentationDisabled()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 673
    const-string/jumbo v34, "ikev2-fragmentation-limit"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkev2FragmentationLimit()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecGroups()Ljava/util/Vector;

    move-result-object v29

    .line 678
    .local v29, "ipsecGroupV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecGroup;>;"
    if-eqz v29, :cond_e

    .line 680
    invoke-virtual/range {v29 .. v29}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 681
    .local v28, "ipsecGroupA":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_d

    .line 683
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IPsecGroup;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v28, v13

    .line 681
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 685
    :cond_d
    const-string/jumbo v34, "ipsec-group"

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 689
    .end local v13    # "i":I
    .end local v28    # "ipsecGroupA":[Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIPsecLifeType()Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v34

    if-nez v34, :cond_f

    .line 691
    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_IPSEC_LIFETIME:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 694
    :cond_f
    const-string/jumbo v34, "ipsec-life-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIPsecLifeType()Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IPsecLifeType;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string/jumbo v34, "ipsec-life-value"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIPsecLifeValue()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecEncryptions()Ljava/util/Vector;

    move-result-object v27

    .line 701
    .local v27, "ipsecEncryptionV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecEncryption;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    .line 702
    .local v26, "ipsecEncryptionA":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_10

    .line 704
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v26, v13

    .line 702
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 706
    :cond_10
    const-string/jumbo v34, "ipsec-encryption"

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecIntegrities()Ljava/util/Vector;

    move-result-object v31

    .line 711
    .local v31, "ipsecIntegrityV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 712
    .local v30, "ipsecIntegrityA":[Ljava/lang/String;
    const/4 v13, 0x0

    :goto_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_11

    .line 714
    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v30, v13

    .line 712
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 716
    :cond_11
    const-string/jumbo v34, "ipsec-integrity"

    move-object/from16 v0, v34

    move-object/from16 v1, v30

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllGroups()Ljava/util/Vector;

    move-result-object v21

    .line 720
    .local v21, "ikeGroupV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeGroup;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 721
    .local v20, "ikeGroupA":[Ljava/lang/String;
    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_12

    .line 723
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IkeGroup;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v20, v13

    .line 721
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 725
    :cond_12
    const-string/jumbo v34, "group"

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 728
    const-string/jumbo v34, "ike-life"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkeLife()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 731
    const-string/jumbo v34, "ike-version"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkeVersion()Lcom/ipsec/client/IPsecConnection$IkeVersion;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IkeVersion;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v34, "aggressive-mode"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isAggressiveMode()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 737
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIkeEncryptions()Ljava/util/Vector;

    move-result-object v19

    .line 739
    .local v19, "ikeEncryptionV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeEncryption;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 740
    .local v18, "ikeEncryptionA":[Ljava/lang/String;
    const/4 v13, 0x0

    :goto_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_13

    .line 742
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v18, v13

    .line 740
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 744
    :cond_13
    const-string/jumbo v34, "ike-encryption"

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllIkeIntegrities()Ljava/util/Vector;

    move-result-object v23

    .line 748
    .local v23, "ikeIntegrityV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeIntegrity;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 749
    .local v22, "ikeIntegrityA":[Ljava/lang/String;
    const/4 v13, 0x0

    :goto_a
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    if-ge v13, v0, :cond_14

    .line 751
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->name()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v22, v13

    .line 749
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 753
    :cond_14
    const-string/jumbo v34, "ike-integrity"

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 756
    const-string/jumbo v34, "mobike"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isMobike()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 759
    const-string/jumbo v34, "ike-window-size"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getIkeWindowSize()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 762
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v34

    if-nez v34, :cond_15

    .line 764
    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_OWN_IDENTITY:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 767
    :cond_15
    const-string/jumbo v34, "own-identity-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IdentityType;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string/jumbo v34, "own-identity"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getOwnIdentity()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v34

    if-eqz v34, :cond_16

    .line 776
    const-string/jumbo v34, "second-own-identity-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IdentityType;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string/jumbo v34, "second-own-identity"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondOwnIdentity()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondUsername()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_17

    .line 786
    const-string/jumbo v34, "second-username"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondUsername()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string/jumbo v34, "second-password"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondPassword()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentity()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_18

    .line 797
    const-string/jumbo v34, "remote-identity-type"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$IdentityType;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string/jumbo v34, "remote-identity-enforce"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentityEnforce()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 801
    const-string/jumbo v34, "remote-identity"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRemoteIdentity()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_18
    const-string/jumbo v34, "username"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getUsername()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string/jumbo v34, "password"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPassword()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthPassword()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_19

    .line 813
    const-string/jumbo v34, "eap-reauth-password"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthPassword()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthData()[B

    move-result-object v34

    if-eqz v34, :cond_1b

    .line 819
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthData()[B

    move-result-object v34

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/ipsec/client/IPsecClient;->checkSize(I)Z

    move-result v34

    if-nez v34, :cond_1a

    .line 821
    sget-object v34, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_EAP_REAUTH_DATA:Lcom/ipsec/client/IPsecError;

    invoke-virtual/range {v34 .. v34}, Lcom/ipsec/client/IPsecError;->name()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 826
    :cond_1a
    const-string/jumbo v34, "eap-reauth-data"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapReAuthData()[B

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 831
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->isHybridMode()Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 833
    const-string/jumbo v34, "hybrid-mode"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 837
    :cond_1c
    const-string/jumbo v34, "pre-shared-key"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPreSharedKey()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string/jumbo v34, "eap-methods"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$EapMethod;->maskValue()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 843
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v34

    sget-object v35, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_1d

    .line 846
    const-string/jumbo v34, "second-eap-method"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getSecondEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$EapMethod;->maskValue()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 851
    :cond_1d
    const-string/jumbo v34, "dpd-timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getDpdTimeout()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 854
    const-string/jumbo v34, "natt-keepalive-timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getNattKeepaliveTimeout()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 858
    const-string v34, "connection-timeout"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getConnectTimeout()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 861
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPMTULimit()I

    move-result v34

    if-eqz v34, :cond_1e

    .line 863
    const-string/jumbo v34, "pmtu-limit"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPMTULimit()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllCaCertificateDatas()Ljava/util/Vector;

    move-result-object v7

    .line 868
    .local v7, "caData":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    if-eqz v7, :cond_20

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v34

    if-lez v34, :cond_20

    .line 870
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v6, v0, [Landroid/os/Parcelable;

    .line 871
    .local v6, "caArray":[Landroid/os/Parcelable;
    const/4 v13, 0x0

    :goto_b
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_1f

    .line 873
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 874
    .local v4, "b":Landroid/os/Bundle;
    const-string/jumbo v35, "data"

    invoke-virtual {v7, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 875
    aput-object v4, v6, v13

    .line 871
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 877
    .end local v4    # "b":Landroid/os/Bundle;
    :cond_1f
    const-string v34, "ca-certificate"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 885
    .end local v6    # "caArray":[Landroid/os/Parcelable;
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllImCertificateDatas()Ljava/util/Vector;

    move-result-object v25

    .line 886
    .local v25, "imData":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    if-eqz v25, :cond_27

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v34

    if-lez v34, :cond_27

    .line 888
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v24, v0

    .line 889
    .local v24, "imArray":[Landroid/os/Parcelable;
    const/4 v13, 0x0

    :goto_d
    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_21

    .line 891
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 892
    .restart local v4    # "b":Landroid/os/Bundle;
    const-string/jumbo v35, "data"

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 893
    aput-object v4, v24, v13

    .line 889
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 881
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v24    # "imArray":[Landroid/os/Parcelable;
    .end local v25    # "imData":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_20
    const-string v34, "ca-certificate"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_c

    .line 895
    .restart local v24    # "imArray":[Landroid/os/Parcelable;
    .restart local v25    # "imData":Ljava/util/Vector;, "Ljava/util/Vector<[B>;"
    :cond_21
    const-string/jumbo v34, "im-certificate"

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 903
    .end local v24    # "imArray":[Landroid/os/Parcelable;
    :goto_e
    const-string v34, "certificate"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getCertificateData()[B

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 907
    const-string/jumbo v34, "private-key"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyData()[B

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 910
    const-string/jumbo v34, "private-key-format"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getPrivateKeyFormat()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v34

    if-nez v34, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_25

    .line 918
    :cond_22
    const/4 v11, 0x0

    .line 920
    .local v11, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_28

    .line 923
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v2, v0, [Ljava/lang/String;

    .line 930
    .local v2, "addresses":[Ljava/lang/String;
    :goto_f
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_23

    .line 932
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "count":I
    .local v12, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv4Address()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v2, v11

    move v11, v12

    .line 934
    .end local v12    # "count":I
    .restart local v11    # "count":I
    :cond_23
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_24

    .line 936
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "count":I
    .restart local v12    # "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getRequestedRacIPv6Address()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v2, v11

    move v11, v12

    .line 939
    .end local v12    # "count":I
    .restart local v11    # "count":I
    :cond_24
    const-string/jumbo v34, "request-rac-ip"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 943
    .end local v2    # "addresses":[Ljava/lang/String;
    .end local v11    # "count":I
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_26

    .line 945
    const-string/jumbo v34, "virtual-adapter-name"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :cond_26
    const-string/jumbo v34, "virtual-adapter-conf-method"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterConfiguration()Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->name()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string/jumbo v34, "global-dns-conf"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getGlobalDnsConfiguration()Z

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 958
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAllRequestIkeCfgAttributes()Ljava/util/Vector;

    move-result-object v9

    .line 960
    .local v9, "cfgAttrsV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    if-eqz v9, :cond_2a

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v34

    if-lez v34, :cond_2a

    .line 962
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v8, v0, [Landroid/os/Bundle;

    .line 963
    .local v8, "cfgAttrsB":[Landroid/os/Bundle;
    const/4 v13, 0x0

    .line 964
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_29

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    .line 966
    .local v3, "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    aput-object v34, v8, v13

    .line 967
    aget-object v34, v8, v13

    const-string/jumbo v35, "type"

    invoke-virtual {v3}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getType()I

    move-result v36

    invoke-virtual/range {v34 .. v36}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 968
    aget-object v34, v8, v13

    const-string/jumbo v35, "value"

    invoke-virtual {v3}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getData()[B

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 969
    add-int/lit8 v13, v13, 0x1

    .line 970
    goto :goto_10

    .line 899
    .end local v3    # "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    .end local v8    # "cfgAttrsB":[Landroid/os/Bundle;
    .end local v9    # "cfgAttrsV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_27
    const-string/jumbo v34, "im-certificate"

    const/16 v35, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_e

    .line 927
    .restart local v11    # "count":I
    :cond_28
    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v2, v0, [Ljava/lang/String;

    .restart local v2    # "addresses":[Ljava/lang/String;
    goto/16 :goto_f

    .line 971
    .end local v2    # "addresses":[Ljava/lang/String;
    .end local v11    # "count":I
    .restart local v8    # "cfgAttrsB":[Landroid/os/Bundle;
    .restart local v9    # "cfgAttrsV":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_29
    const-string/jumbo v34, "request-rac-vendor-attr"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 975
    .end local v8    # "cfgAttrsB":[Landroid/os/Bundle;
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getCertCheckRevocation()Z

    move-result v34

    if-eqz v34, :cond_2b

    .line 977
    const-string v34, "cert-check-revocation"

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 981
    :cond_2b
    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAlgorithmSecurityStrength()I

    move-result v34

    if-lez v34, :cond_0

    .line 983
    const-string v34, "algorithm-security-strength"

    invoke-virtual/range {p1 .. p1}, Lcom/ipsec/client/IPsecConnection;->getAlgorithmSecurityStrength()I

    move-result v35

    move-object/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private encodeRelayData(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    .line 994
    const/4 v5, 0x0

    .line 996
    .local v5, "operationId":I
    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getOperationId()I

    move-result v5

    .line 997
    if-nez v5, :cond_0

    .line 999
    const/4 v6, 0x0

    .line 1036
    :goto_0
    return v6

    .line 1002
    :cond_0
    const-string/jumbo v6, "operation-id"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1004
    const-string/jumbo v6, "signature"

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getSignature()[B

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1008
    const-string/jumbo v6, "signature-input"

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getSignatureInput()[B

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1012
    const-string/jumbo v6, "signature-scheme"

    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getSignatureScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p2}, Lcom/ipsec/client/IPsecRelayData;->getDialogAttributes()Ljava/util/Vector;

    move-result-object v1

    .line 1018
    .local v1, "authAttrs":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1020
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Landroid/os/Bundle;

    .line 1021
    .local v2, "authAttrsB":[Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1023
    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;

    .line 1025
    .local v0, "attr":Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    aput-object v6, v2, v3

    .line 1026
    aget-object v6, v2, v3

    const-string/jumbo v7, "name"

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    aget-object v6, v2, v3

    const-string/jumbo v7, "value"

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;->getAttributeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    add-int/lit8 v3, v3, 0x1

    .line 1029
    goto :goto_1

    .line 1031
    .end local v0    # "attr":Lcom/ipsec/client/IPsecRelayData$AuthenticationDialogAttribute;
    :cond_1
    const-string/jumbo v6, "dialog-attributes"

    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1036
    .end local v2    # "authAttrsB":[Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ipsec/client/IPsecClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 354
    const-class v1, Lcom/ipsec/client/IPsecClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ipsec/client/IPsecClient;->mInstance:Lcom/ipsec/client/IPsecClient;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Lcom/ipsec/client/IPsecClient;

    invoke-direct {v0, p0}, Lcom/ipsec/client/IPsecClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ipsec/client/IPsecClient;->mInstance:Lcom/ipsec/client/IPsecClient;

    .line 359
    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecClient;->mInstance:Lcom/ipsec/client/IPsecClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;
    .locals 6
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "defaultError"    # Lcom/ipsec/client/IPsecError;

    .prologue
    .line 1373
    move-object v1, p2

    .line 1377
    .local v1, "ipsecError":Lcom/ipsec/client/IPsecError;
    if-eqz p1, :cond_0

    .line 1379
    :try_start_0
    invoke-static {p1}, Lcom/ipsec/client/IPsecError;->valueOf(Ljava/lang/String;)Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1387
    :cond_0
    :goto_0
    return-object v1

    .line 1382
    :catch_0
    move-exception v0

    .line 1384
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "IPSC"

    const-string v3, "IPsecRemoteConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown IPsecError string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V
    .locals 5
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "state"    # Lcom/ipsec/client/IPsecEvent;
    .param p3, "error"    # Ljava/lang/String;
    .param p4, "ikeErrorValue"    # I

    .prologue
    .line 1339
    move-object v0, p2

    .line 1340
    .local v0, "event":Lcom/ipsec/client/IPsecEvent;
    new-instance v1, Lcom/ipsec/client/IPsecEventData;

    invoke-direct {v1}, Lcom/ipsec/client/IPsecEventData;-><init>()V

    .line 1342
    .local v1, "eventData":Lcom/ipsec/client/IPsecEventData;
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v4, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1347
    :cond_1
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ipsec/client/IIPsecListener;

    .line 1348
    .local v2, "eventListener":Lcom/ipsec/client/IIPsecListener;
    if-eqz v2, :cond_0

    .line 1353
    invoke-virtual {v1, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 1354
    invoke-virtual {v1, p3}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 1355
    invoke-virtual {v1, p4}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    .line 1357
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/ipsec/client/IPsecClient$2;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/ipsec/client/IPsecClient$2;-><init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IIPsecListener;Lcom/ipsec/client/IPsecEvent;Lcom/ipsec/client/IPsecEventData;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1366
    .local v3, "onUpdateThread":Ljava/lang/Thread;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 1367
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public checkConnection(Lcom/ipsec/client/IPsecConnection;I)Lcom/ipsec/client/IPsecError;
    .locals 12
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "timeout"    # I

    .prologue
    const/4 v11, 0x0

    .line 2755
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkConnection("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2758
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 2760
    .local v3, "result":Lcom/ipsec/client/IPsecError;
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2763
    :try_start_0
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v6, :cond_0

    .line 2765
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string v8, "checkConnection(): invalid service state"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2768
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2855
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2857
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkConnection() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .end local v3    # "result":Lcom/ipsec/client/IPsecError;
    .local v4, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v4

    .line 2773
    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v7, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2775
    const/4 v5, 0x0

    .line 2777
    .local v5, "resultBundle":Landroid/os/Bundle;
    if-nez p1, :cond_4

    .line 2779
    :try_start_2
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): null connection"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2782
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    .line 2800
    :cond_1
    :goto_1
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v6, :cond_2

    .line 2805
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .line 2806
    .local v0, "connectionId":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2807
    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "version"

    const-string v8, "5"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2811
    const-string v6, "connection-id"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2812
    const-string v6, "connection-timeout"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2816
    :try_start_3
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v6, v2}, Lcom/ipsec/client/IIPsecService;->checkConnection(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 2830
    .end local v0    # "connectionId":I
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :cond_2
    :goto_2
    :try_start_4
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v6, :cond_3

    .line 2832
    if-nez v5, :cond_6

    .line 2834
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): no result available"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2838
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 2850
    :cond_3
    :goto_3
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2855
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2857
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkConnection() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .end local v3    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .line 2784
    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v6

    if-nez v6, :cond_5

    .line 2786
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): connection not connected"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2790
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    goto :goto_1

    .line 2792
    :cond_5
    const/4 v6, 0x1

    if-ge p2, v6, :cond_1

    .line 2794
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): invalid timeout"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2797
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_1

    .line 2819
    .restart local v0    # "connectionId":I
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2821
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkConnection(): remote exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2826
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto :goto_2

    .line 2840
    .end local v0    # "connectionId":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :cond_6
    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2842
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkConnection(): result contains error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "error"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2846
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_3

    .line 2851
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2855
    .end local v5    # "resultBundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2857
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkConnection() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method public clearLog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2208
    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    const-string v5, "clearLog()"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2213
    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2216
    :try_start_0
    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v3, :cond_1

    .line 2218
    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    const-string v5, "clearLog(): failed (service not started)"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2241
    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2254
    :cond_0
    :goto_0
    return-void

    .line 2223
    :cond_1
    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2224
    .local v1, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "version"

    const-string v4, "5"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2229
    :try_start_2
    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v3, v1}, Lcom/ipsec/client/IIPsecService;->clearLog(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 2241
    .local v2, "resultBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2244
    if-nez v2, :cond_2

    .line 2246
    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    const-string v5, "clearLog(): failed (no result available)"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2231
    .end local v2    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2233
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearLog(): failed (remote exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2241
    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "parameterBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 2248
    .restart local v1    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "resultBundle":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v3, "error"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2250
    const-string v3, "IPSC"

    const-string v4, "IPsecRemoteConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearLog(): failed (error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "error"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public connect(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;
    .locals 1
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    .line 1647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ipsec/client/IPsecClient;->connect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;
    .locals 12
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "eventData"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    .line 1431
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1433
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 1434
    .local v4, "result":Lcom/ipsec/client/IPsecError;
    const/4 v3, 0x0

    .line 1435
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 1436
    .local v6, "resultBundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 1437
    .local v0, "connectionId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1439
    .local v2, "errorCause":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1442
    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    .line 1444
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 1445
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (invalid service state)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1546
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .line 1610
    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .local v5, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v5

    .line 1450
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1452
    if-nez p1, :cond_1

    .line 1454
    :try_start_2
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    .line 1455
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (null connection)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1457
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1546
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .line 1459
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v7

    if-eqz v7, :cond_2

    .line 1461
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_ALREADY_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 1462
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (already connected)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1464
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1546
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1467
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_2
    :try_start_4
    invoke-direct {p0, p1, v2}, Lcom/ipsec/client/IPsecClient;->encodeConnectBundle(Lcom/ipsec/client/IPsecConnection;Ljava/lang/StringBuilder;)Landroid/os/Bundle;

    move-result-object v3

    .line 1468
    if-nez v3, :cond_3

    .line 1470
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v7, v9}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v4

    .line 1474
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (failing parameter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1477
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1546
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1482
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_3
    :try_start_5
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v3}, Lcom/ipsec/client/IIPsecService;->connect(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 1494
    if-nez v6, :cond_4

    .line 1496
    :try_start_6
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 1497
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (no return value)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1499
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1546
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1484
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :catch_0
    move-exception v1

    .line 1486
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 1487
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (remote exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1491
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1546
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1502
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_8
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect(): result version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "version"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1504
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1506
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v7, v9}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v4

    .line 1510
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "error"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ike-error-value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ike-error-value"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1522
    :goto_1
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v4, v7, :cond_5

    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_8

    .line 1525
    :cond_5
    const-string v7, "connection-id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1526
    if-nez v0, :cond_7

    .line 1528
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 1529
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (invalid result)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1531
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1546
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1519
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_6
    :try_start_9
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    goto :goto_1

    .line 1536
    :cond_7
    invoke-virtual {p1, v0}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V

    .line 1537
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1539
    :try_start_a
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1542
    :cond_8
    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1546
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1551
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_a

    .line 1553
    if-eqz p2, :cond_9

    .line 1555
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    .line 1556
    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 1557
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 1558
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    :goto_2
    move-object v5, v4

    .line 1610
    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1540
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :catchall_0
    move-exception v7

    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v7

    .line 1542
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1546
    :catchall_2
    move-exception v7

    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1548
    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .line 1563
    :cond_9
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_2

    .line 1568
    :cond_a
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_c

    .line 1570
    if-eqz p2, :cond_b

    .line 1572
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    .line 1573
    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 1574
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 1575
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_2

    .line 1581
    :cond_b
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    const-string/jumbo v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ike-error-value"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_2

    .line 1590
    :cond_c
    if-eqz p2, :cond_d

    .line 1592
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    .line 1594
    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 1595
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 1596
    const-string/jumbo v7, "ike-error-value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_2

    .line 1602
    :cond_d
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    const-string/jumbo v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ike-error-value"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto/16 :goto_2
.end method

.method public continueConnect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;Lcom/ipsec/client/IPsecRelayData;)Lcom/ipsec/client/IPsecError;
    .locals 14
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "eventData"    # Lcom/ipsec/client/IPsecEventData;
    .param p3, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    .line 2562
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2565
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 2566
    .local v6, "result":Lcom/ipsec/client/IPsecError;
    const/4 v5, 0x0

    .line 2567
    .local v5, "parameterBundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 2568
    .local v8, "resultBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 2569
    .local v1, "connectionId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2572
    .local v3, "errorCause":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2575
    :try_start_0
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v9, :cond_0

    .line 2577
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 2578
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (invalid service state)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2675
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2677
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .line 2713
    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .local v7, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v7

    .line 2584
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v10, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2586
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v9

    if-nez v9, :cond_2

    .line 2588
    :cond_1
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    .line 2589
    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (null connection)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2591
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2675
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2677
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .line 2594
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_2
    :try_start_3
    invoke-direct {p0, p1, v3}, Lcom/ipsec/client/IPsecClient;->encodeConnectBundle(Lcom/ipsec/client/IPsecConnection;Ljava/lang/StringBuilder;)Landroid/os/Bundle;

    move-result-object v5

    .line 2595
    if-nez v5, :cond_3

    .line 2597
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v9, v11}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v6

    .line 2601
    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (failing parameter "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2604
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2675
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2677
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 2607
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v1

    .line 2608
    const-string v9, "connection-id"

    invoke-virtual {v5, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2610
    move-object/from16 v0, p3

    invoke-direct {p0, v5, v0}, Lcom/ipsec/client/IPsecClient;->encodeRelayData(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z

    move-result v4

    .line 2611
    .local v4, "ok":Z
    if-nez v4, :cond_4

    .line 2613
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    .line 2614
    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect(): encode failed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (operation id not set)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2617
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2675
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2677
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 2622
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_5
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v9, v5}, Lcom/ipsec/client/IIPsecService;->connect(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v8

    .line 2634
    if-nez v8, :cond_5

    .line 2636
    :try_start_6
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 2637
    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (no return value)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2639
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2675
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2677
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 2624
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :catch_0
    move-exception v2

    .line 2626
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_7
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 2627
    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (remote exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2631
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2675
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2677
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 2642
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_5
    :try_start_8
    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect(): result version: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "version"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2644
    const-string/jumbo v9, "error"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2646
    const-string/jumbo v9, "error"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v9, v11}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v6

    .line 2651
    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "connect(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "error"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ike-error-value: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "ike-error-value"

    invoke-virtual {v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2671
    :goto_1
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2675
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2677
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2680
    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v6, v9, :cond_9

    .line 2682
    if-eqz p2, :cond_6

    .line 2684
    sget-object v9, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTED:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    .line 2685
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 2686
    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 2687
    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    :cond_6
    :goto_2
    move-object v7, v6

    .line 2713
    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 2660
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_7
    :try_start_9
    const-string v9, "connection-id"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2661
    if-nez v1, :cond_8

    .line 2663
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 2664
    const-string v9, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "connect() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (invalid result)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9, v11, v12, v13}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2666
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2675
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2677
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "continueConnect() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v6

    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v7    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 2669
    .end local v7    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    :cond_8
    :try_start_a
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_1

    .line 2671
    .end local v4    # "ok":Z
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2675
    :catchall_1
    move-exception v9

    iget-object v10, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2677
    const-string v10, "IPSC"

    const-string v11, "IPsecRemoteConnection"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "continueConnect() = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v13}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9

    .line 2690
    .restart local v4    # "ok":Z
    :cond_9
    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_RECEIVED_EVENT:Lcom/ipsec/client/IPsecError;

    if-ne v6, v9, :cond_a

    .line 2692
    if-eqz p2, :cond_6

    .line 2694
    sget-object v9, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_MISSING_DATA:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    .line 2695
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 2696
    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 2697
    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto/16 :goto_2

    .line 2702
    :cond_a
    if-eqz p2, :cond_6

    .line 2704
    sget-object v9, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_CONNECTION_SETUP_FAILURE:Lcom/ipsec/client/IPsecEvent;

    move-object/from16 v0, p2

    iput-object v9, v0, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    .line 2706
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 2707
    const-string/jumbo v9, "error"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 2708
    const-string/jumbo v9, "ike-error-value"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto/16 :goto_2
.end method

.method public disconnect(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;
    .locals 1
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    .line 1843
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ipsec/client/IPsecClient;->disconnect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEventData;)Lcom/ipsec/client/IPsecError;
    .locals 12
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "eventData"    # Lcom/ipsec/client/IPsecEventData;

    .prologue
    .line 1678
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1679
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 1680
    .local v4, "result":Lcom/ipsec/client/IPsecError;
    const/4 v2, 0x0

    .line 1681
    .local v2, "parameterBundle":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 1682
    .local v6, "resultBundle":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 1684
    .local v0, "connectionId":I
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1687
    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    .line 1689
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 1690
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (invalid service state)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1773
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1775
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .line 1816
    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .local v5, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v5

    .line 1695
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1697
    if-nez p1, :cond_1

    .line 1699
    :try_start_2
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    .line 1700
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "disconnect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (null connection)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1702
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1773
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1775
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .line 1704
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v7

    if-nez v7, :cond_2

    .line 1706
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    .line 1707
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "disconnect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (connection not connected)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1709
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1773
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1775
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1714
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .line 1715
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/ipsec/client/IPsecConnection;->setConnectionId(I)V

    .line 1716
    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1718
    :try_start_5
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mActiveConnections:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1721
    :try_start_6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1722
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .local v3, "parameterBundle":Landroid/os/Bundle;
    :try_start_7
    const-string/jumbo v7, "version"

    const-string v9, "5"

    invoke-virtual {v3, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const-string v7, "connection-id"

    invoke-virtual {v3, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1730
    :try_start_8
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v3}, Lcom/ipsec/client/IIPsecService;->disconnect(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v6

    .line 1742
    if-nez v6, :cond_3

    .line 1744
    :try_start_9
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 1745
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "disconnect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (no return value)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1747
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1773
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1775
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1719
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :catchall_0
    move-exception v7

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v7

    .line 1769
    :catchall_1
    move-exception v7

    :goto_1
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1773
    :catchall_2
    move-exception v7

    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1775
    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "disconnect() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7

    .line 1732
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1734
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_d
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 1735
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "disconnect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (remote exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1739
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1773
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1775
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    move-object v5, v4

    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1750
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_3
    :try_start_e
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "disconnect(): result version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "version"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1752
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1754
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    invoke-direct {p0, v7, v9}, Lcom/ipsec/client/IPsecClient;->parseIPsecErrorString(Ljava/lang/String;Lcom/ipsec/client/IPsecError;)Lcom/ipsec/client/IPsecError;

    move-result-object v4

    .line 1758
    const-string v7, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "disconnect(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "error"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ike-error-value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ike-error-value"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v9, v10, v11}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1769
    :goto_2
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1773
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1775
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnect() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1778
    sget-object v7, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v4, v7, :cond_6

    .line 1780
    if-eqz p2, :cond_5

    .line 1782
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    .line 1783
    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 1784
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 1785
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    :goto_3
    move-object v2, v3

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    move-object v5, v4

    .line 1816
    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 1767
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_f
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_2

    .line 1790
    :cond_5
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_DISCONNECTED:Lcom/ipsec/client/IPsecEvent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_3

    .line 1797
    :cond_6
    if-eqz p2, :cond_7

    .line 1799
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    iput-object v7, p2, Lcom/ipsec/client/IPsecEventData;->mEvent:Lcom/ipsec/client/IPsecEvent;

    .line 1800
    invoke-virtual {p2, p1}, Lcom/ipsec/client/IPsecEventData;->setConnection(Lcom/ipsec/client/IPsecConnection;)V

    .line 1801
    const-string/jumbo v7, "error"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setError(Ljava/lang/String;)V

    .line 1802
    const-string/jumbo v7, "ike-error-value"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/ipsec/client/IPsecEventData;->setIkeErrorValue(I)V

    goto :goto_3

    .line 1808
    :cond_7
    sget-object v7, Lcom/ipsec/client/IPsecEvent;->IPSEC_EVENT_ERROR:Lcom/ipsec/client/IPsecEvent;

    const-string/jumbo v8, "error"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "ike-error-value"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/ipsec/client/IPsecClient;->sendLocalConnectionEvent(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecEvent;Ljava/lang/String;I)V

    goto :goto_3

    .line 1769
    :catchall_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method public getIPsecConnectionState(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecConnectionState;
    .locals 11
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 2017
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getIPsecConnectionState("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2022
    const/4 v0, 0x0

    .line 2024
    .local v0, "connectionId":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v6

    if-nez v6, :cond_1

    .line 2027
    :cond_0
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string/jumbo v8, "getIPsecConnectionState():  (invalid connection)"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 2103
    :goto_0
    return-object v4

    .line 2032
    :cond_1
    new-instance v4, Lcom/ipsec/client/IPsecConnectionState;

    invoke-direct {v4, p1}, Lcom/ipsec/client/IPsecConnectionState;-><init>(Lcom/ipsec/client/IPsecConnection;)V

    .line 2034
    .local v4, "state":Lcom/ipsec/client/IPsecConnectionState;
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2037
    :try_start_0
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v6, :cond_2

    .line 2039
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string/jumbo v8, "getIPsecConnectionState():  (invalid service state)"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2070
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v5

    goto :goto_0

    .line 2044
    :cond_2
    :try_start_1
    sget-object v6, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2046
    :try_start_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .line 2047
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2048
    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v7, "version"

    const-string v8, "5"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const-string v7, "connection-id"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2055
    :try_start_3
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v2}, Lcom/ipsec/client/IIPsecService;->connectionState(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 2066
    .local v3, "resultBundle":Landroid/os/Bundle;
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2070
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2073
    if-nez v3, :cond_3

    .line 2075
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string/jumbo v8, "getIPsecConnectionState():  (no return value)"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 2077
    goto :goto_0

    .line 2058
    .end local v3    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2060
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getIPsecConnectionState():  (remote exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2064
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2070
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v5

    goto/16 :goto_0

    .line 2066
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2070
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 2080
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "resultBundle":Landroid/os/Bundle;
    :cond_3
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getIPsecConnectionState(): result version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "version"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2082
    const-string/jumbo v6, "error"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2084
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getIPsecConnectionState() =  (error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "error"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 2087
    goto/16 :goto_0

    .line 2090
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/ipsec/client/IPsecClient;->decodeConnectionStateBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecConnectionState;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2093
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string/jumbo v8, "getIPsecConnectionState(): failed to decode result bundle"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v5

    .line 2096
    goto/16 :goto_0

    .line 2100
    :cond_5
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getIPsecConnectionState(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getLogReader()Lcom/ipsec/client/IPsecLogReader;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 2125
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string/jumbo v9, "getLogReader()"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2127
    const/4 v3, 0x0

    .line 2131
    .local v3, "rd":Lcom/ipsec/client/IPsecLogReader;
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2134
    :try_start_0
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v7, :cond_0

    .line 2136
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string/jumbo v9, "getLogReader(): no log available"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2156
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v6

    .line 2198
    :goto_0
    return-object v4

    .line 2140
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2141
    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v7, "version"

    const-string v8, "5"

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2146
    :try_start_2
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v7, v2}, Lcom/ipsec/client/IIPsecService;->getLog(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 2156
    .local v5, "resultBundle":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2159
    if-nez v5, :cond_1

    .line 2161
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string/jumbo v9, "getLogReader(): no log available"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    .line 2162
    goto :goto_0

    .line 2148
    .end local v5    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string/jumbo v9, "getLogReader(): no log available"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2156
    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v6

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v6

    .line 2165
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    .restart local v5    # "resultBundle":Landroid/os/Bundle;
    :cond_1
    const-string/jumbo v7, "error"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2167
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getLogReader() failed (error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "error"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    .line 2169
    goto :goto_0

    .line 2172
    :cond_2
    const-string/jumbo v7, "log-content"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2176
    :try_start_4
    const-string/jumbo v7, "log-content"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 2179
    .local v1, "logContent":[B
    if-nez v1, :cond_3

    .line 2181
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string/jumbo v9, "getLogReader(): log-content null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v6

    .line 2183
    goto/16 :goto_0

    .line 2186
    :cond_3
    new-instance v4, Lcom/ipsec/client/IPsecLogReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v7}, Lcom/ipsec/client/IPsecLogReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v3    # "rd":Lcom/ipsec/client/IPsecLogReader;
    .local v4, "rd":Lcom/ipsec/client/IPsecLogReader;
    move-object v3, v4

    .line 2196
    .end local v4    # "rd":Lcom/ipsec/client/IPsecLogReader;
    .restart local v3    # "rd":Lcom/ipsec/client/IPsecLogReader;
    goto/16 :goto_0

    .line 2191
    .end local v1    # "logContent":[B
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    move-object v4, v6

    .line 2193
    goto/16 :goto_0

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    move-object v4, v6

    .line 2198
    goto/16 :goto_0
.end method

.method public getServiceConnection()Landroid/content/ServiceConnection;
    .locals 4

    .prologue
    .line 1106
    new-instance v0, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;-><init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$1;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    .line 1107
    const-string v0, "IPSC"

    const-string v1, "IPsecRemoteConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getServiceConnection() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    return-object v0
.end method

.method public getServiceIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 1085
    sget-object v1, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ipsec/client/IPsecServiceInterface;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1088
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "IPSC"

    const-string v2, "IPsecRemoteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getServiceIntent() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    return-object v0
.end method

.method public isConnected(Lcom/ipsec/client/IPsecConnection;)Z
    .locals 11
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    const/4 v10, 0x0

    .line 2269
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isConnected("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2273
    const/4 v3, 0x0

    .line 2274
    .local v3, "result":Z
    const/4 v0, 0x0

    .line 2276
    .local v0, "connectionId":I
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2279
    :try_start_0
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v5, :cond_0

    .line 2281
    const/4 v3, 0x0

    .line 2282
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (invalid service state)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2351
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2353
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    :goto_0
    return v5

    .line 2287
    :cond_0
    :try_start_1
    sget-object v6, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2289
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v5

    if-nez v5, :cond_2

    .line 2292
    :cond_1
    const/4 v3, 0x0

    .line 2293
    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (invalid connection)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2295
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2351
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2353
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto :goto_0

    .line 2298
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .line 2299
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2300
    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v5, "version"

    const-string v7, "5"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    const-string v5, "connection-id"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2307
    :try_start_4
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v5, v2}, Lcom/ipsec/client/IIPsecService;->isConnected(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 2319
    .local v4, "resultBundle":Landroid/os/Bundle;
    if-nez v4, :cond_3

    .line 2321
    const/4 v3, 0x0

    .line 2322
    :try_start_5
    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (no return value)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2324
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2351
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2353
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto/16 :goto_0

    .line 2309
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2311
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 2312
    :try_start_6
    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (remote exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2316
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2351
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2353
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto/16 :goto_0

    .line 2327
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v4    # "resultBundle":Landroid/os/Bundle;
    :cond_3
    :try_start_7
    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isConnected(): result version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "version"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2329
    const-string/jumbo v5, "error"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2331
    const/4 v3, 0x0

    .line 2332
    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isConnected() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "error"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2335
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2351
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2353
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto/16 :goto_0

    .line 2338
    :cond_4
    :try_start_8
    const-string v5, "connected"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2340
    const/4 v3, 0x0

    .line 2341
    const-string v5, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (invalid result)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v7, v8, v9}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2343
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2351
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2353
    const-string v5, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isConnected(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v3

    goto/16 :goto_0

    .line 2346
    :cond_5
    :try_start_9
    const-string v5, "connected"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2351
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2353
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2347
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    .end local v4    # "resultBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2351
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2353
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isConnected(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public isServiceStarted()Z
    .locals 5

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1314
    :try_start_0
    iget-object v1, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1316
    const/4 v0, 0x1

    .line 1325
    .local v0, "isStarted":Z
    :goto_0
    iget-object v1, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1328
    const-string v1, "IPSC"

    const-string v2, "IPsecRemoteConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isServiceStarted() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1330
    return v0

    .line 1320
    .end local v0    # "isStarted":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isStarted":Z
    goto :goto_0

    .line 1325
    .end local v0    # "isStarted":Z
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public queryData(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecRelayData;)Lcom/ipsec/client/IPsecError;
    .locals 9
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    const/4 v8, 0x0

    .line 2431
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryData("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2435
    const/4 v0, 0x0

    .line 2437
    .local v0, "connectionId":I
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2440
    :try_start_0
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v4, :cond_0

    .line 2442
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    const-string/jumbo v6, "queryData():  (invalid service state)"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2444
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2481
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2514
    :goto_0
    return-object v4

    .line 2447
    :cond_0
    :try_start_1
    sget-object v5, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2449
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v4

    if-nez v4, :cond_2

    .line 2452
    :cond_1
    const-string v4, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    const-string/jumbo v7, "queryData():  (invalid connection)"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2454
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2481
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 2457
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .line 2458
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2459
    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v4, "version"

    const-string v6, "5"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    const-string v4, "connection-id"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2466
    :try_start_4
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v4, v2}, Lcom/ipsec/client/IIPsecService;->connectionQuery(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 2477
    .local v3, "resultBundle":Landroid/os/Bundle;
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2481
    iget-object v4, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2484
    if-nez v3, :cond_3

    .line 2486
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    const-string/jumbo v6, "queryData():  (no return value)"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2488
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto :goto_0

    .line 2469
    .end local v3    # "resultBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2471
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string v4, "IPSC"

    const-string v6, "IPsecRemoteConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queryData():  (remote exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v7, v8}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2475
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2481
    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 2477
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2481
    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4

    .line 2492
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "resultBundle":Landroid/os/Bundle;
    :cond_3
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryData(): result version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "version"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2494
    const-string/jumbo v4, "error"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2496
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryData() =  (error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "error"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2499
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0

    .line 2502
    :cond_4
    invoke-direct {p0, v3, p2}, Lcom/ipsec/client/IPsecClient;->decodeRelayDataBundle(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2504
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    const-string/jumbo v6, "getIPsecConnectionState(): failed to decode result bundle"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2507
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_FAILED:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0

    .line 2511
    :cond_5
    const-string v4, "IPSC"

    const-string v5, "IPsecRemoteConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "queryData(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2514
    sget-object v4, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_0
.end method

.method public sendKeepalive(Lcom/ipsec/client/IPsecConnection;)Lcom/ipsec/client/IPsecError;
    .locals 12
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    const/4 v11, 0x0

    .line 2887
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendKeepalive("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2889
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 2891
    .local v3, "result":Lcom/ipsec/client/IPsecError;
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2894
    :try_start_0
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v6, :cond_0

    .line 2896
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    const-string/jumbo v8, "sendKeepalive(): invalid service state"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2899
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2978
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2980
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendKeepalive() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .end local v3    # "result":Lcom/ipsec/client/IPsecError;
    .local v4, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v4

    .line 2904
    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v7, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2906
    const/4 v5, 0x0

    .line 2908
    .local v5, "resultBundle":Landroid/os/Bundle;
    if-nez p1, :cond_4

    .line 2910
    :try_start_2
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string/jumbo v9, "sendKeepalive(): null connection"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2913
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    .line 2924
    :cond_1
    :goto_1
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v6, :cond_2

    .line 2929
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .line 2930
    .local v0, "connectionId":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2931
    .local v2, "parameterBundle":Landroid/os/Bundle;
    const-string/jumbo v6, "version"

    const-string v8, "5"

    invoke-virtual {v2, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2935
    const-string v6, "connection-id"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2939
    :try_start_3
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v6, v2}, Lcom/ipsec/client/IIPsecService;->sendKeepalive(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 2953
    .end local v0    # "connectionId":I
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :cond_2
    :goto_2
    :try_start_4
    sget-object v6, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v3, v6, :cond_3

    .line 2955
    if-nez v5, :cond_5

    .line 2957
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string v9, "checkConnection(): no result available"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2961
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 2973
    :cond_3
    :goto_3
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2978
    iget-object v6, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2980
    const-string v6, "IPSC"

    const-string v7, "IPsecRemoteConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sendKeepalive() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v8, v9}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .end local v3    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v4    # "result":Lcom/ipsec/client/IPsecError;
    goto :goto_0

    .line 2915
    .end local v4    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v3    # "result":Lcom/ipsec/client/IPsecError;
    :cond_4
    :try_start_5
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v6

    if-nez v6, :cond_1

    .line 2917
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    const-string/jumbo v9, "sendKeepalive(): connection not connected"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2921
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    goto :goto_1

    .line 2942
    .restart local v0    # "connectionId":I
    .restart local v2    # "parameterBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2944
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendKeepalive(): remote exception = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2949
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto :goto_2

    .line 2963
    .end local v0    # "connectionId":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "parameterBundle":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v6, "error"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2965
    const-string v6, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendKeepalive(): result contains error = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "error"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v10}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2969
    sget-object v3, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_3

    .line 2974
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2978
    .end local v5    # "resultBundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v6

    iget-object v7, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2980
    const-string v7, "IPSC"

    const-string v8, "IPsecRemoteConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendKeepalive() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9, v10}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method public setQueryData(Lcom/ipsec/client/IPsecConnection;Lcom/ipsec/client/IPsecRelayData;)Lcom/ipsec/client/IPsecError;
    .locals 13
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;
    .param p2, "data"    # Lcom/ipsec/client/IPsecRelayData;

    .prologue
    .line 3013
    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setQueryData("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3016
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 3018
    .local v5, "result":Lcom/ipsec/client/IPsecError;
    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3021
    :try_start_0
    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v8, :cond_0

    .line 3023
    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    const-string/jumbo v10, "setQueryData(): invalid service state"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3025
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3123
    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3125
    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setQueryData() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v5

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .local v6, "result":Lcom/ipsec/client/IPsecError;
    :goto_0
    return-object v6

    .line 3030
    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    :cond_0
    :try_start_1
    sget-object v9, Lcom/ipsec/client/IPsecClient;->mConnectionLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3032
    const/4 v3, 0x0

    .line 3033
    .local v3, "parameterBundle":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 3035
    .local v7, "resultBundle":Landroid/os/Bundle;
    if-nez p1, :cond_6

    .line 3037
    :try_start_2
    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string/jumbo v11, "setQueryData(): null connection"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3039
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    .line 3056
    :cond_1
    :goto_1
    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v5, v8, :cond_3

    .line 3061
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v0

    .line 3062
    .local v0, "connectionId":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3063
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .local v4, "parameterBundle":Landroid/os/Bundle;
    :try_start_3
    const-string/jumbo v8, "version"

    const-string v10, "5"

    invoke-virtual {v4, v8, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    const-string v8, "connection-id"

    invoke-virtual {v4, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3069
    invoke-direct {p0, v4, p2}, Lcom/ipsec/client/IPsecClient;->encodeRelayData(Landroid/os/Bundle;Lcom/ipsec/client/IPsecRelayData;)Z

    move-result v2

    .line 3070
    .local v2, "ok":Z
    if-nez v2, :cond_2

    .line 3072
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    .line 3073
    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setQueryData(): encode failed = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (operation id not set)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    move-object v3, v4

    .line 3080
    .end local v0    # "connectionId":I
    .end local v2    # "ok":Z
    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    :cond_3
    :try_start_4
    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v5, v8, :cond_4

    .line 3084
    :try_start_5
    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    invoke-interface {v8, v3}, Lcom/ipsec/client/IIPsecService;->setQueryData(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v7

    .line 3097
    :cond_4
    :goto_2
    :try_start_6
    sget-object v8, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v5, v8, :cond_5

    .line 3099
    if-nez v7, :cond_8

    .line 3101
    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string/jumbo v11, "setQueryData(): no result available"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3105
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    .line 3118
    :cond_5
    :goto_3
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3123
    iget-object v8, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3125
    const-string v8, "IPSC"

    const-string v9, "IPsecRemoteConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setQueryData() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10, v11}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v5

    .end local v5    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v6    # "result":Lcom/ipsec/client/IPsecError;
    goto/16 :goto_0

    .line 3041
    .end local v6    # "result":Lcom/ipsec/client/IPsecError;
    .restart local v5    # "result":Lcom/ipsec/client/IPsecError;
    :cond_6
    :try_start_7
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getConnectionId()I

    move-result v8

    if-nez v8, :cond_7

    .line 3043
    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string/jumbo v11, "setQueryData(): connection not connected"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3047
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_1

    .line 3049
    :cond_7
    if-nez p2, :cond_1

    .line 3051
    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    const-string/jumbo v11, "setQueryData(): null data"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3053
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_INVALID_PARAMETER:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_1

    .line 3087
    :catch_0
    move-exception v1

    .line 3089
    .local v1, "e":Landroid/os/RemoteException;
    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setQueryData(): remote exception = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3093
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_2

    .line 3107
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_8
    const-string/jumbo v8, "error"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3109
    const-string v8, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setQueryData(): result contains error = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "error"

    invoke-virtual {v7, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v8, v10, v11, v12}, Lcom/ipsec/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3114
    sget-object v5, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_ERROR:Lcom/ipsec/client/IPsecError;

    goto/16 :goto_3

    .line 3119
    :catchall_0
    move-exception v8

    :goto_4
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3123
    .end local v3    # "parameterBundle":Landroid/os/Bundle;
    .end local v7    # "resultBundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v8

    iget-object v9, p0, Lcom/ipsec/client/IPsecClient;->mServiceReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3125
    const-string v9, "IPSC"

    const-string v10, "IPsecRemoteConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setQueryData() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v8

    .line 3119
    .restart local v0    # "connectionId":I
    .restart local v4    # "parameterBundle":Landroid/os/Bundle;
    .restart local v7    # "resultBundle":Landroid/os/Bundle;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "parameterBundle":Landroid/os/Bundle;
    .restart local v3    # "parameterBundle":Landroid/os/Bundle;
    goto :goto_4
.end method

.method public setServiceListener(Lcom/ipsec/client/IIPsecListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/ipsec/client/IIPsecListener;

    .prologue
    .line 1057
    const-string v0, "IPSC"

    const-string v1, "IPsecRemoteConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setServiceListener("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    if-eqz p1, :cond_1

    .line 1061
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0
.end method

.method public startService()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1128
    const-string v2, "IPSC"

    const-string v3, "IPsecRemoteConnection"

    const-string/jumbo v4, "startService()"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    .line 1131
    .local v1, "result":Lcom/ipsec/client/IPsecError;
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1134
    :try_start_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mIPsecService:Lcom/ipsec/client/IIPsecService;

    if-nez v2, :cond_0

    .line 1136
    new-instance v2, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;-><init>(Lcom/ipsec/client/IPsecClient;Lcom/ipsec/client/IPsecClient$1;)V

    iput-object v2, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    .line 1137
    sget-object v2, Lcom/ipsec/client/IPsecClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mIPsecServiceConnection:Lcom/ipsec/client/IPsecClient$IPsecServiceConnection;

    invoke-static {v2, v3}, Lcom/ipsec/client/IPsecServiceInterface;->connectService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1140
    const-string v2, "IPSC"

    const-string v3, "IPsecRemoteConnection"

    const-string/jumbo v4, "startService(): Failed to connect to IPsecService"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    sget-object v1, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_CANNOT_CONNECT:Lcom/ipsec/client/IPsecError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    :cond_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1151
    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-eq v1, v2, :cond_2

    .line 1153
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 1155
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IIPsecListener;

    .line 1156
    .local v0, "listener":Lcom/ipsec/client/IIPsecListener;
    if-eqz v0, :cond_1

    .line 1158
    invoke-interface {v0, v1, v7}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    .line 1161
    .end local v0    # "listener":Lcom/ipsec/client/IIPsecListener;
    :cond_1
    invoke-direct {p0}, Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;

    .line 1164
    :cond_2
    const-string v2, "IPSC"

    const-string v3, "IPsecRemoteConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startService() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1165
    return-void

    .line 1148
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecClient;->mServiceWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public stopService()Lcom/ipsec/client/IPsecError;
    .locals 4

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/ipsec/client/IPsecClient;->doStopService()Lcom/ipsec/client/IPsecError;

    move-result-object v1

    .line 1283
    .local v1, "result":Lcom/ipsec/client/IPsecError;
    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_OK:Lcom/ipsec/client/IPsecError;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 1285
    iget-object v2, p0, Lcom/ipsec/client/IPsecClient;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IIPsecListener;

    .line 1286
    .local v0, "listener":Lcom/ipsec/client/IIPsecListener;
    if-eqz v0, :cond_0

    .line 1288
    sget-object v2, Lcom/ipsec/client/IPsecError;->IPSEC_REMOTE_SERVICE_NOT_CONNECTED:Lcom/ipsec/client/IPsecError;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/ipsec/client/IIPsecListener;->onServiceStatusChanged(Lcom/ipsec/client/IPsecError;Lcom/ipsec/client/IPsecEventData;)V

    .line 1295
    .end local v0    # "listener":Lcom/ipsec/client/IIPsecListener;
    :cond_0
    return-object v1
.end method
