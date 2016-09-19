.class final Lcom/android/server/policy/PhoneWindowManager$TwToolBoxPointerEventListener;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TwToolBoxPointerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$TwToolBoxPointerEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$TwToolBoxPointerEventListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TwToolBoxPointerEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TwToolBoxPointerEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->cursorWindowTouchableRegion:Landroid/graphics/Region;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$000(Lcom/android/server/policy/PhoneWindowManager;)Landroid/graphics/Region;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$TwToolBoxPointerEventListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTwToolBoxFloatingViewer:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 746
    :cond_0
    return-void
.end method
