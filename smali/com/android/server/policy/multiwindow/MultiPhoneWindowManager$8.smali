.class Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->handleLongPressOnRecent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field final synthetic val$appWindowTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;->val$appWindowTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1268
    iget-object v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v5, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;->val$appWindowTitle:Ljava/lang/CharSequence;

    # invokes: Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->getApplicationName(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v4, v5}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->access$500(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1270
    .local v0, "appTitle":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1271
    iget-object v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v5, 0x1040bc0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1275
    .local v2, "msg":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v1, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1276
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 1277
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 1278
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1279
    return-void

    .line 1273
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager$8;->this$0:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v5, 0x1040bc1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "msg":Ljava/lang/String;
    goto :goto_0
.end method
