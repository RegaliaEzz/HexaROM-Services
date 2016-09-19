.class public Lcom/ipsec/client/IPsecConnectionState;
.super Ljava/lang/Object;
.source "IPsecConnectionState.java"


# instance fields
.field private mEapReAuthData:[B

.field private mGatewayIP:Ljava/lang/String;

.field private mIP4RACAddresses:[Ljava/lang/String;

.field private mIP4RACDNS:[Ljava/lang/String;

.field private mIP4RACSubnets:[Ljava/lang/String;

.field private mIP6RACAddresses:[Ljava/lang/String;

.field private mIP6RACDNS:[Ljava/lang/String;

.field private mIP6RACSubnets:[Ljava/lang/String;

.field private mIkeCfgAttrs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecIkeCfgAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalIP:Ljava/lang/String;

.field private mOwnIdentity:Ljava/lang/String;

.field private mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field private mRemoteIdentity:Ljava/lang/String;

.field private mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field private mSecondOwnIdentity:Ljava/lang/String;

.field private mSecondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field private mVirtualAdapterConf:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

.field private mVirtualAdapterMtu:I

.field private mVirtualAdapterName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/ipsec/client/IPsecConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/ipsec/client/IPsecConnection;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mGatewayIP:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mLocalIP:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentity:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 50
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentity:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 52
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mSecondOwnIdentity:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mSecondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 54
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterName:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterMtu:I

    .line 62
    invoke-virtual {p1}, Lcom/ipsec/client/IPsecConnection;->getVirtualAdapterConfiguration()Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterConf:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    .line 63
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    .line 64
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnectionState;->mEapReAuthData:[B

    .line 65
    return-void
.end method


# virtual methods
.method protected addIkeConfigurationVendorAttribute(I[B)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .prologue
    .line 492
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    new-instance v1, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-direct {v1, p1, p2}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I[B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method protected addRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V
    .locals 4
    .param p1, "ipVersion"    # Lcom/ipsec/client/IPsecConnection$IPVersion;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 240
    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_3

    .line 242
    const/4 v2, 0x0

    .line 243
    .local v2, "num":I
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v2, v3

    .line 245
    :cond_0
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 246
    .local v0, "addrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 247
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 249
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    .line 262
    .end local v0    # "addrs":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_2
    :goto_1
    return-void

    .line 251
    :cond_3
    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_2

    .line 253
    const/4 v2, 0x0

    .line 254
    .restart local v2    # "num":I
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 255
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    array-length v2, v3

    .line 256
    :cond_4
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 257
    .restart local v0    # "addrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 258
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 259
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 260
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    goto :goto_1
.end method

.method protected addRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V
    .locals 4
    .param p1, "ipVersion"    # Lcom/ipsec/client/IPsecConnection$IPVersion;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 310
    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_3

    .line 312
    const/4 v2, 0x0

    .line 313
    .local v2, "num":I
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v2, v3

    .line 315
    :cond_0
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 316
    .local v0, "addrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 317
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 319
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    .line 332
    .end local v0    # "addrs":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_2
    :goto_1
    return-void

    .line 321
    :cond_3
    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_2

    .line 323
    const/4 v2, 0x0

    .line 324
    .restart local v2    # "num":I
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 325
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    array-length v2, v3

    .line 326
    :cond_4
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 327
    .restart local v0    # "addrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 328
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    .line 327
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 330
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    goto :goto_1
.end method

.method protected addRemoteAccessSubnet(Lcom/ipsec/client/IPsecConnection$IPVersion;Ljava/lang/String;)V
    .locals 4
    .param p1, "ipVersion"    # Lcom/ipsec/client/IPsecConnection$IPVersion;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 382
    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_3

    .line 384
    const/4 v2, 0x0

    .line 385
    .local v2, "num":I
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v2, v3

    .line 387
    :cond_0
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 388
    .local v0, "addrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 389
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 391
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    .line 404
    .end local v0    # "addrs":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_2
    :goto_1
    return-void

    .line 393
    :cond_3
    sget-object v3, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v3, :cond_2

    .line 395
    const/4 v2, 0x0

    .line 396
    .restart local v2    # "num":I
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 397
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    array-length v2, v3

    .line 398
    :cond_4
    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 399
    .restart local v0    # "addrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 400
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v0, v1

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 401
    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v2

    .line 402
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    goto :goto_1
.end method

.method public getEapReAuthData()[B
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mEapReAuthData:[B

    return-object v0
.end method

.method public getGatewayIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mGatewayIP:Ljava/lang/String;

    return-object v0
.end method

.method public getIkeCfgAttributes(I)Ljava/util/Vector;
    .locals 6
    .param p1, "attributeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecIkeCfgAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    const/4 v2, 0x0

    .line 473
    .local v2, "values":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    const/4 v1, 0x0

    .line 474
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 477
    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    .line 478
    .local v0, "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    invoke-virtual {v0}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getType()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 480
    if-nez v2, :cond_0

    .line 481
    new-instance v2, Ljava/util/Vector;

    .end local v2    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 482
    .restart local v2    # "values":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecIkeCfgAttribute;>;"
    :cond_0
    new-instance v3, Lcom/ipsec/client/IPsecIkeCfgAttribute;

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getType()I

    move-result v4

    invoke-virtual {v0}, Lcom/ipsec/client/IPsecIkeCfgAttribute;->getData()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/ipsec/client/IPsecIkeCfgAttribute;-><init>(I[B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v0    # "attr":Lcom/ipsec/client/IPsecIkeCfgAttribute;
    :cond_2
    return-object v2
.end method

.method public getLocalIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mLocalIP:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getRemoteAccessClientAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;
    .locals 5
    .param p1, "ipVersion"    # Lcom/ipsec/client/IPsecConnection$IPVersion;

    .prologue
    const/4 v4, 0x0

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "addrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 208
    .local v1, "num":I
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_1

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v1, v2

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_3

    .line 215
    :cond_2
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    .line 216
    :cond_3
    if-lez v1, :cond_7

    .line 218
    new-array v0, v1, [Ljava/lang/String;

    .line 219
    const/4 v1, 0x0

    .line 220
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_5

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v1, v2

    .line 228
    :cond_5
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_7

    .line 231
    :cond_6
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    :cond_7
    return-object v0
.end method

.method public getRemoteAccessDnsAddress(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;
    .locals 5
    .param p1, "ipVersion"    # Lcom/ipsec/client/IPsecConnection$IPVersion;

    .prologue
    const/4 v4, 0x0

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "addrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 280
    .local v1, "num":I
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_1

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v1, v2

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_3

    .line 287
    :cond_2
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    .line 288
    :cond_3
    if-lez v1, :cond_7

    .line 290
    new-array v0, v1, [Ljava/lang/String;

    .line 291
    const/4 v1, 0x0

    .line 292
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_5

    .line 296
    :cond_4
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v1, v2

    .line 299
    :cond_5
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_7

    .line 302
    :cond_6
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    :cond_7
    return-object v0
.end method

.method public getRemoteAccessSubnets(Lcom/ipsec/client/IPsecConnection$IPVersion;)[Ljava/lang/String;
    .locals 5
    .param p1, "ipVersion"    # Lcom/ipsec/client/IPsecConnection$IPVersion;

    .prologue
    const/4 v4, 0x0

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "addrs":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 350
    .local v1, "num":I
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_1

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v1, v2

    .line 354
    :cond_1
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_2

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_3

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    .line 358
    :cond_3
    if-lez v1, :cond_7

    .line 360
    new-array v0, v1, [Ljava/lang/String;

    .line 361
    const/4 v1, 0x0

    .line 362
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_4:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_4

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_5

    .line 366
    :cond_4
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v1, v2

    .line 370
    :cond_5
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_6:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-eq p1, v2, :cond_6

    sget-object v2, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-ne p1, v2, :cond_7

    .line 373
    :cond_6
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    :cond_7
    return-object v0
.end method

.method public getRemoteIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getSecondOwnIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mSecondOwnIdentity:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mSecondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getVirtualAdapterMTU()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterMtu:I

    return v0
.end method

.method public getVirtualAdapterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method public setEapReAuthData([B)V
    .locals 0
    .param p1, "aEapReAuthData"    # [B

    .prologue
    .line 444
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnectionState;->mEapReAuthData:[B

    .line 445
    return-void
.end method

.method protected setGatewayIP(Ljava/lang/String;)V
    .locals 1
    .param p1, "gw"    # Ljava/lang/String;

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mGatewayIP:Ljava/lang/String;

    .line 81
    :cond_0
    return-void
.end method

.method protected setLocalIP(Ljava/lang/String;)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mLocalIP:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method

.method protected setOwnIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentity:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method protected setOwnIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V
    .locals 0
    .param p1, "type"    # Lcom/ipsec/client/IPsecConnection$IdentityType;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 159
    return-void
.end method

.method protected setRemoteIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentity:Ljava/lang/String;

    .line 113
    :cond_0
    return-void
.end method

.method protected setRemoteIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V
    .locals 0
    .param p1, "type"    # Lcom/ipsec/client/IPsecConnection$IdentityType;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 128
    return-void
.end method

.method protected setSecondOwnIdentity(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mSecondOwnIdentity:Ljava/lang/String;

    .line 175
    :cond_0
    return-void
.end method

.method protected setSecondOwnIdentityType(Lcom/ipsec/client/IPsecConnection$IdentityType;)V
    .locals 0
    .param p1, "type"    # Lcom/ipsec/client/IPsecConnection$IdentityType;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnectionState;->mSecondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 190
    return-void
.end method

.method protected setVirtualAdapterMTU(I)V
    .locals 0
    .param p1, "mtu"    # I

    .prologue
    .line 434
    iput p1, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterMtu:I

    .line 435
    return-void
.end method

.method protected setVirtualAdapterName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 419
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterName:Ljava/lang/String;

    .line 420
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 500
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPsecConnectionState{gatewayIP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mGatewayIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", localIP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mLocalIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 505
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterConf:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    sget-object v3, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    if-ne v2, v3, :cond_0

    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", remoteIdentityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", remoteIdentity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mRemoteIdentity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ownIdentityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ownIdentity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", secondOwndentityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mSecondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", secondOwnIdentity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mSecondOwnIdentity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 528
    :goto_0
    const-string v2, ", IP4RACAddresses=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACAddresses:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    .end local v0    # "i":I
    :cond_0
    const-string v2, ", remoteIdentityType=(intentionally suppressed), remoteIdentity=(intentionally suppressed), ownIdentityType=(intentionally suppressed), ownIdentity=(intentionally suppressed), secondOwnIdentityType=(intentionally suppressed), secondOwnIdentity=(intentionally suppressed)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 535
    .restart local v0    # "i":I
    :cond_1
    const-string v2, "], IP6RACAddresses=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    const/4 v0, 0x0

    .line 538
    :goto_2
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACAddresses:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 542
    :cond_2
    const-string v2, "], IP4RACDNS=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 544
    const/4 v0, 0x0

    .line 545
    :goto_3
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACDNS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 549
    :cond_3
    const-string v2, "], IP6RACDNS=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    const/4 v0, 0x0

    .line 552
    :goto_4
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACDNS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 556
    :cond_4
    const-string v2, "], IP4RACSubnets=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 558
    const/4 v0, 0x0

    .line 559
    :goto_5
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP4RACSubnets:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 563
    :cond_5
    const-string v2, "], IP6RACSubnets=["

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 565
    const/4 v0, 0x0

    .line 566
    :goto_6
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIP6RACSubnets:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 570
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "], virtualAdapterName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", virtualAdapterMtu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mVirtualAdapterMtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IkeCfgAttrs=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    const/4 v0, 0x0

    .line 575
    :goto_7
    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnectionState;->mIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 579
    :cond_7
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    return-object v1
.end method
