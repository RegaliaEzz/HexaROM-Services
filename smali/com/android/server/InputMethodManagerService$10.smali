.class Lcom/android/server/InputMethodManagerService$10;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .locals 0

    .prologue
    .line 4923
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$10;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4926
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v2, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4929
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 4930
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    array-length v2, v2

    if-le v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2600(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2600(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    array-length v2, v2

    if-gt v2, p2, :cond_1

    .line 4932
    :cond_0
    monitor-exit v3

    .line 4954
    :goto_0
    return-void

    .line 4934
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mMobilekeyboardIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    aget-object v0, v2, p2

    .line 4935
    .local v0, "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mMobilekeyboardSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2600(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    aget v1, v2, p2

    .line 4944
    .local v1, "subtypeId":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v2, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 4945
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->val$adapter:Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    .line 4946
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenu()V

    .line 4947
    if-eqz v0, :cond_4

    .line 4948
    if-ltz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 4949
    :cond_2
    const/4 v1, -0x1

    .line 4951
    :cond_3
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 4953
    :cond_4
    monitor-exit v3

    goto :goto_0

    .end local v0    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v1    # "subtypeId":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4937
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2700(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2700(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    array-length v2, v2

    if-le v2, p2, :cond_6

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2800(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2800(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    array-length v2, v2

    if-gt v2, p2, :cond_7

    .line 4939
    :cond_6
    monitor-exit v3

    goto :goto_0

    .line 4941
    :cond_7
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2700(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    aget-object v0, v2, p2

    .line 4942
    .restart local v0    # "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$2800(Lcom/android/server/InputMethodManagerService;)[I

    move-result-object v2

    aget v1, v2, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1    # "subtypeId":I
    goto :goto_1
.end method
