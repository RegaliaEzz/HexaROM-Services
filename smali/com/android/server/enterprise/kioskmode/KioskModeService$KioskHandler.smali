.class final Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;
.super Landroid/os/Handler;
.source "KioskModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KioskHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 250
    if-eqz p1, :cond_0

    .line 251
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 253
    :pswitch_0
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$102(Z)Z

    .line 254
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 255
    .local v2, "enableData":Landroid/os/Bundle;
    const-string v4, "adminuid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, "adminUid":I
    const-string/jumbo v4, "package"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "kioskPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    invoke-static {v4, v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 258
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$102(Z)Z

    goto :goto_0

    .line 262
    .end local v0    # "adminUid":I
    .end local v2    # "enableData":Landroid/os/Bundle;
    .end local v3    # "kioskPackage":Ljava/lang/String;
    :pswitch_1
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$102(Z)Z

    .line 263
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 264
    .local v1, "disableData":Landroid/os/Bundle;
    const-string v4, "adminuid"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 265
    .restart local v0    # "adminUid":I
    iget-object v4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x2

    # invokes: Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V
    invoke-static {v4, v5, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;I)V

    .line 266
    # setter for: Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z
    invoke-static {v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->access$102(Z)Z

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
