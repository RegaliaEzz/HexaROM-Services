.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;
.super Ljava/lang/Object;
.source "KnoxVpnProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogReturnInformation"
.end annotation


# instance fields
.field callback:Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

.field intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;Landroid/content/Intent;Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;)V
    .locals 1
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    .prologue
    const/4 v0, 0x0

    .line 1057
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->intent:Landroid/content/Intent;

    .line 1055
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->callback:Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    .line 1058
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->intent:Landroid/content/Intent;

    .line 1059
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->callback:Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    .line 1060
    return-void
.end method


# virtual methods
.method protected getCallback()Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->callback:Lcom/sec/enterprise/knox/vpn/ICredentialStatusCallback;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer$DialogReturnInformation;->intent:Landroid/content/Intent;

    return-object v0
.end method
