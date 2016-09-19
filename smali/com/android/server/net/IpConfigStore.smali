.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/IpConfigStore$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x2

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field private static final PROXY_PASSWORD_KEY:Ljava/lang/String; = "proxyPassword"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final PROXY_USERNAME_KEY:Ljava/lang/String; = "proxyUsername"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/IpConfigStore;Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/IpConfigStore;
    .param p1, "x1"    # Ljava/io/DataOutputStream;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/IpConfigStore;->writeConfig(Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z

    move-result v0

    return v0
.end method

.method private writeConfig(Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z
    .locals 11
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .param p2, "configKey"    # I
    .param p3, "config"    # Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v8, 0x0

    .line 74
    .local v8, "written":Z
    :try_start_0
    sget-object v9, Lcom/android/server/net/IpConfigStore$2;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    iget-object v10, p3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v10}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 108
    const-string v9, "Ignore invalid ip assignment while writing"

    invoke-virtual {p0, v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 112
    :goto_0
    :pswitch_0
    sget-object v9, Lcom/android/server/net/IpConfigStore$2;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    iget-object v10, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v10}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 152
    const-string v9, "Ignore invalid proxy settings while writing"

    invoke-virtual {p0, v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 156
    :goto_1
    :pswitch_1
    if-eqz v8, :cond_0

    .line 157
    const-string/jumbo v9, "id"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_2
    const-string/jumbo v9, "eos"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 165
    return v8

    .line 76
    :pswitch_2
    :try_start_1
    const-string/jumbo v9, "ipAssignment"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 77
    iget-object v9, p3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 78
    iget-object v7, p3, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 79
    .local v7, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    if-eqz v7, :cond_3

    .line 80
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v9, :cond_1

    .line 81
    iget-object v4, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 82
    .local v4, "ipAddress":Landroid/net/LinkAddress;
    const-string/jumbo v9, "linkAddress"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 86
    .end local v4    # "ipAddress":Landroid/net/LinkAddress;
    :cond_1
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v9, :cond_2

    .line 87
    const-string/jumbo v9, "gateway"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 88
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 92
    :cond_2
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 93
    .local v3, "inetAddr":Ljava/net/InetAddress;
    const-string/jumbo v9, "dns"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 160
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "inetAddr":Ljava/net/InetAddress;
    .end local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure in writing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 97
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_3
    const/4 v8, 0x1

    .line 98
    goto/16 :goto_0

    .line 100
    .end local v7    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :pswitch_3
    :try_start_2
    const-string/jumbo v9, "ipAssignment"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 101
    iget-object v9, p3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 102
    const/4 v8, 0x1

    .line 103
    goto/16 :goto_0

    .line 114
    :pswitch_4
    iget-object v6, p3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 115
    .local v6, "proxyProperties":Landroid/net/ProxyInfo;
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "exclusionList":Ljava/lang/String;
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 117
    iget-object v9, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    const-string/jumbo v9, "proxyHost"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v9, "proxyPort"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getPort()I

    move-result v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 122
    if-eqz v1, :cond_4

    .line 123
    const-string/jumbo v9, "exclusionList"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 127
    :cond_4
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 128
    const-string/jumbo v9, "proxyUsername"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v9, "proxyPassword"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 133
    :cond_5
    const/4 v8, 0x1

    .line 134
    goto/16 :goto_1

    .line 136
    .end local v1    # "exclusionList":Ljava/lang/String;
    .end local v6    # "proxyProperties":Landroid/net/ProxyInfo;
    :pswitch_5
    iget-object v5, p3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 137
    .local v5, "proxyPacProperties":Landroid/net/ProxyInfo;
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 138
    iget-object v9, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v9, "proxyPac"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 141
    const/4 v8, 0x1

    .line 142
    goto/16 :goto_1

    .line 144
    .end local v5    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_6
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 145
    iget-object v9, p3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    const/4 v8, 0x1

    .line 147
    goto/16 :goto_1

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string v0, "IpConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 347
    const-string v0, "IpConfigStore"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method public readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 28
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    .line 183
    .local v19, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    const/4 v14, 0x0

    .line 185
    .local v14, "in":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v15, Ljava/io/DataInputStream;

    new-instance v26, Ljava/io/BufferedInputStream;

    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v26 .. v27}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    .end local v14    # "in":Ljava/io/DataInputStream;
    .local v15, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v25

    .line 188
    .local v25, "version":I
    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 189
    const-string v26, "Bad version on IP configuration file, ignore read"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    const/16 v19, 0x0

    .line 336
    .end local v19    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v15, :cond_0

    .line 338
    :try_start_2
    invoke-virtual {v15}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v14, v15

    .line 343
    .end local v15    # "in":Ljava/io/DataInputStream;
    .end local v25    # "version":I
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-object v19

    .line 303
    .end local v14    # "in":Ljava/io/DataInputStream;
    .local v4, "proxyHost":Ljava/lang/String;
    .local v5, "proxyPort":I
    .local v6, "proxyUsername":Ljava/lang/String;
    .local v7, "proxyPassword":Ljava/lang/String;
    .local v8, "exclusionList":Ljava/lang/String;
    .local v9, "config":Landroid/net/IpConfiguration;
    .local v13, "id":I
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .local v16, "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .local v17, "key":Ljava/lang/String;
    .restart local v19    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    .local v20, "pacFileUrl":Ljava/lang/String;
    .local v22, "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .local v24, "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v25    # "version":I
    :pswitch_0
    if-eqz v6, :cond_17

    if-eqz v7, :cond_17

    .line 304
    :try_start_3
    new-instance v3, Landroid/net/ProxyInfo;

    invoke-direct/range {v3 .. v8}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .local v3, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_2
    move-object/from16 v0, v22

    iput-object v0, v9, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 309
    iput-object v3, v9, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 194
    .end local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    .end local v6    # "proxyUsername":Ljava/lang/String;
    .end local v7    # "proxyPassword":Ljava/lang/String;
    .end local v8    # "exclusionList":Ljava/lang/String;
    .end local v9    # "config":Landroid/net/IpConfiguration;
    .end local v13    # "id":I
    .end local v16    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v17    # "key":Ljava/lang/String;
    .end local v20    # "pacFileUrl":Ljava/lang/String;
    .end local v22    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v24    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :cond_2
    :goto_3
    const/4 v13, -0x1

    .line 196
    .restart local v13    # "id":I
    sget-object v16, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    .line 197
    .restart local v16    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    sget-object v22, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    .line 198
    .restart local v22    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    new-instance v24, Landroid/net/StaticIpConfiguration;

    invoke-direct/range {v24 .. v24}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 199
    .restart local v24    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    const/4 v4, 0x0

    .line 200
    .restart local v4    # "proxyHost":Ljava/lang/String;
    const/16 v20, 0x0

    .line 201
    .restart local v20    # "pacFileUrl":Ljava/lang/String;
    const/4 v5, -0x1

    .line 202
    .restart local v5    # "proxyPort":I
    const/4 v8, 0x0

    .line 204
    .restart local v8    # "exclusionList":Ljava/lang/String;
    const/4 v6, 0x0

    .line 205
    .restart local v6    # "proxyUsername":Ljava/lang/String;
    const/4 v7, 0x0

    .line 208
    .restart local v7    # "proxyPassword":Ljava/lang/String;
    :goto_4
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v17

    .line 210
    .restart local v17    # "key":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v26, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 211
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    goto :goto_4

    .line 212
    :cond_3
    const-string/jumbo v26, "ipAssignment"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 213
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v16

    goto :goto_4

    .line 214
    :cond_4
    const-string/jumbo v26, "linkAddress"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 215
    new-instance v18, Landroid/net/LinkAddress;

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v26

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 217
    .local v18, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual/range {v18 .. v18}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v26, v0

    if-eqz v26, :cond_5

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v26, v0

    if-nez v26, :cond_5

    .line 219
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 273
    .end local v18    # "linkAddr":Landroid/net/LinkAddress;
    :catch_0
    move-exception v11

    .line 274
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ignore invalid address while reading"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 332
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    .end local v6    # "proxyUsername":Ljava/lang/String;
    .end local v7    # "proxyPassword":Ljava/lang/String;
    .end local v8    # "exclusionList":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    .end local v13    # "id":I
    .end local v16    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v17    # "key":Ljava/lang/String;
    .end local v20    # "pacFileUrl":Ljava/lang/String;
    .end local v22    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v24    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v25    # "version":I
    :catch_1
    move-exception v26

    move-object v14, v15

    .line 336
    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :goto_5
    if-eqz v14, :cond_1

    .line 338
    :try_start_6
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 339
    :catch_2
    move-exception v26

    goto/16 :goto_1

    .line 221
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "proxyHost":Ljava/lang/String;
    .restart local v5    # "proxyPort":I
    .restart local v6    # "proxyUsername":Ljava/lang/String;
    .restart local v7    # "proxyPassword":Ljava/lang/String;
    .restart local v8    # "exclusionList":Ljava/lang/String;
    .restart local v13    # "id":I
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .restart local v16    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v18    # "linkAddr":Landroid/net/LinkAddress;
    .restart local v20    # "pacFileUrl":Ljava/lang/String;
    .restart local v22    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v24    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v25    # "version":I
    :cond_5
    :try_start_7
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Non-IPv4 or duplicate address: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 333
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    .end local v6    # "proxyUsername":Ljava/lang/String;
    .end local v7    # "proxyPassword":Ljava/lang/String;
    .end local v8    # "exclusionList":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v16    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v17    # "key":Ljava/lang/String;
    .end local v18    # "linkAddr":Landroid/net/LinkAddress;
    .end local v20    # "pacFileUrl":Ljava/lang/String;
    .end local v22    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v24    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v25    # "version":I
    :catch_3
    move-exception v11

    move-object v14, v15

    .line 334
    .end local v15    # "in":Ljava/io/DataInputStream;
    .local v11, "e":Ljava/io/IOException;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :goto_6
    :try_start_8
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error parsing configuration: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 336
    if-eqz v14, :cond_1

    .line 338
    :try_start_9
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_1

    .line 339
    :catch_4
    move-exception v26

    goto/16 :goto_1

    .line 223
    .end local v11    # "e":Ljava/io/IOException;
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "proxyHost":Ljava/lang/String;
    .restart local v5    # "proxyPort":I
    .restart local v6    # "proxyUsername":Ljava/lang/String;
    .restart local v7    # "proxyPassword":Ljava/lang/String;
    .restart local v8    # "exclusionList":Ljava/lang/String;
    .restart local v13    # "id":I
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .restart local v16    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v20    # "pacFileUrl":Ljava/lang/String;
    .restart local v22    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v24    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v25    # "version":I
    :cond_6
    :try_start_a
    const-string/jumbo v26, "gateway"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 224
    const/4 v10, 0x0

    .line 225
    .local v10, "dest":Landroid/net/LinkAddress;
    const/4 v12, 0x0

    .line 226
    .local v12, "gateway":Ljava/net/InetAddress;
    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 228
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 229
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v26, v0

    if-nez v26, :cond_8

    .line 230
    move-object/from16 v0, v24

    iput-object v12, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 336
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    .end local v6    # "proxyUsername":Ljava/lang/String;
    .end local v7    # "proxyPassword":Ljava/lang/String;
    .end local v8    # "exclusionList":Ljava/lang/String;
    .end local v10    # "dest":Landroid/net/LinkAddress;
    .end local v12    # "gateway":Ljava/net/InetAddress;
    .end local v13    # "id":I
    .end local v16    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v17    # "key":Ljava/lang/String;
    .end local v20    # "pacFileUrl":Ljava/lang/String;
    .end local v22    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v24    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .end local v25    # "version":I
    :catchall_0
    move-exception v26

    move-object v14, v15

    .end local v15    # "in":Ljava/io/DataInputStream;
    .restart local v14    # "in":Ljava/io/DataInputStream;
    :goto_7
    if-eqz v14, :cond_7

    .line 338
    :try_start_b
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 339
    :cond_7
    :goto_8
    throw v26

    .line 232
    .end local v14    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "proxyHost":Ljava/lang/String;
    .restart local v5    # "proxyPort":I
    .restart local v6    # "proxyUsername":Ljava/lang/String;
    .restart local v7    # "proxyPassword":Ljava/lang/String;
    .restart local v8    # "exclusionList":Ljava/lang/String;
    .restart local v10    # "dest":Landroid/net/LinkAddress;
    .restart local v12    # "gateway":Ljava/net/InetAddress;
    .restart local v13    # "id":I
    .restart local v15    # "in":Ljava/io/DataInputStream;
    .restart local v16    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .restart local v17    # "key":Ljava/lang/String;
    .restart local v20    # "pacFileUrl":Ljava/lang/String;
    .restart local v22    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .restart local v24    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    .restart local v25    # "version":I
    :cond_8
    :try_start_c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Duplicate gateway: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 235
    :cond_9
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 236
    new-instance v10, Landroid/net/LinkAddress;

    .end local v10    # "dest":Landroid/net/LinkAddress;
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v26

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 240
    .restart local v10    # "dest":Landroid/net/LinkAddress;
    :cond_a
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 241
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 243
    :cond_b
    new-instance v23, Landroid/net/RouteInfo;

    move-object/from16 v0, v23

    invoke-direct {v0, v10, v12}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 244
    .local v23, "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v26

    if-eqz v26, :cond_c

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v26, v0

    if-nez v26, :cond_c

    .line 246
    move-object/from16 v0, v24

    iput-object v12, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto/16 :goto_4

    .line 248
    :cond_c
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Non-IPv4 default or duplicate route: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 251
    .end local v10    # "dest":Landroid/net/LinkAddress;
    .end local v12    # "gateway":Ljava/net/InetAddress;
    .end local v23    # "route":Landroid/net/RouteInfo;
    :cond_d
    const-string/jumbo v26, "dns"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 252
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 254
    :cond_e
    const-string/jumbo v26, "proxySettings"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 255
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v22

    goto/16 :goto_4

    .line 256
    :cond_f
    const-string/jumbo v26, "proxyHost"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 257
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 258
    :cond_10
    const-string/jumbo v26, "proxyPort"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 259
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    goto/16 :goto_4

    .line 260
    :cond_11
    const-string/jumbo v26, "proxyPac"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 261
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_4

    .line 262
    :cond_12
    const-string/jumbo v26, "exclusionList"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 263
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 264
    :cond_13
    const-string/jumbo v26, "proxyUsername"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_14

    .line 265
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 266
    :cond_14
    const-string/jumbo v26, "proxyPassword"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 267
    invoke-virtual {v15}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 268
    :cond_15
    const-string/jumbo v26, "eos"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/EOFException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v26

    if-eqz v26, :cond_16

    .line 278
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v13, v0, :cond_18

    .line 279
    :try_start_d
    new-instance v9, Landroid/net/IpConfiguration;

    invoke-direct {v9}, Landroid/net/IpConfiguration;-><init>()V

    .line 280
    .restart local v9    # "config":Landroid/net/IpConfiguration;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    sget-object v26, Lcom/android/server/net/IpConfigStore$2;->$SwitchMap$android$net$IpConfiguration$IpAssignment:[I

    invoke-virtual/range {v16 .. v16}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_0

    .line 295
    const-string v26, "Ignore invalid ip assignment while reading."

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 296
    sget-object v26, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v26

    iput-object v0, v9, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 300
    :goto_9
    sget-object v26, Lcom/android/server/net/IpConfigStore$2;->$SwitchMap$android$net$IpConfiguration$ProxySettings:[I

    invoke-virtual/range {v22 .. v22}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_1

    .line 324
    const-string v26, "Ignore invalid proxy settings while reading"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 325
    sget-object v26, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v26

    iput-object v0, v9, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    .line 271
    .end local v9    # "config":Landroid/net/IpConfiguration;
    :cond_16
    :try_start_e
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Ignore unknown key "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "while reading"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/EOFException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_4

    .line 284
    .restart local v9    # "config":Landroid/net/IpConfiguration;
    :pswitch_1
    :try_start_f
    move-object/from16 v0, v24

    iput-object v0, v9, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 285
    move-object/from16 v0, v16

    iput-object v0, v9, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_9

    .line 288
    :pswitch_2
    move-object/from16 v0, v16

    iput-object v0, v9, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_9

    .line 291
    :pswitch_3
    const-string v26, "BUG: Found UNASSIGNED IP on file, use DHCP"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 292
    sget-object v26, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v26

    iput-object v0, v9, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_9

    .line 306
    :cond_17
    new-instance v3, Landroid/net/ProxyInfo;

    invoke-direct {v3, v4, v5, v8}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    goto/16 :goto_2

    .line 312
    .end local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    :pswitch_4
    new-instance v21, Landroid/net/ProxyInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .line 313
    .local v21, "proxyPacProperties":Landroid/net/ProxyInfo;
    move-object/from16 v0, v22

    iput-object v0, v9, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 314
    move-object/from16 v0, v21

    iput-object v0, v9, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    goto/16 :goto_3

    .line 317
    .end local v21    # "proxyPacProperties":Landroid/net/ProxyInfo;
    :pswitch_5
    move-object/from16 v0, v22

    iput-object v0, v9, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto/16 :goto_3

    .line 320
    :pswitch_6
    const-string v26, "BUG: Found UNASSIGNED proxy on file, use NONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    .line 321
    sget-object v26, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v26

    iput-object v0, v9, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto/16 :goto_3

    .line 329
    .end local v9    # "config":Landroid/net/IpConfiguration;
    :cond_18
    const-string v26, "Missing id while parsing configuration"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/net/IpConfigStore;->log(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/EOFException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_3

    .line 339
    .end local v4    # "proxyHost":Ljava/lang/String;
    .end local v5    # "proxyPort":I
    .end local v6    # "proxyUsername":Ljava/lang/String;
    .end local v7    # "proxyPassword":Ljava/lang/String;
    .end local v8    # "exclusionList":Ljava/lang/String;
    .end local v13    # "id":I
    .end local v16    # "ipAssignment":Landroid/net/IpConfiguration$IpAssignment;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    .end local v20    # "pacFileUrl":Ljava/lang/String;
    .end local v22    # "proxySettings":Landroid/net/IpConfiguration$ProxySettings;
    .end local v24    # "staticIpConfiguration":Landroid/net/StaticIpConfiguration;
    :catch_5
    move-exception v26

    goto/16 :goto_0

    .end local v15    # "in":Ljava/io/DataInputStream;
    .end local v25    # "version":I
    .restart local v14    # "in":Ljava/io/DataInputStream;
    .restart local v19    # "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    :catch_6
    move-exception v27

    goto/16 :goto_8

    .line 336
    :catchall_1
    move-exception v26

    goto/16 :goto_7

    .line 333
    :catch_7
    move-exception v11

    goto/16 :goto_6

    .line 332
    :catch_8
    move-exception v26

    goto/16 :goto_5

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 300
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/IpConfigStore$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/net/IpConfigStore$1;-><init>(Lcom/android/server/net/IpConfigStore;Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    .line 178
    return-void
.end method
