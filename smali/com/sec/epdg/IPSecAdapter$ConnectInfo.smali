.class Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectInfo"
.end annotation


# instance fields
.field handoverIpv4addr:Ljava/lang/String;

.field handoverIpv6addr:Ljava/lang/String;

.field wlanSetting:Lcom/sec/epdg/IWlanApnSetting;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/epdg/IPSecAdapter$1;

    .prologue
    .line 1958
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p1, "x1"    # Lcom/sec/epdg/IWlanApnSetting;

    .prologue
    .line 1958
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1958
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setHandoverIpv4Addr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1958
    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->setHandoverIpv6Addr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Lcom/sec/epdg/IWlanApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    .prologue
    .line 1958
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    .prologue
    .line 1958
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getHandoverIpv4Addr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/epdg/IPSecAdapter$ConnectInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/epdg/IPSecAdapter$ConnectInfo;

    .prologue
    .line 1958
    invoke-direct {p0}, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->getHandoverIpv6Addr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHandoverIpv4Addr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->handoverIpv4addr:Ljava/lang/String;

    return-object v0
.end method

.method private getHandoverIpv6Addr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->handoverIpv6addr:Ljava/lang/String;

    return-object v0
.end method

.method private getIWlanSettingInfo()Lcom/sec/epdg/IWlanApnSetting;
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->wlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    return-object v0
.end method

.method private setHandoverIpv4Addr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipv4Addr"    # Ljava/lang/String;

    .prologue
    .line 1964
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->handoverIpv4addr:Ljava/lang/String;

    .line 1965
    return-void
.end method

.method private setHandoverIpv6Addr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipv6Addr"    # Ljava/lang/String;

    .prologue
    .line 1972
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->handoverIpv6addr:Ljava/lang/String;

    .line 1973
    return-void
.end method

.method private setIWlanSettingInfo(Lcom/sec/epdg/IWlanApnSetting;)V
    .locals 0
    .param p1, "inwlanSetting"    # Lcom/sec/epdg/IWlanApnSetting;

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$ConnectInfo;->wlanSetting:Lcom/sec/epdg/IWlanApnSetting;

    .line 1981
    return-void
.end method
