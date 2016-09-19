.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->updateSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v0, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    # getter for: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mEnableMultiWindowUISetting:I
    invoke-static {v0}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$000(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->multiwindowSettingChanged(Z)V

    .line 426
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
