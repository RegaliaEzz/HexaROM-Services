.class Lcom/android/server/input/InputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 512
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mKeyboardLayoutNotificationShown:Z
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 516
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mCurrentMissingKeyboardLayoutDevice:Landroid/view/InputDevice;
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)Landroid/view/InputDevice;

    move-result-object v1

    .line 517
    .local v1, "tempMissingKeyboardLayoutDevice":Landroid/view/InputDevice;
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->hideMissingKeyboardLayoutNotification()V
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$200(Lcom/android/server/input/InputManagerService;)V

    .line 518
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->showMissingKeyboardLayoutNotification(Landroid/view/InputDevice;)V
    invoke-static {v3, v1}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;Landroid/view/InputDevice;)V

    .line 530
    .end local v1    # "tempMissingKeyboardLayoutDevice":Landroid/view/InputDevice;
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    const-string v3, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    iget-object v3, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.spen_usp"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v2

    .line 526
    .local v2, "uspLevel":I
    const/16 v3, 0xa

    if-lt v2, v3, :cond_0

    .line 527
    const/4 v3, 0x1

    sput-boolean v3, Landroid/view/PointerIcon;->mThemeApplied:Z

    goto :goto_0
.end method
