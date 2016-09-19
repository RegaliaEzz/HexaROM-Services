.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthenticationStateCache"
.end annotation


# instance fields
.field destinationSocket:Ljava/net/Socket;

.field httpVersion:Ljava/lang/String;

.field requestLine:Ljava/lang/String;

.field sourceSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

.field urlStringForAuth:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "source"    # Ljava/net/Socket;
    .param p3, "destination"    # Ljava/net/Socket;
    .param p4, "requestLine"    # Ljava/lang/String;
    .param p5, "urlStringForAuth"    # Ljava/lang/String;
    .param p6, "httpVersion"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1043
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->sourceSocket:Ljava/net/Socket;

    .line 989
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->destinationSocket:Ljava/net/Socket;

    .line 990
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->requestLine:Ljava/lang/String;

    .line 991
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->urlStringForAuth:Ljava/lang/String;

    .line 992
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->httpVersion:Ljava/lang/String;

    .line 1044
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->sourceSocket:Ljava/net/Socket;

    .line 1045
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->destinationSocket:Ljava/net/Socket;

    .line 1046
    iput-object p4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->requestLine:Ljava/lang/String;

    .line 1047
    iput-object p5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->urlStringForAuth:Ljava/lang/String;

    .line 1048
    iput-object p6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->httpVersion:Ljava/lang/String;

    .line 1049
    return-void
.end method


# virtual methods
.method public getDestinationSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->destinationSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->httpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->requestLine:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->sourceSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public getUrlStringForAuth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->urlStringForAuth:Ljava/lang/String;

    return-object v0
.end method

.method public setDestinationSocket(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 1038
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->destinationSocket:Ljava/net/Socket;

    .line 1039
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;->destinationSocket:Ljava/net/Socket;

    .line 1040
    return-void
.end method
