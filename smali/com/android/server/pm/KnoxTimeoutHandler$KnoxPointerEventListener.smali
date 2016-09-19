.class Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;
.super Ljava/lang/Object;
.source "KnoxTimeoutHandler.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxTimeoutHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxPointerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxTimeoutHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxTimeoutHandler;Lcom/android/server/pm/KnoxTimeoutHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/KnoxTimeoutHandler;
    .param p2, "x1"    # Lcom/android/server/pm/KnoxTimeoutHandler$1;

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;-><init>(Lcom/android/server/pm/KnoxTimeoutHandler;)V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v2}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->getFocusedUser()I

    move-result v1

    .line 349
    .local v1, "currentWindowId":I
    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    # getter for: Lcom/android/server/pm/KnoxTimeoutHandler;->mService:Lcom/android/server/pm/PersonaManagerService;
    invoke-static {v2}, Lcom/android/server/pm/KnoxTimeoutHandler;->access$700(Lcom/android/server/pm/KnoxTimeoutHandler;)Lcom/android/server/pm/PersonaManagerService;

    move-result-object v2

    sget-object v3, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 354
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 357
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/pm/KnoxTimeoutHandler$KnoxPointerEventListener;->this$0:Lcom/android/server/pm/KnoxTimeoutHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/KnoxTimeoutHandler;->postTimeoutReset(I)V

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
