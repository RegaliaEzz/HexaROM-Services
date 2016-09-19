.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyConnection"
.end annotation


# instance fields
.field private connection:Ljava/net/Socket;

.field server:Ljava/net/Socket;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

.field private transferValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V
    .locals 1
    .param p2, "connection"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 595
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->transferValue:Ljava/lang/String;

    .line 593
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    .line 596
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    .line 597
    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->generateRandomNumber()Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->transferValue:Ljava/lang/String;

    .line 598
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
    .param p2, "x1"    # Ljava/net/Socket;
    .param p3, "x2"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$1;

    .prologue
    .line 590
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    return-void
.end method

.method private filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 3
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 819
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->shouldRemoveHeaderLine(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 821
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v1, p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 823
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 824
    return-void
.end method

.method private getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 791
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "rawPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v3

    .line 793
    .local v3, "rawQuery":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "rawFragment":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .local v0, "absolutePath":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_2

    .line 796
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :goto_0
    if-eqz v3, :cond_0

    .line 801
    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_0
    if-eqz v1, :cond_1

    .line 804
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 798
    :cond_2
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseResponse(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 848
    if-nez p1, :cond_1

    .line 849
    const-string v8, "KnoxVpnProxyServer"

    const-string v9, "The PAC URL has not been downloaded yet, no proxy is applied"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 851
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_0
    :goto_0
    return-object v4

    .line 854
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    :cond_1
    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 855
    .local v6, "split":[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 856
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v5, v0, v1

    .line 857
    .local v5, "s":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "KnoxVpnProxyServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "s value is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 859
    .local v7, "trimmed":Ljava/lang/String;
    const-string v8, "DIRECT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 860
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 861
    :cond_4
    const-string v8, "PROXY "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 862
    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string v9, "PROXY "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v3

    .line 863
    .local v3, "proxy":Ljava/net/Proxy;
    if-eqz v3, :cond_3

    .line 864
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 866
    .end local v3    # "proxy":Ljava/net/Proxy;
    :cond_5
    const-string v8, "SOCKS "

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 867
    sget-object v8, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const-string v9, "SOCKS "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v3

    .line 868
    .restart local v3    # "proxy":Ljava/net/Proxy;
    if-eqz v3, :cond_3

    .line 869
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 873
    .end local v3    # "proxy":Ljava/net/Proxy;
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "trimmed":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 874
    const-string v8, "KnoxVpnProxyServer"

    const-string/jumbo v9, "ret value is 0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    sget-object v8, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private proxyFromHostPort(Ljava/net/Proxy$Type;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 7
    .param p1, "type"    # Ljava/net/Proxy$Type;
    .param p2, "hostPortString"    # Ljava/lang/String;

    .prologue
    .line 882
    :try_start_0
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 883
    .local v2, "hostPort":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v2, v4

    .line 884
    .local v1, "host":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "host value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_0
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 886
    .local v3, "port":I
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "port value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_1
    new-instance v4, Ljava/net/Proxy;

    invoke-static {v1, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "hostPort":[Ljava/lang/String;
    .end local v3    # "port":I
    :goto_0
    return-object v4

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "KnoxVpnProxyServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse proxy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 888
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/net/Socket;
    .param p2, "dst"    # Ljava/net/Socket;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/net/URI;
    .param p5, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    .line 752
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->filterAndForwardRequestHeaders(Ljava/net/Socket;Ljava/net/Socket;)V

    .line 757
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    const-string v1, "Connection: close"

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    const-string v1, ""

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private sendRequestLineWithPath(Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 5
    .param p1, "server"    # Ljava/net/Socket;
    .param p2, "requestType"    # Ljava/lang/String;
    .param p3, "absoluteUri"    # Ljava/net/URI;
    .param p4, "httpVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    invoke-direct {p0, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->getAbsolutePathFromAbsoluteURI(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "absolutePath":Ljava/lang/String;
    const-string v2, "%s %s %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 779
    .local v1, "outgoingRequestLine":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v2, p1, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method private shouldRemoveHeaderLine(Ljava/lang/String;)Z
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 833
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 834
    .local v6, "colIndex":I
    const/4 v3, -0x1

    if-eq v6, v3, :cond_1

    .line 835
    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "headerName":Ljava/lang/String;
    const-string v3, "connection"

    const-string v4, "connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "proxy-connection"

    const-string/jumbo v4, "proxy-connection"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 843
    .end local v0    # "headerName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 602
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v16, v3

    .line 604
    .local v16, "credentialAppendedHeader":[Ljava/lang/String;
    :try_start_0
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting request thread: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 606
    .local v6, "requestLine":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Starting request thread for the request line "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    if-nez v6, :cond_2

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 735
    .end local v6    # "requestLine":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 611
    .restart local v6    # "requestLine":Ljava/lang/String;
    :cond_2
    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    .line 612
    .local v30, "splitLine":[Ljava/lang/String;
    move-object/from16 v0, v30

    array-length v3, v0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_4

    .line 613
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 727
    .end local v6    # "requestLine":Ljava/lang/String;
    .end local v30    # "splitLine":[Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 728
    .local v17, "e":Ljava/lang/Exception;
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured while running the ProxyConnection for the profile "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 732
    :catch_1
    move-exception v17

    .line 733
    .local v17, "e":Ljava/io/IOException;
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured while trying to close the socket connection for the profile "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 616
    .end local v17    # "e":Ljava/io/IOException;
    .restart local v6    # "requestLine":Ljava/lang/String;
    .restart local v30    # "splitLine":[Ljava/lang/String;
    :cond_4
    const/4 v7, 0x0

    .line 617
    .local v7, "urlStringForAuth":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_2
    aget-object v12, v30, v3

    .line 618
    .local v12, "requestType":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v32, v30, v3

    .line 619
    .local v32, "urlString":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v8, v30, v3

    .line 621
    .local v8, "httpVersion":Ljava/lang/String;
    const-string v18, ""

    .line 622
    .local v18, "host":Ljava/lang/String;
    const/16 v24, 0x50

    .line 623
    .local v24, "port":I
    const/4 v13, 0x0

    .line 625
    .local v13, "url":Ljava/net/URI;
    const-string v3, "CONNECT"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 626
    const-string v3, ":"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 627
    .local v19, "hostPortSplit":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v18, v19, v3

    .line 628
    move-object/from16 v0, v19

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_b

    .line 629
    const/16 v24, 0x1bb

    .line 638
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 654
    .end local v19    # "hostPortSplit":[Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getKnoxVpnPacProcessorInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->makeProxyRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 655
    .local v26, "proxyAddress":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The url is going to be proxied through  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, "for the profile "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->parseResponse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v22

    .line 657
    .local v22, "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/net/Proxy;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 659
    .local v25, "proxy":Ljava/net/Proxy;
    :try_start_3
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v33

    .line 661
    .local v33, "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    invoke-virtual/range {v25 .. v25}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v21

    check-cast v21, Ljava/net/InetSocketAddress;

    .line 662
    .local v21, "inetSocketAddress":Ljava/net/InetSocketAddress;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 663
    .local v29, "resolvedHostName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual/range {v21 .. v21}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    move-object/from16 v0, v29

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    if-eqz v3, :cond_6

    .line 667
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired being sent with = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " and "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->transferValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 669
    .local v27, "randomCacheKey":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v28, v0

    const/4 v3, 0x0

    aput-object v7, v28, v3

    const/4 v3, 0x1

    aput-object v8, v28, v3

    .line 670
    .local v28, "requestString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isAuthenticationRequired(Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v3, v4, v9, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 671
    .local v15, "authRequiredStatus":I
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_8
    const/4 v3, -0x2

    if-ne v15, v3, :cond_e

    .line 673
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Authentication detection failed. Closing all sockets."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    const-string v9, "HTTP/1.1 500 Internal Server Error\r\n"

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 716
    .end local v15    # "authRequiredStatus":I
    .end local v21    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v27    # "randomCacheKey":Ljava/lang/String;
    .end local v28    # "requestString":[Ljava/lang/String;
    .end local v29    # "resolvedHostName":Ljava/lang/String;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_2
    move-exception v17

    .line 717
    .local v17, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured while applying the proxy type for the url for the profile "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 720
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    if-eqz v3, :cond_6

    .line 724
    .end local v25    # "proxy":Ljava/net/Proxy;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->isSocketOperational(Ljava/net/Socket;)Z
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    if-eqz v16, :cond_16

    const/4 v3, 0x0

    aget-object v3, v16, v3

    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v10

    invoke-static {v4, v9, v3, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/SocketConnect;->connect(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 632
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v26    # "proxyAddress":Ljava/lang/String;
    .restart local v19    # "hostPortSplit":[Ljava/lang/String;
    :cond_b
    const/4 v3, 0x1

    :try_start_5
    aget-object v3, v19, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result v24

    goto/16 :goto_2

    .line 633
    :catch_3
    move-exception v23

    .line 634
    .local v23, "nfe":Ljava/lang/NumberFormatException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 642
    .end local v19    # "hostPortSplit":[Ljava/lang/String;
    .end local v23    # "nfe":Ljava/lang/NumberFormatException;
    :cond_c
    :try_start_7
    new-instance v31, Ljava/net/URI;

    invoke-direct/range {v31 .. v32}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 643
    .end local v13    # "url":Ljava/net/URI;
    .local v31, "url":Ljava/net/URI;
    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v18

    .line 644
    invoke-virtual/range {v31 .. v31}, Ljava/net/URI;->getPort()I
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result v24

    .line 645
    if-gez v24, :cond_d

    .line 646
    const/16 v24, 0x50

    .line 648
    :cond_d
    move-object/from16 v7, v32

    move-object/from16 v13, v31

    .line 652
    .end local v31    # "url":Ljava/net/URI;
    .restart local v13    # "url":Ljava/net/URI;
    goto/16 :goto_3

    .line 649
    :catch_4
    move-exception v17

    .line 650
    .local v17, "e":Ljava/net/URISyntaxException;
    :goto_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 678
    .end local v17    # "e":Ljava/net/URISyntaxException;
    .restart local v15    # "authRequiredStatus":I
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v21    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .restart local v25    # "proxy":Ljava/net/Proxy;
    .restart local v26    # "proxyAddress":Ljava/lang/String;
    .restart local v27    # "randomCacheKey":Ljava/lang/String;
    .restart local v28    # "requestString":[Ljava/lang/String;
    .restart local v29    # "resolvedHostName":Ljava/lang/String;
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_e
    const/4 v3, 0x2

    if-ne v15, v3, :cond_f

    .line 679
    :try_start_a
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .local v2, "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired Into in AUTHENTICATION_IN_PROGRESS_FROM_STATE cache =  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 683
    .end local v2    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    :cond_f
    if-nez v15, :cond_10

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/net/Socket;)Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v5

    .line 685
    .local v5, "newServer":Ljava/net/Socket;
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .restart local v2    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAuthStateCache()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1100(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->closeServerSocket(Ljava/net/Socket;)V
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1300(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;)V

    .line 688
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired Into in AUTHENTICATION_IN_PROGRESS_FROM_RESPONSE cache =  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 690
    .end local v2    # "cache":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$AuthenticationStateCache;
    .end local v5    # "newServer":Ljava/net/Socket;
    :cond_10
    const/4 v3, 0x1

    if-ne v15, v3, :cond_12

    .line 691
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$300()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "KnoxVpnProxyServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ": isAuthenticationRequired Adding for =  "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mAuthenticator:Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getUserCredential()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    move-object/from16 v0, v28

    invoke-interface {v3, v4, v9, v10, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/proxyauth/ProxyAuthenticator;->getCredentialsAppendedHeader(Ljava/lang/String;Ljava/net/Socket;Ljava/net/Socket;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 693
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    .line 694
    if-eqz v16, :cond_9

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    const/4 v9, 0x1

    aget-object v9, v16, v9

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 698
    :cond_12
    const-string v3, "KnoxVpnProxyServer"

    const-string v4, "Authentication NOT Required."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v6}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 702
    .end local v15    # "authRequiredStatus":I
    .end local v21    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v27    # "randomCacheKey":Ljava/lang/String;
    .end local v28    # "requestString":[Ljava/lang/String;
    .end local v29    # "resolvedHostName":Ljava/lang/String;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getVpnConfigInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    invoke-static {v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->mProfileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v33

    .line 703
    .restart local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getAddressForHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 704
    .restart local v29    # "resolvedHostName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, v29

    move/from16 v1, v24

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getServerConnectedSocket(Ljava/lang/String;I)Ljava/net/Socket;
    invoke-static {v3, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    if-eqz v3, :cond_6

    .line 708
    const-string v3, "CONNECT"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 709
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->getLine(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    const-string v9, "HTTP/1.1 200 OK\n"

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->sendLine(Ljava/net/Socket;Ljava/lang/String;)V
    invoke-static {v3, v4, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->access$1000(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Ljava/net/Socket;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 712
    :cond_15
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->connection:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->server:Ljava/net/Socket;

    move-object/from16 v9, p0

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$ProxyConnection;->sendAugmentedRequestToHost(Ljava/net/Socket;Ljava/net/Socket;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_4

    .line 725
    .end local v25    # "proxy":Ljava/net/Proxy;
    .end local v29    # "resolvedHostName":Ljava/lang/String;
    .end local v33    # "vpnEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 649
    .end local v13    # "url":Ljava/net/URI;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/net/Proxy;>;"
    .end local v26    # "proxyAddress":Ljava/lang/String;
    .restart local v31    # "url":Ljava/net/URI;
    :catch_5
    move-exception v17

    move-object/from16 v13, v31

    .end local v31    # "url":Ljava/net/URI;
    .restart local v13    # "url":Ljava/net/URI;
    goto/16 :goto_6
.end method
