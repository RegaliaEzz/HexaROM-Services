.class Lcom/android/server/statusbar/StatusBarManagerService$7;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLockedToDisplay(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$displayId:I

.field final synthetic val$mask:I

.field final synthetic val$vis:I


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;III)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$displayId:I

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$vis:I

    iput p4, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$mask:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)[Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$displayId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    # getter for: Lcom/android/server/statusbar/StatusBarManagerService;->mBars:[Lcom/android/internal/statusbar/IStatusBar;
    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$200(Lcom/android/server/statusbar/StatusBarManagerService;)[Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$displayId:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$vis:I

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->val$mask:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->setSystemUiVisibility(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    goto :goto_0
.end method
