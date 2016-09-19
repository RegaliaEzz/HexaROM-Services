.class Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
.super Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualActivityDisplay"
.end annotation


# instance fields
.field mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;III)V
    .locals 6
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 8483
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;IIIZ)V

    .line 8484
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;IIIZ)V
    .locals 11
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I
    .param p5, "virtualScreen"    # Z

    .prologue
    .line 8485
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    .line 8487
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 8489
    .local v0, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    const/16 v8, 0x9

    .line 8490
    .local v8, "flags":I
    if-eqz p5, :cond_0

    .line 8491
    or-int/lit8 v8, v8, 0x40

    .line 8494
    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "ActivityViewVirtualDisplay"

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 8498
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-nez v1, :cond_1

    .line 8499
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    .line 8500
    const-string v1, "ActivityManager"

    const-string v2, "Can\'t create VirtualActivityDisplay."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8506
    :goto_0
    return-void

    .line 8503
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->init(Landroid/view/Display;)V

    .line 8505
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    goto :goto_0
.end method


# virtual methods
.method detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 1
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 8516
    invoke-super {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 8517
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 8518
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 8519
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 8521
    :cond_0
    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 8509
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 8510
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 8512
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
