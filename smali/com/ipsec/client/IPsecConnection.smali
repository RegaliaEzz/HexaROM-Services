.class public Lcom/ipsec/client/IPsecConnection;
.super Ljava/lang/Object;
.source "IPsecConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;,
        Lcom/ipsec/client/IPsecConnection$IkeIntegrity;,
        Lcom/ipsec/client/IPsecConnection$IPsecGroup;,
        Lcom/ipsec/client/IPsecConnection$IkeGroup;,
        Lcom/ipsec/client/IPsecConnection$IkeEncryption;,
        Lcom/ipsec/client/IPsecConnection$IkeVersion;,
        Lcom/ipsec/client/IPsecConnection$IPsecLifeType;,
        Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;,
        Lcom/ipsec/client/IPsecConnection$IPsecEncryption;,
        Lcom/ipsec/client/IPsecConnection$TunnelMode;,
        Lcom/ipsec/client/IPsecConnection$IPVersion;,
        Lcom/ipsec/client/IPsecConnection$HostAuthentication;,
        Lcom/ipsec/client/IPsecConnection$EapMethod;,
        Lcom/ipsec/client/IPsecConnection$IdentityType;
    }
.end annotation


# static fields
.field private static final DEFAULT_UPDATE_TIMEOUT:I = 0xa

.field protected static final IPSEC_CONNECTION_VERSION:Ljava/lang/String; = "5"

.field public static final NIST_SP_800_131A_ACCEPTABLE_ALGORITHMS:I = 0x70


# instance fields
.field private IKEV2_FRAGMENTATION_LIMIT:I

.field private PMTU_MIN:I

.field protected aggressiveMode:Z

.field protected algorithmSecurityStrength:I

.field protected caCertificate:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field protected caCertificateData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field protected certCheckRevocation:Z

.field protected certificate:Ljava/security/cert/X509Certificate;

.field protected certificateData:[B

.field protected connectTimeout:I

.field private connectionId:I

.field protected disableIkev2Fragmentation:Z

.field protected disableSplitTunneling:Z

.field protected dpdTimeout:I

.field protected eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field protected eapReAuthData:[B

.field protected eapReAuthPassword:Ljava/lang/String;

.field protected gateway:Ljava/lang/String;

.field protected globalDnsConfiguration:Z

.field protected hostAuthentication:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

.field protected hybridModeConnection:Z

.field protected ikeEncryption:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeEncryption;",
            ">;"
        }
    .end annotation
.end field

.field protected ikeGroup:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected ikeIntegrity:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeIntegrity;",
            ">;"
        }
    .end annotation
.end field

.field protected ikeLife:I

.field protected ikeVersion:Lcom/ipsec/client/IPsecConnection$IkeVersion;

.field protected ikeWindowSize:I

.field protected ikev2FragmentationLimit:I

.field protected imCertificate:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field protected imCertificateData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field protected internalSubnet:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected ipsecEncryption:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecEncryption;",
            ">;"
        }
    .end annotation
.end field

.field protected ipsecGroup:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected ipsecIntegrity:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;",
            ">;"
        }
    .end annotation
.end field

.field protected ipsecLifeType:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

.field protected ipsecLifeValue:I

.field protected mobike:Z

.field protected name:Ljava/lang/String;

.field protected nattKeepaliveTimeout:I

.field protected networkInterface:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecNetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field protected ownIdentity:Ljava/lang/String;

.field protected ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field protected password:Ljava/lang/String;

.field protected pmtuLimit:I

.field protected preSharedKey:Ljava/lang/String;

.field protected privateKey:Ljava/security/PrivateKey;

.field protected privateKeyData:[B

.field protected privateKeyFormat:Ljava/lang/String;

.field protected remoteIdentity:Ljava/lang/String;

.field protected remoteIdentityEnforce:Z

.field protected remoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field protected requestIkeCfgAttrs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecIkeCfgAttribute;",
            ">;"
        }
    .end annotation
.end field

.field protected requestedRACIPv4:Ljava/lang/String;

.field protected requestedRACIPv6:Ljava/lang/String;

.field protected secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

.field protected secondOwnIdentity:Ljava/lang/String;

.field protected secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

.field protected secondPassword:Ljava/lang/String;

.field protected secondUsername:Ljava/lang/String;

.field protected subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

.field protected tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

.field protected userAuthentication:Z

.field protected username:Ljava/lang/String;

.field protected version:Ljava/lang/String;

.field protected virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

.field protected virtualAdapterName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v0, 0x500

    const/4 v2, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->PMTU_MIN:I

    .line 95
    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->IKEV2_FRAGMENTATION_LIMIT:I

    .line 104
    new-instance v0, Ljava/lang/String;

    const-string v1, "5"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->version:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    .line 106
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    .line 107
    const/16 v0, 0xa

    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->connectTimeout:I

    .line 108
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    .line 110
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    .line 111
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    .line 112
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    .line 113
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    .line 114
    iput-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->globalDnsConfiguration:Z

    .line 115
    sget-object v0, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    .line 117
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    .line 118
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    .line 119
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    .line 120
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    .line 121
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->algorithmSecurityStrength:I

    .line 123
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->IKEV2_FRAGMENTATION_LIMIT:I

    iput v0, p0, Lcom/ipsec/client/IPsecConnection;->ikev2FragmentationLimit:I

    .line 124
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 125
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 126
    return-void
.end method


# virtual methods
.method public addCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 2220
    if-eqz p1, :cond_0

    .line 2222
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 2223
    .local v0, "encoded":[B
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2224
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2226
    .end local v0    # "encoded":[B
    :cond_0
    return-void
.end method

.method public addEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V
    .locals 3
    .param p1, "eap"    # Lcom/ipsec/client/IPsecConnection$EapMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1817
    if-eqz p1, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    if-nez v0, :cond_1

    .line 1820
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 1824
    :cond_0
    return-void

    .line 1822
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "EAP method already set"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public addGroup(Lcom/ipsec/client/IPsecConnection$IkeGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/ipsec/client/IPsecConnection$IkeGroup;

    .prologue
    .line 1029
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    if-ne p1, v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1035
    :goto_0
    return-void

    .line 1031
    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    if-ne p1, v0, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ECP_384:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addIPsecEncryption(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)V
    .locals 2
    .param p1, "encryption"    # Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .prologue
    .line 710
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    if-ne p1, v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 716
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 737
    :goto_0
    return-void

    .line 721
    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    if-ne p1, v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 727
    :cond_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    if-ne p1, v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addIPsecGroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)V
    .locals 1
    .param p1, "group"    # Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    .prologue
    .line 948
    if-eqz p1, :cond_0

    .line 949
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_0
    return-void
.end method

.method public addIPsecIntegrity(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)V
    .locals 2
    .param p1, "integrity"    # Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .prologue
    .line 820
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    if-ne p1, v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 826
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    if-eq p1, v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addIkeEncryption(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)V
    .locals 2
    .param p1, "encryption"    # Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .prologue
    .line 1206
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_BASIC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    if-ne p1, v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_3DES_CBC:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1209
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_192:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1211
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_CBC_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1225
    :goto_0
    return-void

    .line 1213
    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    if-ne p1, v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1217
    :cond_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    if-ne p1, v0, :cond_2

    .line 1219
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_AES_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1223
    :cond_2
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addIkeIntegrity(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)V
    .locals 2
    .param p1, "integrity"    # Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    .prologue
    .line 1308
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_BASIC:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    if-ne p1, v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_MD5_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1311
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA1_96:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1312
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1313
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1314
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_512_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1328
    :goto_0
    return-void

    .line 1316
    :cond_0
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    if-ne p1, v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_256_128:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1320
    :cond_1
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_SUITE_B_GCM_256:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    if-ne p1, v0, :cond_2

    .line 1322
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_HMAC_SHA_384_192:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1326
    :cond_2
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addImCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 2301
    if-eqz p1, :cond_0

    .line 2303
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 2304
    .local v0, "encoded":[B
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2305
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2307
    .end local v0    # "encoded":[B
    :cond_0
    return-void
.end method

.method public addInterface(Lcom/ipsec/client/IPsecNetworkInterface;)V
    .locals 1
    .param p1, "iface"    # Lcom/ipsec/client/IPsecNetworkInterface;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ipsec/client/IPsecNetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_0
    return-void
.end method

.method public addInternalSubnet(Ljava/lang/String;)V
    .locals 1
    .param p1, "subnetAddr"    # Ljava/lang/String;

    .prologue
    .line 302
    if-eqz p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    return-void
.end method

.method public addRequestIkeCfgAttribute(Lcom/ipsec/client/IPsecIkeCfgAttribute;)V
    .locals 1
    .param p1, "attribute"    # Lcom/ipsec/client/IPsecIkeCfgAttribute;

    .prologue
    .line 2743
    if-eqz p1, :cond_0

    .line 2744
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2745
    :cond_0
    return-void
.end method

.method public clearCaCertificates()V
    .locals 1

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2236
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2237
    return-void
.end method

.method public clearEapMethods()V
    .locals 1

    .prologue
    .line 1890
    sget-object v0, Lcom/ipsec/client/IPsecConnection$EapMethod;->EAP_METHOD_NONE:Lcom/ipsec/client/IPsecConnection$EapMethod;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 1891
    return-void
.end method

.method public clearGroup()V
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1045
    return-void
.end method

.method public clearIPsecEncryption()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 747
    return-void
.end method

.method public clearIPsecGroup()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 960
    return-void
.end method

.method public clearIPsecIntegrity()V
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 854
    return-void
.end method

.method public clearIkeEncryption()V
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1235
    return-void
.end method

.method public clearIkeIntegrity()V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1338
    return-void
.end method

.method public clearImCertificates()V
    .locals 1

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2317
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2318
    return-void
.end method

.method public clearInterfaces()V
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    .line 377
    return-void
.end method

.method public clearInternalSubnets()V
    .locals 2

    .prologue
    .line 329
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    .line 330
    return-void
.end method

.method public clearRequestIkeCfgAttributes()V
    .locals 1

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2755
    return-void
.end method

.method public getAlgorithmSecurityStrength()I
    .locals 1

    .prologue
    .line 2461
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->algorithmSecurityStrength:I

    return v0
.end method

.method protected getAllCaCertificateDatas()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2282
    const/4 v0, 0x0

    .line 2284
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllCaCertificates()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2268
    const/4 v0, 0x0

    .line 2270
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllGroups()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1059
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1060
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeGroup;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1065
    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeGroup;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIPsecEncryptions()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecEncryption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 761
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 762
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecEncryption;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 767
    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecEncryption;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIPsecGroups()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 972
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 974
    const/4 v0, 0x0

    .line 978
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIPsecIntegrities()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 866
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 868
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 869
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 874
    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIPsecIntegritys()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecIntegrities()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getAllIkeEncryptions()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeEncryption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1249
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1250
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeEncryption;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1255
    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeEncryption;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIkeIntegrities()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeIntegrity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1350
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1352
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 1353
    .local v0, "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeIntegrity;>;"
    sget-object v1, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1358
    .end local v0    # "v":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IkeIntegrity;>;"
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllIkeIntegritys()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$IkeIntegrity;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1376
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->getAllIkeIntegrities()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method protected getAllImCertificateDatas()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2344
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2345
    const/4 v0, 0x0

    .line 2347
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllImCertificates()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2331
    const/4 v0, 0x0

    .line 2333
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->imCertificate:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getAllRequestIkeCfgAttributes()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecIkeCfgAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2768
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 2770
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2251
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2252
    const/4 v0, 0x0

    .line 2254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->caCertificate:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public getCertCheckRevocation()Z
    .locals 1

    .prologue
    .line 2422
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->certCheckRevocation:Z

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->certificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method protected getCertificateData()[B
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 2096
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->connectTimeout:I

    return v0
.end method

.method protected declared-synchronized getConnectionId()I
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->connectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDpdTimeout()I
    .locals 1

    .prologue
    .line 2157
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->dpdTimeout:I

    return v0
.end method

.method public getEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-object v0
.end method

.method public getEapMethods()Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecConnection$EapMethod;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1869
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1871
    .local v4, "methods":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$EapMethod;>;"
    invoke-static {}, Lcom/ipsec/client/IPsecConnection$EapMethod;->values()[Lcom/ipsec/client/IPsecConnection$EapMethod;

    move-result-object v0

    .local v0, "arr$":[Lcom/ipsec/client/IPsecConnection$EapMethod;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1873
    .local v1, "e":Lcom/ipsec/client/IPsecConnection$EapMethod;
    iget-object v5, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    if-ne v5, v1, :cond_1

    .line 1875
    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1880
    .end local v1    # "e":Lcom/ipsec/client/IPsecConnection$EapMethod;
    :cond_0
    return-object v4

    .line 1871
    .restart local v1    # "e":Lcom/ipsec/client/IPsecConnection$EapMethod;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getEapReAuthData()[B
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthData:[B

    return-object v0
.end method

.method public getEapReAuthPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1706
    const/4 v0, 0x0

    .line 1708
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGateway()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGlobalDnsConfiguration()Z
    .locals 1

    .prologue
    .line 2730
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->globalDnsConfiguration:Z

    return v0
.end method

.method public getGroup()Lcom/ipsec/client/IPsecConnection$IkeGroup;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;->IKE_GROUP_ANY:Lcom/ipsec/client/IPsecConnection$IkeGroup;

    .line 1084
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IkeGroup;

    goto :goto_0
.end method

.method public getHostAuthentication()Lcom/ipsec/client/IPsecConnection$HostAuthentication;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->hostAuthentication:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    return-object v0
.end method

.method public getIPsecEncryption()Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 783
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 784
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;->IPSEC_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    .line 786
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPsecEncryption;

    goto :goto_0
.end method

.method public getIPsecGroup()Lcom/ipsec/client/IPsecConnection$IPsecGroup;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->getAllIPsecGroups()Ljava/util/Vector;

    move-result-object v0

    .line 995
    .local v0, "groups":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/ipsec/client/IPsecConnection$IPsecGroup;>;"
    if-nez v0, :cond_0

    .line 997
    const/4 v1, 0x0

    .line 999
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ipsec/client/IPsecConnection$IPsecGroup;

    goto :goto_0
.end method

.method public getIPsecIntegrity()Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 909
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 910
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;->IPSEC_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    .line 912
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;

    goto :goto_0
.end method

.method public getIPsecLifeType()Lcom/ipsec/client/IPsecConnection$IPsecLifeType;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeType:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    return-object v0
.end method

.method public getIPsecLifeValue()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeValue:I

    return v0
.end method

.method public getIkeEncryption()Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;->IKE_ENCRYPTION_ANY:Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    .line 1274
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IkeEncryption;

    goto :goto_0
.end method

.method public getIkeIntegrity()Lcom/ipsec/client/IPsecConnection$IkeIntegrity;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;->IKE_INTEGRITY_ANY:Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    .line 1396
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ipsec/client/IPsecConnection$IkeIntegrity;

    goto :goto_0
.end method

.method public getIkeLife()I
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeLife:I

    return v0
.end method

.method public getIkeVersion()Lcom/ipsec/client/IPsecConnection$IkeVersion;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeVersion:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    return-object v0
.end method

.method public getIkeWindowSize()I
    .locals 1

    .prologue
    .line 1421
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->ikeWindowSize:I

    return v0
.end method

.method public getIkev2FragmentationLimit()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->ikev2FragmentationLimit:I

    return v0
.end method

.method public getInterfaces()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/ipsec/client/IPsecNetworkInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 364
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 366
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalSubnets()Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNattKeepaliveTimeout()I
    .locals 1

    .prologue
    .line 2185
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->nattKeepaliveTimeout:I

    return v0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentity:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1510
    const/4 v0, 0x0

    .line 1512
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentity:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getPMTULimit()I
    .locals 1

    .prologue
    .line 2129
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->pmtuLimit:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1674
    const/4 v0, 0x0

    .line 1676
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPreSharedKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1797
    const/4 v0, 0x0

    .line 1799
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method protected getPrivateKeyData()[B
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    return-object v0
.end method

.method protected getPrivateKeyFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentity:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1610
    const/4 v0, 0x0

    .line 1612
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentity:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRemoteIdentityEnforce()Z
    .locals 1

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityEnforce:Z

    return v0
.end method

.method public getRemoteIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getRequestedRacIPv4Address()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2603
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2604
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestedRacIPv6Address()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2641
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2642
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2643
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondEapMethod()Lcom/ipsec/client/IPsecConnection$EapMethod;
    .locals 1

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    return-object v0
.end method

.method public getSecondOwnIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentity:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2066
    const/4 v0, 0x0

    .line 2068
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentity:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSecondOwnIdentityType()Lcom/ipsec/client/IPsecConnection$IdentityType;
    .locals 1

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    return-object v0
.end method

.method public getSecondPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondPassword:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1997
    const/4 v0, 0x0

    .line 1999
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->secondPassword:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSecondUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondUsername:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1961
    const/4 v0, 0x0

    .line 1963
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->secondUsername:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSubnetType()Lcom/ipsec/client/IPsecConnection$IPVersion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    if-nez v0, :cond_0

    .line 276
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 278
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_0
.end method

.method public getTunnelMode()Lcom/ipsec/client/IPsecConnection$TunnelMode;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    if-nez v0, :cond_0

    .line 461
    sget-object v0, Lcom/ipsec/client/IPsecConnection$TunnelMode;->IPSEC_RAC:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    .line 463
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1642
    const/4 v0, 0x0

    .line 1644
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getVirtualAdapterConfiguration()Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;
    .locals 1

    .prologue
    .line 2700
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    return-object v0
.end method

.method public getVirtualAdapterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method public isAggressiveMode()Z
    .locals 1

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->aggressiveMode:Z

    return v0
.end method

.method public isHybridMode()Z
    .locals 1

    .prologue
    .line 1764
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->hybridModeConnection:Z

    return v0
.end method

.method public isIPsecAntiReplay()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 675
    const/4 v0, 0x1

    return v0
.end method

.method public isIkev2FragmentationDisabled()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->disableIkev2Fragmentation:Z

    return v0
.end method

.method public isMobike()Z
    .locals 1

    .prologue
    .line 1449
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->mobike:Z

    return v0
.end method

.method public isPerfectForwardSecrecy()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 593
    const/4 v0, 0x0

    return v0
.end method

.method public isSplitTunnelingDisabled()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->disableSplitTunneling:Z

    return v0
.end method

.method public isUserAuthentication()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/ipsec/client/IPsecConnection;->userAuthentication:Z

    return v0
.end method

.method public setAggressiveMode(Z)V
    .locals 0
    .param p1, "aggressiveMode"    # Z

    .prologue
    .line 1158
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->aggressiveMode:Z

    .line 1159
    return-void
.end method

.method public setAlgorithmSecurityStrength(I)V
    .locals 0
    .param p1, "algorithmSecurityStrength"    # I

    .prologue
    .line 2446
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->algorithmSecurityStrength:I

    .line 2447
    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 2202
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearCaCertificates()V

    .line 2203
    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addCaCertificate(Ljava/security/cert/X509Certificate;)V

    .line 2204
    return-void
.end method

.method public setCertCheckRevocation(Z)V
    .locals 0
    .param p1, "certCheckRevocation"    # Z

    .prologue
    .line 2409
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->certCheckRevocation:Z

    .line 2410
    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 2364
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->certificate:Ljava/security/cert/X509Certificate;

    .line 2365
    if-nez p1, :cond_0

    .line 2366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    .line 2369
    :goto_0
    return-void

    .line 2368
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    goto :goto_0
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "connectTimeout"    # I

    .prologue
    .line 2083
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->connectTimeout:I

    .line 2084
    return-void
.end method

.method protected declared-synchronized setConnectionId(I)V
    .locals 1
    .param p1, "connectionId"    # I

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->connectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDpdTimeout(I)V
    .locals 0
    .param p1, "dpdTimeout"    # I

    .prologue
    .line 2144
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->dpdTimeout:I

    .line 2145
    return-void
.end method

.method public setEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V
    .locals 0
    .param p1, "eap"    # Lcom/ipsec/client/IPsecConnection$EapMethod;

    .prologue
    .line 1836
    if-eqz p1, :cond_0

    .line 1838
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 1840
    :cond_0
    return-void
.end method

.method public setEapReAuthData([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthData:[B

    .line 1722
    return-void
.end method

.method public setEapReAuthPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1689
    if-nez p1, :cond_0

    .line 1690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    .line 1693
    :goto_0
    return-void

    .line 1692
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public setGateway(Ljava/lang/String;)V
    .locals 4
    .param p1, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 200
    if-nez p1, :cond_0

    .line 202
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "gateway=null"

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 207
    :cond_0
    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isValidFqdn(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    iput-object v1, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gateway="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setGlobalDnsConfiguration(Z)V
    .locals 0
    .param p1, "globalDnsConfiguration"    # Z

    .prologue
    .line 2720
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->globalDnsConfiguration:Z

    .line 2721
    return-void
.end method

.method public setGroup(Lcom/ipsec/client/IPsecConnection$IkeGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/ipsec/client/IPsecConnection$IkeGroup;

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearGroup()V

    .line 1015
    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addGroup(Lcom/ipsec/client/IPsecConnection$IkeGroup;)V

    .line 1016
    return-void
.end method

.method public setHostAuthentication(Lcom/ipsec/client/IPsecConnection$HostAuthentication;)V
    .locals 0
    .param p1, "hostAuthentication"    # Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->hostAuthentication:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    .line 392
    return-void
.end method

.method public setHybridMode(Z)V
    .locals 0
    .param p1, "hybridModeConnection"    # Z

    .prologue
    .line 1750
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->hybridModeConnection:Z

    .line 1751
    return-void
.end method

.method public setIPsecAntiReplay(Z)V
    .locals 0
    .param p1, "antiReplay"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 660
    return-void
.end method

.method public setIPsecEncryption(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)V
    .locals 0
    .param p1, "encryption"    # Lcom/ipsec/client/IPsecConnection$IPsecEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIPsecEncryption()V

    .line 695
    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIPsecEncryption(Lcom/ipsec/client/IPsecConnection$IPsecEncryption;)V

    .line 696
    return-void
.end method

.method public setIPsecGroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)V
    .locals 0
    .param p1, "group"    # Lcom/ipsec/client/IPsecConnection$IPsecGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIPsecGroup()V

    .line 935
    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIPsecGroup(Lcom/ipsec/client/IPsecConnection$IPsecGroup;)V

    .line 936
    return-void
.end method

.method public setIPsecIntegrity(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)V
    .locals 0
    .param p1, "integrity"    # Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIPsecIntegrity()V

    .line 806
    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIPsecIntegrity(Lcom/ipsec/client/IPsecConnection$IPsecIntegrity;)V

    .line 807
    return-void
.end method

.method public setIPsecLife(Lcom/ipsec/client/IPsecConnection$IPsecLifeType;I)V
    .locals 3
    .param p1, "lifeType"    # Lcom/ipsec/client/IPsecConnection$IPsecLifeType;
    .param p2, "lifeValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 613
    if-gez p2, :cond_0

    .line 614
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ipsec-life="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 617
    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeType:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    .line 618
    iput p2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeValue:I

    .line 619
    return-void
.end method

.method public setIkeEncryption(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)V
    .locals 0
    .param p1, "encryption"    # Lcom/ipsec/client/IPsecConnection$IkeEncryption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIkeEncryption()V

    .line 1191
    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIkeEncryption(Lcom/ipsec/client/IPsecConnection$IkeEncryption;)V

    .line 1192
    return-void
.end method

.method public setIkeIntegrity(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)V
    .locals 0
    .param p1, "integrity"    # Lcom/ipsec/client/IPsecConnection$IkeIntegrity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/ipsec/client/IPsecConnection;->clearIkeIntegrity()V

    .line 1294
    invoke-virtual {p0, p1}, Lcom/ipsec/client/IPsecConnection;->addIkeIntegrity(Lcom/ipsec/client/IPsecConnection$IkeIntegrity;)V

    .line 1295
    return-void
.end method

.method public setIkeLife(I)V
    .locals 3
    .param p1, "life"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1099
    if-gez p1, :cond_0

    .line 1100
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ike-life="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1102
    :cond_0
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->ikeLife:I

    .line 1103
    return-void
.end method

.method public setIkeVersion(Lcom/ipsec/client/IPsecConnection$IkeVersion;)V
    .locals 0
    .param p1, "version"    # Lcom/ipsec/client/IPsecConnection$IkeVersion;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->ikeVersion:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    .line 1131
    return-void
.end method

.method public setIkeWindowSize(I)V
    .locals 0
    .param p1, "windowSize"    # I

    .prologue
    .line 1411
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->ikeWindowSize:I

    .line 1412
    return-void
.end method

.method public setIkev2FragmentationDisabled(Z)V
    .locals 0
    .param p1, "disableIkev2Fragmentation"    # Z

    .prologue
    .line 519
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->disableIkev2Fragmentation:Z

    .line 520
    return-void
.end method

.method public setIkev2FragmentationLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 547
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->ikev2FragmentationLimit:I

    .line 548
    return-void
.end method

.method public setMobike(Z)V
    .locals 0
    .param p1, "mobike"    # Z

    .prologue
    .line 1436
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->mobike:Z

    .line 1437
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setNattKeepaliveTimeout(I)V
    .locals 0
    .param p1, "nattKeepaliveTimeout"    # I

    .prologue
    .line 2172
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->nattKeepaliveTimeout:I

    .line 2173
    return-void
.end method

.method public setOwnIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V
    .locals 3
    .param p1, "ownIdentityType"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "ownIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1469
    if-nez p1, :cond_0

    .line 1470
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 1474
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1476
    invoke-static {p1, p2}, Lcom/ipsec/client/IPsecUtil;->isValidIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1477
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "own-identity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "own-identity-type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1472
    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    .line 1483
    :cond_1
    iput-object p2, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentity:Ljava/lang/String;

    .line 1484
    return-void
.end method

.method public setPMTULimit(I)V
    .locals 3
    .param p1, "pmtuLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 2111
    iget v0, p0, Lcom/ipsec/client/IPsecConnection;->PMTU_MIN:I

    if-lt p1, v0, :cond_0

    .line 2112
    iput p1, p0, Lcom/ipsec/client/IPsecConnection;->pmtuLimit:I

    .line 2115
    return-void

    .line 2114
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMTULimit too low < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->PMTU_MIN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1657
    if-nez p1, :cond_0

    .line 1658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    .line 1661
    :goto_0
    return-void

    .line 1660
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPerfectForwardSecrecy(Z)V
    .locals 0
    .param p1, "perfectForwardSecrecy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 578
    return-void
.end method

.method public setPreSharedKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "preSharedKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1777
    if-nez p1, :cond_0

    .line 1778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    .line 1784
    :goto_0
    return-void

    .line 1779
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    .line 1780
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pre-shared-key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  key too long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1783
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    const/4 v0, 0x0

    .line 2474
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->privateKey:Ljava/security/PrivateKey;

    .line 2475
    if-nez p1, :cond_0

    .line 2477
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    .line 2478
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    .line 2485
    :goto_0
    return-void

    .line 2482
    :cond_0
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    .line 2483
    invoke-interface {p1}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrivateKey([B)V
    .locals 1
    .param p1, "privateKey"    # [B

    .prologue
    const/4 v0, 0x0

    .line 2497
    if-nez p1, :cond_0

    .line 2499
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    .line 2500
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    .line 2507
    :goto_0
    return-void

    .line 2504
    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    .line 2505
    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPrivateKeyAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "alg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2518
    return-void
.end method

.method public setPrivateKeyLength(I)V
    .locals 0
    .param p1, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2529
    return-void
.end method

.method public setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V
    .locals 1
    .param p1, "remoteIdentityType"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "remoteIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ipsec/client/IPsecConnection;->setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;Z)V

    .line 1535
    return-void
.end method

.method public setRemoteIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteIdentityType"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "remoteIdentity"    # Ljava/lang/String;
    .param p3, "remoteIdentityEnforce"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1558
    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/ipsec/client/IPsecUtil;->isValidIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1561
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote-identity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "remote-identity-type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1567
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentity:Ljava/lang/String;

    .line 1568
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 1569
    iput-boolean p3, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityEnforce:Z

    .line 1570
    return-void
.end method

.method public setRequestedRacIPv4Address(Ljava/lang/String;)V
    .locals 3
    .param p1, "ipv4Address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 2582
    if-eqz p1, :cond_1

    .line 2584
    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv4Subnet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2586
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "rac-ipv4"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2587
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    .line 2593
    :goto_0
    return-void

    .line 2591
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequestedRacIPv6Address(Ljava/lang/String;)V
    .locals 3
    .param p1, "ipv6Address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 2621
    if-eqz p1, :cond_0

    .line 2623
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    .line 2624
    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/ipsec/client/IPsecUtil;->isAddressIPv6Subnet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2626
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "rac-ipv6"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2630
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    .line 2632
    :cond_1
    return-void
.end method

.method public setSecondEapMethod(Lcom/ipsec/client/IPsecConnection$EapMethod;)V
    .locals 0
    .param p1, "eap"    # Lcom/ipsec/client/IPsecConnection$EapMethod;

    .prologue
    .line 1911
    if-eqz p1, :cond_0

    .line 1913
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    .line 1915
    :cond_0
    return-void
.end method

.method public setSecondOwnIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)V
    .locals 3
    .param p1, "secondOwnIdentityType"    # Lcom/ipsec/client/IPsecConnection$IdentityType;
    .param p2, "secondOwnIdentity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 2024
    if-nez p1, :cond_0

    .line 2025
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IdentityType;->IPV4_ADDR:Lcom/ipsec/client/IPsecConnection$IdentityType;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    .line 2029
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2031
    invoke-static {p1, p2}, Lcom/ipsec/client/IPsecUtil;->isValidIdentity(Lcom/ipsec/client/IPsecConnection$IdentityType;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2033
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "second-own-identity= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "second-own-identity-type= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2027
    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    goto :goto_0

    .line 2039
    :cond_1
    iput-object p2, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentity:Ljava/lang/String;

    .line 2040
    return-void
.end method

.method public setSecondPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1980
    if-nez p1, :cond_0

    .line 1981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondPassword:Ljava/lang/String;

    .line 1984
    :goto_0
    return-void

    .line 1983
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondPassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSecondUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1944
    if-nez p1, :cond_0

    .line 1945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondUsername:Ljava/lang/String;

    .line 1948
    :goto_0
    return-void

    .line 1947
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->secondUsername:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSplitTunnelingDisabled(Z)V
    .locals 0
    .param p1, "disableSplitTunneling"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->disableSplitTunneling:Z

    .line 490
    return-void
.end method

.method public setSubnetType(Lcom/ipsec/client/IPsecConnection$IPVersion;)V
    .locals 1
    .param p1, "subnetType"    # Lcom/ipsec/client/IPsecConnection$IPVersion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    sget-object v0, Lcom/ipsec/client/IPsecConnection$IPVersion;->IP_VERSION_UNSPECIFIED:Lcom/ipsec/client/IPsecConnection$IPVersion;

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    goto :goto_0
.end method

.method public setTunnelMode(Lcom/ipsec/client/IPsecConnection$TunnelMode;)V
    .locals 0
    .param p1, "tunnelMode"    # Lcom/ipsec/client/IPsecConnection$TunnelMode;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    .line 448
    return-void
.end method

.method public setUserAuthentication(Z)V
    .locals 0
    .param p1, "userAuthentication"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/ipsec/client/IPsecConnection;->userAuthentication:Z

    .line 420
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 1625
    if-nez p1, :cond_0

    .line 1626
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    .line 1629
    :goto_0
    return-void

    .line 1628
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVirtualAdapterConfiguration(Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;)V
    .locals 0
    .param p1, "virtualAdapterConfiguration"    # Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    .prologue
    .line 2690
    iput-object p1, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    .line 2691
    return-void
.end method

.method public setVirtualAdapterName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2659
    if-eqz p1, :cond_0

    .line 2660
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterName:Ljava/lang/String;

    .line 2663
    :goto_0
    return-void

    .line 2662
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterName:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2776
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IPsecConnection{connectionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0x%08x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/ipsec/client/IPsecConnection;->connectionId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gateway=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->gateway:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subnetType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->subnetType:Lcom/ipsec/client/IPsecConnection$IPVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", internalSubnet=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->internalSubnet:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interface=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->networkInterface:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hostAuthentication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->hostAuthentication:Lcom/ipsec/client/IPsecConnection$HostAuthentication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userAuthentication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->userAuthentication:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tunnelMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->tunnelMode:Lcom/ipsec/client/IPsecConnection$TunnelMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableSplitTunneling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->disableSplitTunneling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disableIKEv2Fragmentation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->disableIkev2Fragmentation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikev2FragmentationLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->ikev2FragmentationLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecLifeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeType:Lcom/ipsec/client/IPsecConnection$IPsecLifeType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecLifeValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecLifeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecEncryption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecEncryption:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecIntegrity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecIntegrity:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipsecGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ipsecGroup:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeGroup:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeLife="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeLife:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeVersion:Lcom/ipsec/client/IPsecConnection$IkeVersion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", aggressiveMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->aggressiveMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeEncryption="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeEncryption:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeIntegrity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeIntegrity:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mobike="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->mobike:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ikeWindowSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->ikeWindowSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoteIdentityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoteIdentityEnforce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentityEnforce:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoteIdentity=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->remoteIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", certCheckRevocation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->certCheckRevocation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", algorithmSecurityStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->algorithmSecurityStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2817
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    sget-object v2, Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;->VIRTUAL_ADAPTER_CONF_INTERNAL:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    if-ne v1, v2, :cond_1

    .line 2820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ownIdentityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ownIdentity=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->ownIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", username=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2831
    :goto_0
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", password={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2837
    :goto_1
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", preSharedKey={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2844
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eapReAuthPassword="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eapReAuthData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthData:[B

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/ipsec/client/IPsecConnection;->eapReAuthData:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", eapMethod=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->eapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dpdTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->dpdTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nattKeepaliveTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->nattKeepaliveTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", connectTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ipsec/client/IPsecConnection;->connectTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hybridModeConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->hybridModeConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caCertificateData={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->caCertificateData:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", imCertificateData={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->imCertificateData:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2861
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    if-eqz v1, :cond_6

    .line 2862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", certificateData={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->certificateData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2867
    :goto_5
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    if-eqz v1, :cond_7

    .line 2868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privateKeyData={length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2873
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privateKeyFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->privateKeyFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestedRACIPv4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestedRACIPv6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->requestedRACIPv6:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", virtualAdapterName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", virtualAdapterConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->virtualAdapterConfiguration:Lcom/ipsec/client/IPsecConnection$VirtualAdapterConfigurationMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", globalDnsConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ipsec/client/IPsecConnection;->globalDnsConfiguration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestIkeCfgAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->requestIkeCfgAttrs:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", secondEapMethod=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->secondEapMethod:Lcom/ipsec/client/IPsecConnection$EapMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2885
    iget-object v1, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    if-eqz v1, :cond_0

    .line 2887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", secondOwnIdentityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentityType:Lcom/ipsec/client/IPsecConnection$IdentityType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", secondOwnIdentity=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ipsec/client/IPsecConnection;->secondOwnIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2893
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2895
    return-object v0

    .line 2826
    :cond_1
    const-string v1, ", ownIdentityType=(intentionally suppressed)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2827
    const-string v1, ", ownIdentity=(intentionally suppressed)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2828
    const-string v1, ", username=(intentionally suppressed)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 2835
    :cond_2
    const-string v1, ", password=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2842
    :cond_3
    const-string v1, ", preSharedKey=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 2844
    :cond_4
    const-string/jumbo v1, "null"

    goto/16 :goto_3

    .line 2849
    :cond_5
    const-string/jumbo v1, "null"

    goto/16 :goto_4

    .line 2865
    :cond_6
    const-string v1, ", certificateData=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 2871
    :cond_7
    const-string v1, ", privateKeyData=null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6
.end method
