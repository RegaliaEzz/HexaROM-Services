.class public Lcom/android/server/accessibility/SamsungScreenReader;
.super Ljava/lang/Object;
.source "SamsungScreenReader.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungScreenReader"

.field private static final STATE_DELEGATING:I = 0x2

.field private static final STATE_DETECTING:I = 0x1


# instance fields
.field private isLongPressPerformed:Z

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    .line 64
    iput-object p2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 65
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mContext:Landroid/content/Context;

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    .line 67
    new-instance v0, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/SamsungScreenReader;)V

    iput-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    .line 68
    const-string v0, "SamsungScreenReader"

    const-string v1, "SamsungScreenReader Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/accessibility/SamsungScreenReader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungScreenReader;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/SamsungScreenReader;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungScreenReader;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/SamsungScreenReader;)Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungScreenReader;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    return-object v0
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v3, 0x3

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 178
    .local v0, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 204
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 207
    :cond_1
    :goto_1
    return-void

    .line 181
    :pswitch_1
    if-ne v0, v3, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 183
    .local v1, "pointerIdBits":I
    invoke-direct {p0, p1, v3, v1, p3}, Lcom/android/server/accessibility/SamsungScreenReader;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 184
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    .line 188
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 197
    .end local v1    # "pointerIdBits":I
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungScreenReader;->clear()V

    .line 198
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleMotionEventStateDetecting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 138
    .local v0, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 146
    :pswitch_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->cancel()V

    goto :goto_0

    .line 155
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungScreenReader;->clear()V

    .line 156
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 3
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .prologue
    .line 224
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, -0x1

    if-ne p3, v1, :cond_2

    .line 228
    move-object v0, p1

    .line 234
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr p4, v1

    .line 235
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 245
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 248
    :cond_1
    return-void

    .line 230
    :cond_2
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    .line 107
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->isLongPressPerformed:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungScreenReader$PerformLongPressDelayed;->cancel()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 116
    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungScreenReader;->handleMotionEventStateDetecting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 90
    :goto_0
    return-void

    .line 84
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungScreenReader;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungScreenReader;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 102
    return-void
.end method
