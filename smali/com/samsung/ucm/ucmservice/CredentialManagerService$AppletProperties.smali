.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppletProperties"
.end annotation


# instance fields
.field public adminId:I

.field public aid:[B

.field public appletLocation:Ljava/lang/String;

.field public pluginName:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLjava/lang/String;I)V
    .locals 1
    .param p2, "appletLocation"    # Ljava/lang/String;
    .param p3, "aid"    # [B
    .param p4, "pluginName"    # Ljava/lang/String;
    .param p5, "adminId"    # I

    .prologue
    const/4 v0, 0x0

    .line 665
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    .line 661
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    .line 662
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    .line 663
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    .line 666
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->appletLocation:Ljava/lang/String;

    .line 667
    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->aid:[B

    .line 668
    iput-object p4, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->pluginName:Ljava/lang/String;

    .line 669
    iput p5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$AppletProperties;->adminId:I

    .line 670
    return-void
.end method
