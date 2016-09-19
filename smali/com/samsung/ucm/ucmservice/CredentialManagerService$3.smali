.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 398
    const-string v1, "UcmService"

    const-string/jumbo v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-boolean v1, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->bUseBlockingQueue:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 402
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object v1, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->interfaceQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 409
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p2}, Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    move-result-object v2

    # setter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
    invoke-static {v1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$602(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;)Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 391
    const-string v0, "UcmService"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$3;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->pinpadService:Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;
    invoke-static {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$602(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;)Lcom/samsung/ucm/ucmpinpad/IUcmPinpadService;

    .line 393
    return-void
.end method
