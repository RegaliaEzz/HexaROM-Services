.class Lcom/android/server/policy/GlobalActions$43;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->adjustBottomView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 5408
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$43;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5412
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5413
    .local v0, "action":I
    const/4 v1, 0x0

    .line 5414
    .local v1, "returnValue":Z
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$43;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v3}, Lcom/android/server/policy/GlobalActions;->isPortrait()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5415
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$43;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v4, 0x1

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4300()Z

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->bottomViewOnTouch(IZZ)Z

    move-result v1

    move v2, v1

    .line 5419
    .end local v1    # "returnValue":Z
    .local v2, "returnValue":Z
    :goto_0
    return v2

    .line 5418
    .end local v2    # "returnValue":Z
    .restart local v1    # "returnValue":Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$43;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v4, 0x0

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4400()Z

    move-result v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/policy/GlobalActions;->bottomViewOnTouch(IZZ)Z

    move-result v1

    move v2, v1

    .line 5419
    .end local v1    # "returnValue":Z
    .restart local v2    # "returnValue":Z
    goto :goto_0
.end method
